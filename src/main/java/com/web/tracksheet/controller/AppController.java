package com.web.tracksheet.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.*;

import com.web.tracksheet.ts_models.FohOutputs;
import com.web.tracksheet.ts_models.Inputs;
import com.web.tracksheet.ts_models.MonOutputs;
import com.web.tracksheet.ts_models.TrackSheet;
import com.web.tracksheet.ts_models.WirelessInputs;
import com.web.tracksheet.ts_models.WirelessOutputs;
import com.web.tracksheet.ts_repository.FohOutputsRepository;
import com.web.tracksheet.ts_repository.InputsRepository;
import com.web.tracksheet.ts_repository.MonOutputsRepository;
import com.web.tracksheet.ts_repository.TrackSheetRepository;
import com.web.tracksheet.ts_repository.WirelessInputsRepository;
import com.web.tracksheet.ts_repository.WirelessOutputsRepository;
import com.web.tracksheet.user_model.User;
import com.web.tracksheet.user_repository.UserRepository;

@Controller
@SessionAttributes({"loggedInuser","role"})
public class AppController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private TrackSheetRepository trackSheetRepository;
	
	@Autowired
	private InputsRepository inputsRepository;
	
	@Autowired
	private MonOutputsRepository monOutputsRepository;
	
	@Autowired
	private FohOutputsRepository fohOutputsRepository;
	
	@Autowired
	private WirelessInputsRepository wirelessInputsRepository;
	
	@Autowired
	private WirelessOutputsRepository wirelessOutputsRepository;
	
	
	@GetMapping({"/","home"})
	String index(Model model){	
		model.addAttribute("msg", "Welcome to TrackSheet");
	return "home";	
	}
	
	@GetMapping("about")
	String about(Model model){	
		model.addAttribute("msg", "About Us");
	return "about";	
	}
	
	@GetMapping("login")
	String login(Model model) {
		model.addAttribute("msg", "Please Login");
		return "login";
	}
	
	@PostMapping("login")
	String login(RedirectAttributes redirect, Model model, @RequestParam String email, @RequestParam String password){
	  // login user
	  Optional<User> user= userRepository.login(email, password);
	 //add user email and role in session
	  if(user.isPresent()) {
		  model.addAttribute("loggedInuser", user.get().getEmail());
		  
		  model.addAttribute("role", user.get().getRole()); 
		  
	  }else {
		  redirect.addFlashAttribute("error", "Invalid Credentials");
		  return "redirect:/home";
	  }
	  
	return "redirect:/profile";
		
	}
	
	@GetMapping("logout")
	String logout(Model model, SessionStatus status, HttpSession session){
		//status.setComplete();
		session.invalidate();
		model.addAttribute("loggedInuser", "");
		model.addAttribute("role", "");
		User user=new User ();		
		model.addAttribute("user", user);
		model.addAttribute("msg", "You have been Logged out");
	
	return "home";
		
	}
	
	@GetMapping("register")
	String register(Model model) {
		model.addAttribute("msg", "Please Sign Up");
		model.addAttribute("user", new User());
		return "register";
	}
	
	@PostMapping("register")
	String register(@ModelAttribute("user") User user, Model model) {
		if(userRepository.findUserByEmail(user.getEmail()).isPresent()) {
			model.addAttribute("msg", "Register");
			model.addAttribute("page", "Register");
			model.addAttribute("user", new User());
			model.addAttribute("error", "User exists");
			return "register";
		}
		user.setRole("USER");
		userRepository.save(user);
		model.addAttribute("user_account", user);
		model.addAttribute("success", user);		
		model.addAttribute("msg","Hi "+ user.getfName()+ " Welcome!!!");
		model.addAttribute("page", "Profile");
		model.addAttribute("loggedInuser", user.getEmail());
	    model.addAttribute("role", user.getRole());
		return "profile";
 	}
	
	@GetMapping("profile") 
	  String profile(@SessionAttribute(required = false) String loggedInuser, Model model) {
		
		System.out.println("!!!!!!"+loggedInuser);
	     try {
	    	 //if user is not in session return login page expired session
			if(loggedInuser.isEmpty() && loggedInuser !=null) {
			 model.addAttribute("error", "Expired session, please Login"); 
			 }
			//populate user details from database 
			userRepository.findUserByEmail(loggedInuser).ifPresent(a->{
			 model.addAttribute("user_account", a);
				 
			 });
			model.addAttribute("page", "Profile");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	  return "profile";
	}
	
	
	@GetMapping("admin")
	String admin(Model model) {
		model.addAttribute("msg", "ADMIN");
		model.addAttribute("list", userRepository.findAll());
		return "admin";
	}
	
	@PostMapping("editrole")
	String editrole(@RequestParam Long id, @RequestParam String role, 
	RedirectAttributes redirect) {
		try {			
			userRepository.findById(id).
			ifPresent(a->{				
				a.setRole(role);
				userRepository.save(a);
			});
			redirect.addFlashAttribute("success", role+ " Role Granted ");
		} catch (Exception e) {
			e.printStackTrace();
			redirect.addFlashAttribute("success", "Operation Fail");
		}
		return "redirect:/admin";
    }
	
	@GetMapping({"remove"})
	String deleteUser(Model model, @RequestParam Long id){	
				
		try {
			userRepository.deleteById(id);
			model.addAttribute("msg", "Delete success");
			model.addAttribute("list", userRepository.findAll());
		} catch (Exception e) {			
			e.printStackTrace();
			model.addAttribute("error", "Delete Fail");
		}	
		
		return "admin";
	}
	
	@PostMapping("updatemyinfo")
	public String udateMyinfo(@ModelAttribute("user") User user, RedirectAttributes red) {
		//System.out.println("userid=" + user.getId());
		userRepository.findById(user.getId()).ifPresent(u->{
			u.setfName(user.getfName());
			u.setlName(user.getlName());
			u.setEmail(user.getEmail());
			userRepository.save(u);
			red.addFlashAttribute("success", "Update Success thanks.");
		});		
		return "redirect:/admin";
	}
	private Long tsid;
	
	private String active = "ts";
	
	private boolean selected = false;
	
	@GetMapping("tracksheet")
	String tracksheet(Model model) {
		
		String email = (String) model.getAttribute("loggedInuser");
		//System.out.println("EMAIL=" + email);
		Optional<User> user = userRepository.findUserByEmail(email);
		
		model.addAttribute("msg", "TRACKSHEET");
		model.addAttribute("tracksheet", new TrackSheet());
		model.addAttribute("newInput", new Inputs());
		model.addAttribute("inputs", new Inputs());
		model.addAttribute("monOutputs", new MonOutputs());
		model.addAttribute("fohOutputs", new FohOutputs());
		model.addAttribute("wirelessInputs", new WirelessInputs());
		model.addAttribute("wirelessOutputs", new WirelessOutputs());
		
		if(selected) {
		TrackSheet ts = trackSheetRepository.findById(tsid).get();
//		model.addAttribute("selectedTS", user.get().getTracksheets());
		model.addAttribute("myInputs", ts.getInputs());
		model.addAttribute("monout", ts.getMonOutputs());
		model.addAttribute("fohout", ts.getFohOutputs());
		model.addAttribute("wirein", ts.getWirelessInputs());
		model.addAttribute("wireout", ts.getWirelessOutputs());
		}
		//model.addAttribute("currentTS", this.tsid);
		
		if(active.equals("input")) {
			model.addAttribute("active", "");
			model.addAttribute("activeShow", "");
			model.addAttribute("activeInputShow", "show active");
			model.addAttribute("activeInput", "active");
			model.addAttribute("activemonout", "");
			model.addAttribute("activemonoutShow", "");
			model.addAttribute("activefohout", "");
			model.addAttribute("activefohoutShow", "");
			model.addAttribute("activewi", "");
			model.addAttribute("activewiShow", "");
			model.addAttribute("activewo", "");
			model.addAttribute("activewoShow", "");
		} 
		else if (active.equals("ts")) {
			model.addAttribute("active", "active");
			model.addAttribute("activeShow", "show active");
			model.addAttribute("activeInputShow", "");
			model.addAttribute("activeInput", "");
			model.addAttribute("activemonout", "");
			model.addAttribute("activemonoutShow", "");
			model.addAttribute("activefohout", "");
			model.addAttribute("activefohoutShow", "");
			model.addAttribute("activewi", "");
			model.addAttribute("activewiShow", "");
			model.addAttribute("activewo", "");
			model.addAttribute("activewoShow", "");
		} 
		else if (active.equals("monout")) {
			model.addAttribute("active", "");
			model.addAttribute("activeShow", "");
			model.addAttribute("activeInputShow", "");
			model.addAttribute("activeInput", "");
			model.addAttribute("activemonout", "active");
			model.addAttribute("activemonoutShow", "show active");
			model.addAttribute("activefohout", "");
			model.addAttribute("activefohoutShow", "");
			model.addAttribute("activewi", "");
			model.addAttribute("activewiShow", "");
			model.addAttribute("activewo", "");
			model.addAttribute("activewoShow", "");
		}
		else if (active.equals("fohout")) {
			model.addAttribute("active", "");
			model.addAttribute("activeShow", "");
			model.addAttribute("activeInputShow", "");
			model.addAttribute("activeInput", "");
			model.addAttribute("activemonout", "");
			model.addAttribute("activemonoutShow", "");
			model.addAttribute("activefohout", "active");
			model.addAttribute("activefohoutShow", "show active");
			model.addAttribute("activewi", "");
			model.addAttribute("activewiShow", "");
			model.addAttribute("activewo", "");
			model.addAttribute("activewoShow", "");
		}
		else if (active.equals("wi")) {
			model.addAttribute("active", "");
			model.addAttribute("activeShow", "");
			model.addAttribute("activeInputShow", "");
			model.addAttribute("activeInput", "");
			model.addAttribute("activemonout", "");
			model.addAttribute("activemonoutShow", "");
			model.addAttribute("activefohout", "");
			model.addAttribute("activefohoutShow", "");
			model.addAttribute("activewi", "active");
			model.addAttribute("activewiShow", "show active");
			model.addAttribute("activewo", "");
			model.addAttribute("activewoShow", "");
		}
		else if (active.equals("wo")) {
			model.addAttribute("active", "");
			model.addAttribute("activeShow", "");
			model.addAttribute("activeInputShow", "");
			model.addAttribute("activeInput", "");
			model.addAttribute("activemonout", "");
			model.addAttribute("activemonoutShow", "");
			model.addAttribute("activefohout", "");
			model.addAttribute("activefohoutShow", "");
			model.addAttribute("activewi", "");
			model.addAttribute("activewiShow", "");
			model.addAttribute("activewo", "active");
			model.addAttribute("activewoShow", "show active");
		}
		
//		model.addAttribute("myInputs", inputsRepository.findAll());
//		
//		
//		model.addAttribute("fohout", fohOutputsRepository.findAll());
//		model.addAttribute("wirein", wirelessInputsRepository.findAll());
//		model.addAttribute("wireout", wirelessOutputsRepository.findAll());
//		model.addAttribute("oneuser", userRepository.findUserByEmail("loggedInuser"));
		
		List<TrackSheet> allSheets = trackSheetRepository.findAll();
		List<TrackSheet> userSheets = new ArrayList<TrackSheet>();
		
		for(TrackSheet sheet: allSheets) {
			if(sheet.getUser() != null) {
				
			if(sheet.getUser().getId() == user.get().getId()) {
				userSheets.add(sheet);
			}
			}
		}
		
		model.addAttribute("myts", userSheets);
		

		
		boolean change = false;
		model.addAttribute("change", change);
		
		System.out.println("!!!!!"+change);
		
//		System.out.println(trackSheetRepository.findAll().size() + "***");
		
//		TrackSheet ts = new TrackSheet();
//		ts.setDate("2020/11/1");
//		ts.setEventName("PARTY");
//		ts.setLocation("Here");
//		ts.setNotes("HERE ARE SOME NOTES!!!");
//		ts.setTalentName("Alex Duncan");
//		ts.setTsName("SHEET WITH INPUTS");
//		trackSheetRepository.save(ts);
//		Inputs i = new Inputs();
//		
//		
//		i.setFohInputNumber("3");
//		i.setInputType("WHATEVER");
//		i.setMicdiName("34");
//		i.setMonInputNumber("345234");
//		i.setSourceName("ipod shuffle");
//		i.setStageboxInputNumber("11");
//		i.setStandType("12");
//		i.setTrackSheet(ts);
//		List<Inputs> ins = new ArrayList<Inputs>();
//		ins.add(i);
//		
//		
//		//System.out.println(tsid + "******");
//		inputsRepository.save(i);
//		ts.setInputs(ins);
//		trackSheetRepository.save(ts);
		
		return "tracksheet";
	}
	
	@PostMapping("tssubmit")
	public String tssubmit(@ModelAttribute("tracksheet") TrackSheet tracksheet, RedirectAttributes redirect, Model model) {
		
		model.addAttribute("active", "active");
		model.addAttribute("activeShow", "show active");
		model.addAttribute("activeInputShow", "");
		model.addAttribute("activeInput", "");
		model.addAttribute("activemonout", "");
		model.addAttribute("activemonoutShow", "");
		model.addAttribute("activefohout", "");
		model.addAttribute("activefohoutShow", "");
		model.addAttribute("activewi", "");
		model.addAttribute("activewiShow", "");
		model.addAttribute("activewo", "");
		model.addAttribute("activewoShow", "");
		
		String email = (String) model.getAttribute("loggedInuser");
		
		Optional<User> user = userRepository.findUserByEmail(email);
		
		tracksheet.setUser(user.get());
		System.out.println("!!!!!" + user);
		trackSheetRepository.save(tracksheet);
		
		trackSheetRepository.getOne(tracksheet.getId());
		tsid = tracksheet.getId();
		System.out.println(tsid + "#####");
		redirect.addFlashAttribute("tsid", this.tracksheet().getId());
		boolean change = false;
		redirect.addFlashAttribute("change", change);
		return  "redirect:/tracksheet";
	}
	
	@PostMapping("inputsubmit")
	public String inputsubmit(@ModelAttribute("inputs") Inputs inputs, RedirectAttributes redirect, Model model) {
		
	
		System.out.println("tsID= " + tsid);
		TrackSheet ts = trackSheetRepository.findById(tsid).get();
		
		model.addAttribute("active", "");
		model.addAttribute("activeShow", "");
		model.addAttribute("activeInputShow", "show active");
		model.addAttribute("activeInput", "active");
		model.addAttribute("activemonout", "");
		model.addAttribute("activemonoutShow", "");
		model.addAttribute("activefohout", "");
		model.addAttribute("activefohoutShow", "");
		model.addAttribute("activewi", "");
		model.addAttribute("activewiShow", "");
		model.addAttribute("activewo", "");
		model.addAttribute("activewoShow", "");
		
		
		
		inputs.setTrackSheet(ts);
		inputsRepository.save(inputs);
		ts.getInputs().add(inputs);
		trackSheetRepository.save(ts);
		this.active = "input";
		
		
		
		
		return "redirect:tracksheet";
	}
	
	@PostMapping("monOutputsubmit")
	public String monOutputsubmit(@ModelAttribute("monOutputs") MonOutputs monOutputs, RedirectAttributes redirect, Model model) {
		
	
		System.out.println("tsID= " + tsid);
		TrackSheet ts = trackSheetRepository.findById(tsid).get();
		
		model.addAttribute("active", "");
		model.addAttribute("activeShow", "");
		model.addAttribute("activeInputShow", "");
		model.addAttribute("activeInput", "");
		model.addAttribute("activemonout", "active");
		model.addAttribute("activemonoutShow", "show active");
		model.addAttribute("activefohout", "");
		model.addAttribute("activefohoutShow", "");
		model.addAttribute("activewi", "");
		model.addAttribute("activewiShow", "");
		model.addAttribute("activewo", "");
		model.addAttribute("activewoShow", "");
		
		
		monOutputs.setTrackSheet(ts);
		monOutputsRepository.save(monOutputs);
		ts.getMonOutputs().add(monOutputs);
		trackSheetRepository.save(ts);
		this.active = "monout";
		
		return "redirect:tracksheet";
	}
	
	@PostMapping("fohOutputsubmit")
	public String fohOutputsubmit(@ModelAttribute("fohOutputs") FohOutputs fohOutputs, RedirectAttributes redirect, Model model) {
		
		TrackSheet ts = trackSheetRepository.findById(tsid).get();
		
		model.addAttribute("active", "");
		model.addAttribute("activeShow", "");
		model.addAttribute("activeInputShow", "");
		model.addAttribute("activeInput", "");
		model.addAttribute("activemonout", "");
		model.addAttribute("activemonoutShow", "");
		model.addAttribute("activefohout", "active");
		model.addAttribute("activefohoutShow", "show active");
		model.addAttribute("activewi", "");
		model.addAttribute("activewiShow", "");
		model.addAttribute("activewo", "");
		model.addAttribute("activewoShow", "");
		
		fohOutputs.setTrackSheet(ts);
		fohOutputsRepository.save(fohOutputs);
		ts.getFohOutputs().add(fohOutputs);
		trackSheetRepository.save(ts);
		this.active = "fohout";
		
		return"redirect:/tracksheet";
	}
	
	@PostMapping("wireInsubmit")
	public String wireInsubmit(@ModelAttribute("wirelessInputs") WirelessInputs wirelessInputs, RedirectAttributes redirect, Model model) {
		
		TrackSheet ts = trackSheetRepository.findById(tsid).get();
		
		model.addAttribute("active", "");
		model.addAttribute("activeShow", "");
		model.addAttribute("activeInputShow", "");
		model.addAttribute("activeInput", "");
		model.addAttribute("activemonout", "");
		model.addAttribute("activemonoutShow", "");
		model.addAttribute("activefohout", "");
		model.addAttribute("activefohoutShow", "");
		model.addAttribute("activewi", "active");
		model.addAttribute("activewiShow", "show active");
		model.addAttribute("activewo", "");
		model.addAttribute("activewoShow", "");
		
		wirelessInputs.setTrackSheet(ts);
		wirelessInputsRepository.save(wirelessInputs);
		ts.getWirelessInputs().add(wirelessInputs);
		trackSheetRepository.save(ts);
		this.active = "wi";
		
		return"redirect:/tracksheet";
	}
	
	@PostMapping("wireOutsubmit")
	public String wireOutsubmit(@ModelAttribute("wirelessOutputs") WirelessOutputs wirelessOutputs, RedirectAttributes redirect, Model model) {
		
		TrackSheet ts = trackSheetRepository.findById(tsid).get();
		
		model.addAttribute("active", "");
		model.addAttribute("activeShow", "");
		model.addAttribute("activeInputShow", "");
		model.addAttribute("activeInput", "");
		model.addAttribute("activemonout", "");
		model.addAttribute("activemonoutShow", "");
		model.addAttribute("activefohout", "");
		model.addAttribute("activefohoutShow", "");
		model.addAttribute("activewi", "");
		model.addAttribute("activewiShow", "");
		model.addAttribute("activewo", "active");
		model.addAttribute("activewoShow", "show active");
		
		wirelessOutputs.setTrackSheet(ts);
		wirelessOutputsRepository.save(wirelessOutputs);
		ts.getWirelessOutputs().add(wirelessOutputs);
		trackSheetRepository.save(ts);
		this.active = "wo";
		
		return"redirect:/tracksheet";
	}
	
	@PostMapping("newTS")
	public String newTs(@ModelAttribute("tracksheet") TrackSheet ts, Model model, RedirectAttributes redirect) {
		String email = (String) model.getAttribute("loggedInuser");
		
		Optional<User> user = userRepository.findUserByEmail(email);
		ts.setUser(user.get());
		trackSheetRepository.save(ts);
		
		user.get().getTracksheets().add(ts);
		
		//these may need to be shuffled around
		
		return "tracksheet";
		
		
	}
	
		
	@PostMapping("tsSelect")
	public String tsSelect(Model model, @RequestParam String tsID) {
		
		Optional<TrackSheet> ts = trackSheetRepository.findById(Long.parseLong(tsID));
		
		System.out.println(ts);
		
		model.addAttribute("myInputs", ts.get().getInputs());
		model.addAttribute("monout", ts.get().getMonOutputs());
		model.addAttribute("fohout", ts.get().getFohOutputs());
		model.addAttribute("wirein", ts.get().getWirelessInputs());
		model.addAttribute("wireout", ts.get().getWirelessOutputs());
//		model.addAttribute("myts", ts.get() );
		model.addAttribute("currentTS", tsID);
		this.tsid = Long.parseLong(tsID);
		
		String email = (String) model.getAttribute("loggedInuser");
		//System.out.println("EMAIL=" + email);
		Optional<User> user = userRepository.findUserByEmail(email);
		
		List<TrackSheet> allSheets = trackSheetRepository.findAll();
		List<TrackSheet> userSheets = new ArrayList<TrackSheet>();
		
		selected = true;
		
		for(TrackSheet sheet: allSheets) {
			if(sheet.getUser() != null) {
				
			if(sheet.getUser().getId() == user.get().getId()) {
				userSheets.add(sheet);
			}
			}
		}
		this.active = "ts";
		model.addAttribute("active", "active");
		model.addAttribute("activeShow", "show active");
		model.addAttribute("activeInputShow", "");
		model.addAttribute("activeInput", "");
		model.addAttribute("activemonout", "");
		model.addAttribute("activemonoutShow", "");
		model.addAttribute("activefohout", "");
		model.addAttribute("activefohoutShow", "");
		model.addAttribute("activewi", "");
		model.addAttribute("activewiShow", "");
		model.addAttribute("activewo", "");
		model.addAttribute("activewoShow", "");
		boolean change = false;
		model.addAttribute("change", change);
		
//		for(TrackSheet singleSheet: userSheets) {
//			if(singleSheet.getId() == ) {
//				
//			}
//			
//		}
		
			List<TrackSheet> sheet = new ArrayList<TrackSheet>();
			sheet.add(trackSheetRepository.findById(tsid).get());
			model.addAttribute("myts", sheet);
		
		
		//model.addAttribute("myts", userSheets);
		
		
		return "tracksheet";
	}
	
	
	
	
	
	
	@GetMapping("newsheet")
	public String newsheet(Model model) {
		
		model.addAttribute("active", "active");
		model.addAttribute("activeShow", "show active");
		model.addAttribute("activeInputShow", "");
		model.addAttribute("activeInput", "");
		model.addAttribute("activemonout", "");
		model.addAttribute("activemonoutShow", "");
		model.addAttribute("activefohout", "");
		model.addAttribute("activefohoutShow", "");
		model.addAttribute("activewi", "");
		model.addAttribute("activewiShow", "");
		model.addAttribute("activewo", "");
		model.addAttribute("activewoShow", "");
		
		boolean change=true;
		System.out.println("*****"+change);
		model.addAttribute("change", change);
		
		return "tracksheet";
		
	}
	
	
	
	@ModelAttribute("user")
    public User user() {		
	   return new User();		
	}
	
	@ModelAttribute("tracksheet")
    public TrackSheet tracksheet() {		
	   return new TrackSheet();		
	}
	
	@ModelAttribute("inputs")
    public Inputs inputs() {		
	   return new Inputs();		
	}
	
	@ModelAttribute("monOutputs")
    public MonOutputs monOutputs() {		
	   return new MonOutputs();		
	}
	
	@ModelAttribute("fohOutputs")
	public FohOutputs fohOutputs() {
		return new FohOutputs();
	}
	
	@ModelAttribute("wirelessInputs")
	public WirelessInputs wirelessInputs() {
		return new WirelessInputs();
	}
	
	@ModelAttribute("wirelessOutputs")
	public WirelessOutputs wirelessOutputs() {
		return new WirelessOutputs();
	}
	

}
