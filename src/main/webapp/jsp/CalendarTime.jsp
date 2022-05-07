<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jQuery UI Datepicker - Display month &amp; year menus</title>



<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
 function disableSunday(d){
	  var day = d.getDay();
	  if(day==0)
	  {
	   return [false];
	  }else
	  {
		  return [true];
	  }
 }
 
 $( function() {
	  $( "#datepicker" ).datepicker({
		  changeMonth :true,
		  changeYear :true,
		  yearRange :'0:+10',
		  dateFormat:'dd-mm-yy',

//Disable for Sunday
		  beforeShowDay : disableSunday,		  
//Disable for back date
		  minDate : 0   
	  });
 } );
 </script>
</head>
<body>

</body>
</html>