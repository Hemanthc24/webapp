<!DOCTYPE html>
<html>
<head>
<script>  
function validateform(){  
var image=document.myform.image.value;  
var vname=document.myform.vname.value; 
var vfname=document.myform.vfname.value; 
var vcourse=document.myform.vcourse.value; 
var vyear=document.myform.vyear.value; 
var vage=document.myform.vage.value; 
var vgender=document.myform.vgender.value; 
var vbgrp=document.myform.vbgrp.value;
var veid=document.myform.veid.value;
var vnum=document.myform.vnum.value;
var vadr=document.myform.vadr.value;


if (image==null || image==""){  
  alert("image can't be blank");  
  return false;  
}
else if(vname==null || vname==""){  
	  alert("name  can't be blank");  
	  return false;  
	  }
else if(vfname==null || vfname==""){  
	 alert("fathername can't be blank"); 
	 return false;  
	  }
else if(vcourse==null || vcourse==""){  
	alert("course can't be blank"); 
	return false;  
	  }
else if(vyear==null || vyear==""){  
	alert("year can't be blank"); 
	return false;  
	  }
else if(vage==null || vage==""){  
	alert("age can't be blank"); 
	return false;  
	  }
else if(vgender==null || vgender==""){  
	alert("gender can't be blank"); 
	return false;  
	}
else if(vbgrp==null || vbgrp==""){  
	alert("blood group can't be blank"); 
	return false;  
	  }
else if(veid==null || veid==""){  
	alert("Email can't be blank"); 
	return false;  
	  }
else if(vnum==null || vnum==""){  
	alert("number can't be blank"); 
	return false;  
	  }
else if(vadr==null || vadr==""){  
	alert("address can't be blank"); 
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
<h1  style="color:#cc3300;"><u>Fill The Following Form</u></h1>
</center>
<div>
  <center>
  <form   name="myform" method="post" action="UploadImage" enctype="multipart/form-data" onsubmit="return validateform()">
    <center>  <h2 style="color:#cc3300;"> Details</h2> </center>
    
    Insert your image:<br>
 <input type="file" name="image" ><br/><br/>
             
    <label for="fname"> Name of Volunteer:</label>
    <input type="text" name="vname" placeholder="Your name.." >
    
    <label for="vfname">Father Name:</label>
    <input type="text" name="vfname" placeholder="Your father name.." >
     
    <label for="vcourse">Course:</label>
    <select  name="vcourse" >
    <option> </option>
      <option >BCA</option>
      <option >B.com</option>
      <option >BSc</option>
    </select>
      
    <label for="vyear">year:</label>
    <select  name="vyear" >
    <option> </option>
      <option >2022</option>
      <option >2021</option>
      <option >2020</option>
      <option >2019</option>
     </select>
       
     <label for="vage">Age:</label>
     <select  name="vage" >
     <option> </option>
     <option>18</option>
     <option>19</option>
     <option>20</option>
     <option>21</option>
     <option>22</option>
     </select>
     
      <label for="vgender">Gender:</label>
      <select  name="vgender" >
      <option> </option>
      <option>Male</option>
      <option>Female</option>
      </select>
      
      <label for="vbgrp">Blood Group:</label>
      <select  name="vbgrp" >
      <option> </option>
      <option>A-</option>
      <option>A+</option>
      <option>AB-</option>
      <option>AB+</option>
      <option>B-</option>
      <option>B+</option>
      <option>O-</option>
      <option>O+</option>
      </select>
      
      <label for="veid">Email ID:</label>
    <input type="text" name="veid" placeholder="Your email id.." >
     
     <label for="vnum">Phone Number:</label>
    <input type="text" name="vnum" placeholder="Your phone number.." >
     
     <label for="vadr">Address:</label>
    <input type="text" name="vadr" placeholder="Your address.." >
     
    <input  type="submit" value="Submit">
     
   <a href="adminmenu.jsp"><button type="button" class="cancelbtn"> Cancel</button></a> 
  </form>
</center>  
</div>
</body>
</html>


