//INPUT TAB TABLE SCRIPTS
const $table1ID = $('#table');
//const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
 const $BTN = $('#export-btn');
 const $EXPORT = $('#export');
 const newTr = `
<tr class="hide">
  <td class="pt-3-half" contenteditable="true">Example</td>
  <td class="pt-3-half" contenteditable="true">Example</td>
  <td class="pt-3-half" contenteditable="true">Example</td>
  <td class="pt-3-half" contenteditable="true">Example</td>
  <td class="pt-3-half" contenteditable="true">Example</td>
  <td>
    <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0 waves-effect waves-light">Remove</button></span>
  </td>
</tr>`;

 $('.table-add').on('click', 'i', () => {
	 

   const $clone = $tableID.find('tbody tr').last().clone(true).removeClass('hide table-line');
   console.log("$tableID");

   if ($tableID.find('tbody tr').length === 0) {
	   
     $('tbody').append(newTr);
   }
   
   $tableID.find('table').append($clone);
 });

 $tableID.on('click', '.table-remove', function () {

   $(this).parents('tr').detach();
 });

 $tableID.on('click', '.table-up', function () {

   const $row = $(this).parents('tr');

   if ($row.index() === 0) {
     return;
   }

   $row.prev().before($row.get(0));
 });

 $tableID.on('click', '.table-down', function () {

   const $row = $(this).parents('tr');
   $row.next().after($row.get(0));
 });

 // A few jQuery helpers for exporting only
 jQuery.fn.pop = [].pop;
 jQuery.fn.shift = [].shift;

 $BTN.on('click', () => {

   const $rows = $tableID.find('tr:not(:hidden)');
   const headers = [];
   const data = [];

   // Get the headers (add special header logic here)
   $($rows.shift()).find('th:not(:empty)').each(function () {

     headers.push($(this).text().toLowerCase());
   });

   // Turn all existing rows into a loopable array
   $rows.each(function () {
     const $td = $(this).find('td');
     const h = {};

     // Use the headers from earlier to name our hash keys
     headers.forEach((header, i) => {

       h[header] = $td.eq(i).text();
     });

     data.push(h);
   });

   // Output the result
   $EXPORT.text(JSON.stringify(data));
 });
// END INPUT TAB SCRIPTS
 
//MON OUTPUTS TAB TABLE SCRIPTS
 const $table2ID = $('#table2');
 //const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
  const $BTN = $('#export-btn');
  const $EXPORT = $('#export');

  const newTr = `
 <tr class="hide">
   <td class="pt-3-half" contenteditable="true">Example</td>
   <td class="pt-3-half" contenteditable="true">Example</td>
   <td class="pt-3-half" contenteditable="true">Example</td>
   <td class="pt-3-half" contenteditable="true">Example</td>
   <td class="pt-3-half" contenteditable="true">Example</td>
   <td>
     <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0 waves-effect waves-light">Remove</button></span>
   </td>
 </tr>`;

  $('.table2-add').on('click', 'i', () => {
 	 

    const $clone = $table2ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
    console.log("$table2ID");

    if ($table2ID.find('tbody tr').length === 0) {
 	   
      $('tbody').append(newTr);
    }
    
    $table2ID.find('table2').append($clone);
  });

  $table2ID.on('click', '.table2-remove', function () {

    $(this).parents('tr').detach();
  });

  $table2ID.on('click', '.table-up', function () {

    const $row = $(this).parents('tr');

    if ($row.index() === 0) {
      return;
    }

    $row.prev().before($row.get(0));
  });

  $table2ID.on('click', '.table-down', function () {

    const $row = $(this).parents('tr');
    $row.next().after($row.get(0));
  });

  // A few jQuery helpers for exporting only
  jQuery.fn.pop = [].pop;
  jQuery.fn.shift = [].shift;

  $BTN.on('click', () => {

    const $rows = $table2ID.find('tr:not(:hidden)');
    const headers = [];
    const data = [];

    // Get the headers (add special header logic here)
    $($rows.shift()).find('th:not(:empty)').each(function () {

      headers.push($(this).text().toLowerCase());
    });

    // Turn all existing rows into a loopable array
    $rows.each(function () {
      const $td = $(this).find('td');
      const h = {};

      // Use the headers from earlier to name our hash keys
      headers.forEach((header, i) => {

        h[header] = $td.eq(i).text();
      });

      data.push(h);
    });

    // Output the result
    $EXPORT.text(JSON.stringify(data));
  });
 // END MON OUTPUTS TAB SCRIPTS
  
