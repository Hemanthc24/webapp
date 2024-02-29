<!DOCTYPE html>
<html>
<head>
<script>  
function validateform(){  
var name=document.myform.name.value;  
var date=document.myform.date.value; 
var place=document.myform.place.value; 
var org=document.myform.org.value; 
var nop=document.myform.nop.value; 
var nod=document.myform.nod.value; 
var guest=document.myform.guest.value; 

if (name==null || name==""){  
  alert("Name can't be blank");  
  return false;  
}
else if(date==null || date==""){  
	  alert("date  can't be blank");  
	  return false;  
	  }
else if(place==null || place==""){  
	 alert("place can't be blank"); 
	 return false;  
	  }
else if(org==null || org==""){  
	alert("organizer can't be blank"); 
	return false;  
	  }
else if(nop==null || nop==""){  
	alert("number of participents can't be blank"); 
	return false;  
	  }
else if(nod==null || nod==""){  
	alert("number of days can't be blank"); 
	return false;  
	  }
else if(guest==null || guest==""){  
	alert("guest can't be blank"); 
	return false;  
	  }
}  
</script> 
</head>
<style>
input[type=text], select {
  width: 99%;
  padding: 12px 20px;
  margin: 10px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
button { 
       background-color: #000066; 
       width: 25%;
        color:white; 
        padding: 10px; 
        margin: 10px 0px; 
        border: none; 
        cursor: pointer; 
         } 
 button:hover { 
      
        background-color: #000080; 
        
    } 
 form { 
       width:45%;
        border: 3px solid darkblue;
         background-color: #f2f2f2;
        display:center;
    } 
input[type=submit] {
  width: 25%;
  background-color: #000066;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #000080;
}

</style>
<body bgcolor="#e6f7ff">
<center>
<h1  style="color:#cc3300;"><u>Fill The Following Form</u></h1>
</center>
<div>
  <center>
  <form  name="myform" method="post" action="Eaddprocess.jsp" onsubmit="return validateform()">
    <center>  <h2 style="color:#cc3300;"> Details</h2> </center>
    <label for="name"> Name of Event:</label>
    <input type="text" name="name" placeholder="Event name.." >
    
    <label for="date">Date:</label>
    <input type="text" name="date" placeholder="Event date.." >
     
    <label for="place">Place:</label>
     <input type="text" name="place" placeholder=" Event place ..">
       
    <label for="org">Organizer:</label>
     <input type="text" name="org" placeholder="Event Organizer .." >  
     
     <label for="nop">No Of Participants:</label>
     <input type="text" name="nop" placeholder="Participants.." >        
      
      <label for="nod">No Of Days:</label>
      <input type="text" name="nod" placeholder="Days.." >
      
      <label for="guest">Guest:</label>
      <input type="text" name="guest" placeholder="Event guest.." >
      
    <input  type="submit" value="Submit">
     
   <a href="adminmenu.jsp"><button type="button" class="cancelbtn"> Cancel</button></a> 
  </form>
</center>  
</div>
</body>
</html>


