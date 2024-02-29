<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>  
function validateform(){  
   
var vname=document.myform.vname.value;
var course=document.myform.course.value;
var date=document.myform.date.value;
var inform=document.myform.inform.value;


if (vname==null || vname==""){  
	  alert("Name can't be blank");  
	  return false;  
	}
else if (course==null || course==""){  
	  alert("course can't be blank");  
	  return false;  
	}
else if (date==null || date==""){  
	  alert("date can't be blank");  
	  return false;  
	}
else if (inform==null || inform==""){  
	  alert("inform can't be blank");  
	  return false;  
	}

}  
</script> 
</head>
<style>
input[type=text], select {
  width: 95%;
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
       width:40%;
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
<h1  style="color:#cc3300;"><u>POST YOUR IDEAS</u></h1>
</center>
<center>
<form name="myform"  method="post" action="vpostidea1.jsp" onsubmit="return validateform()">
 <center>  <h2 style="color:#cc3300;">YOUR IDEA</h2> </center>

 
<label for="vname"> Volunteer Name:</label>
<input type="text" name="vname">

<label for="course"> Course:</label>
<input type="text" name="course">

<label for="date"> Date:</label>
<input type="text" name="date">

<label for="inform"> Inform:</label>
<input type="text" name="inform">

<br>
<br>

<input type="submit" value="submit">
 <a href="volunteermenu.jsp"><button type="button" class="cancelbtn"> Cancel</button></a>

 </form> 
</center>
</body>
</html>