//FOH OUTPUTS TAB TABLE SCRIPTS
  const $table3ID = $('#table3');
  //const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
   const $BTN = $('#export-btn');
   const $EXPORT = $('#export');

   const newTr = `
  <tr class="hide">
    <td class="pt-3-half" contenteditable="true">Example</td>
    <td class="pt-3-half" contenteditable="true">Example</td>
    <td class="pt-3-half" contenteditable="true">Example</td>
    <td class="pt-3-half" contenteditable="true">Example</td>
    <td class="pt-3-half" contenteditable="true">Example</td>
    <td>
      <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0 waves-effect waves-light">Remove</button></span>
    </td>
  </tr>`;

   $('.table3-add').on('click', 'i', () => {
  	 

     const $clone = $table3ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
     console.log("$tableID");

     if ($table3ID.find('tbody tr').length === 0) {
  	   
       $('tbody').append(newTr);
     }
     
     $table3ID.find('table3').append($clone);
   });

   $table3ID.on('click', '.table3-remove', function () {

     $(this).parents('tr').detach();
   });

   $table3ID.on('click', '.table-up', function () {

     const $row = $(this).parents('tr');

     if ($row.index() === 0) {
       return;
     }

     $row.prev().before($row.get(0));
   });

   $table3ID.on('click', '.table-down', function () {

     const $row = $(this).parents('tr');
     $row.next().after($row.get(0));
   });

   // A few jQuery helpers for exporting only
   jQuery.fn.pop = [].pop;
   jQuery.fn.shift = [].shift;

   $BTN.on('click', () => {

     const $rows = $table3ID.find('tr:not(:hidden)');
     const headers = [];
     const data = [];

     // Get the headers (add special header logic here)
     $($rows.shift()).find('th:not(:empty)').each(function () {

       headers.push($(this).text().toLowerCase());
     });

     // Turn all existing rows into a loopable array
     $rows.each(function () {
       const $td = $(this).find('td');
       const h = {};

       // Use the headers from earlier to name our hash keys
       headers.forEach((header, i) => {

         h[header] = $td.eq(i).text();
       });

       data.push(h);
     });

     // Output the result
     $EXPORT.text(JSON.stringify(data));
   });
  // END FOH OUTPUTS TAB SCRIPTS
   
 //WIRELESS INPUTS TAB TABLE SCRIPTS
   const $table4ID = $('#table4');
   //const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
    const $BTN = $('#export-btn');
    const $EXPORT = $('#export');

    const newTr = `
   <tr class="hide">
     <td class="pt-3-half" contenteditable="true">Example</td>
     <td class="pt-3-half" contenteditable="true">Example</td>
     <td class="pt-3-half" contenteditable="true">Example</td>
     <td class="pt-3-half" contenteditable="true">Example</td>
     <td class="pt-3-half" contenteditable="true">Example</td>
     <td>
       <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0 waves-effect waves-light">Remove</button></span>
     </td>
   </tr>`;

    $('.table4-add').on('click', 'i', () => {
   	 

      const $clone = $table4ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
      console.log("$tableID");

      if ($table4ID.find('tbody tr').length === 0) {
   	   
        $('tbody').append(newTr);
      }
      
      $table4ID.find('table4').append($clone);
    });

    $table4ID.on('click', '.table4-remove', function () {

      $(this).parents('tr').detach();
    });

    $table4ID.on('click', '.table-up', function () {

      const $row = $(this).parents('tr');

      if ($row.index() === 0) {
        return;
      }

      $row.prev().before($row.get(0));
    });

    $table4ID.on('click', '.table-down', function () {

      const $row = $(this).parents('tr');
      $row.next().after($row.get(0));
    });

    // A few jQuery helpers for exporting only
    jQuery.fn.pop = [].pop;
    jQuery.fn.shift = [].shift;

    $BTN.on('click', () => {

      const $rows = $table4ID.find('tr:not(:hidden)');
      const headers = [];
      const data = [];

      // Get the headers (add special header logic here)
      $($rows.shift()).find('th:not(:empty)').each(function () {

        headers.push($(this).text().toLowerCase());
      });

      // Turn all existing rows into a loopable array
      $rows.each(function () {
        const $td = $(this).find('td');
        const h = {};

        // Use the headers from earlier to name our hash keys
        headers.forEach((header, i) => {

          h[header] = $td.eq(i).text();
        });

        data.push(h);
      });

      // Output the result
      $EXPORT.text(JSON.stringify(data));
    });
   // END WIRELESS INPUTS TAB SCRIPTS
    
  //WIRELESS OUTPUTS TAB TABLE SCRIPTS
    const $table5ID = $('#table5');
    //const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
     const $BTN = $('#export-btn');
     const $EXPORT = $('#export');

     const newTr = `
    <tr class="hide">
      <td class="pt-3-half" contenteditable="true">Example</td>
      <td class="pt-3-half" contenteditable="true">Example</td>
      <td class="pt-3-half" contenteditable="true">Example</td>
      <td class="pt-3-half" contenteditable="true">Example</td>
      <td class="pt-3-half" contenteditable="true">Example</td>
      <td>
        <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0 waves-effect waves-light">Remove</button></span>
      </td>
    </tr>`;

     $('.table5-add').on('click', 'i', () => {
    	 

       const $clone = $table5ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
       console.log("$table5ID");

       if ($table5ID.find('tbody tr').length === 0) {
    	   
         $('tbody').append(newTr);
       }
       
       $table5ID.find('table5').append($clone);
     });

     $table5ID.on('click', '.table5-remove', function () {

       $(this).parents('tr').detach();
     });

     $table5ID.on('click', '.table-up', function () {

       const $row = $(this).parents('tr');

       if ($row.index() === 0) {
         return;
       }

       $row.prev().before($row.get(0));
     });

     $table5ID.on('click', '.table-down', function () {

       const $row = $(this).parents('tr');
       $row.next().after($row.get(0));
     });

     // A few jQuery helpers for exporting only
     jQuery.fn.pop = [].pop;
     jQuery.fn.shift = [].shift;

     $BTN.on('click', () => {

       const $rows = $table5ID.find('tr:not(:hidden)');
       const headers = [];
       const data = [];

       // Get the headers (add special header logic here)
       $($rows.shift()).find('th:not(:empty)').each(function () {

         headers.push($(this).text().toLowerCase());
       });

       // Turn all existing rows into a loopable array
       $rows.each(function () {
         const $td = $(this).find('td');
         const h = {};

         // Use the headers from earlier to name our hash keys
         headers.forEach((header, i) => {

           h[header] = $td.eq(i).text();
         });

         data.push(h);
       });

       // Output the result
       $EXPORT.text(JSON.stringify(data));
     });
    // END WIRELESS OUTPUTS TAB SCRIPTS