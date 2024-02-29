<!DOCTYPE html>
<html>
<head>
<script>  
function validateform(){  
var poname=document.myform.poname.value;  
var podes=document.myform.podes.value; 
var pospe=document.myform.pospe.value; 
var poexp=document.myform.poexp.value; 
var ponum=document.myform.ponum.value; 
var poeid=document.myform.poeid.value; 
var poadr=document.myform.poadr.value; 

if (poname==null || poname==""){  
  alert("Name can't be blank");  
  return false;  
}
else if(podes==null || podes==""){  
	  alert("designation  can't be blank");  
	  return false;  
	  }
else if(pospe==null || pospe==""){  
	 alert("specialized can't be blank"); 
	 return false;  
	  }
else if(poexp==null || poexp==""){  
	alert("experience can't be blank"); 
	return false;  
	  }
else if(ponum==null || ponum==""){  
	alert("number can't be blank"); 
	return false;  
	  }
else if(poeid==null || poeid==""){  
	alert("email can't be blank"); 
	return false;  
	  }
else if(poadr==null || poadr==""){  
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
  p.outset{
         border-style:outset;
         border-color: white;}
    

</style>
<body bgcolor="#e6f7ff">
<center>
<h1  style="color:#cc3300;"><u>ADD PROGRAM OFFICER</u></h1>
</center>
<p class="outset"></p>
<div>
  <center>
  <form  name="myform" method="post" action="poaddprocess.jsp" onsubmit="return validateform()">
    <center>  <h2 style="color:#cc3300;"> Details</h2> </center>
    <label for="poname"> Name of Faculty:</label>
    <input type="text" name="poname" placeholder="Your name.." >
    
    <label for="podes">Designation:</label>
    <input type="text" name="podes" placeholder="Your designation.." >
     
    <label for="pospe">Subject Specialized:</label>
     <input type="text" name="pospe" placeholder="Specialized in .." >
       
    <label for="poexp">year of experience:</label>
     <input type="text" name="poexp" placeholder="Your experience .." >  
     
     <label for="ponum">Phone Number:</label>
     <input type="text" name="ponum" placeholder="Your Number.." >        
      
      <label for="poeid">Email ID:</label>
      <input type="text" name="poeid" placeholder="Your email.." >
      
      <label for="poadr">Address:</label>
      <input type="text" name="poadr" placeholder="Your address.." >
      
    <input  type="submit" value="Submit">
     
   <a href="adminmenu.jsp"><button type="button" class="cancelbtn"> Cancel</button></a> 
  </form>
</center>  
</div>
</body>
</html>


