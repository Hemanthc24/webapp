<!DOCTYPE html> 
<html> 
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<script>  
function validateform(){  
var fname=document.myform.fname.value;  
var lname=document.myform.lname.value;  
var x=document.myform.email.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
var password=document.myform.password.value;  

  
if (fname==null || fname==""){  
  alert("Name can't be blank");  
  return false;  
}
else if (lname==null || lname==""){  
	  alert("lastName can't be blank");  
	  return false;  
	}
else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
	  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
	  return false;  
	}
else if(password.length<2){  
	  alert("Password must be at least 4 characters long.");  
	  return false;  
	  }
}  
</script>  
<style> 
Body {
  font-family: Calibri, Helvetica, sans-serif;
  background-color:#e6f7ff;
}
button { 
       background-color: #000066; 
       width: 30%;
        color:white; 
        padding: 10px; 
        margin: 10px 0px; 
        border: none; 
        cursor: pointer; 
         } 
 
 form { 
       width:35%;
        border: 3px solid darkblue; 
         background-color: #f2f2f2;
    } 
 input[type=text], input[type=password] { 
        width: 80%; 
        margin: 8px 0;
        padding: 5px 5px; 
        display: inline-block; 
        border: 2px solid darkblue; 
        box-sizing: border-box; 
    }
 button:hover { 
      
        background-color: #000080; 
        
    } 
  .cancelbtn { 
        width: 30%; 
        padding: 10px 18px;
        margin: 5px 5px;
    } 
 
   
 .container { 
      
        padding: 25px; 
        background-color:"#0077b3";
    }
      p.outset{
         border-style:outset;
         border-color: white;}
     
</style> 
</head>  
<body> 
<center>
<style>
body{
 background-image:url(logo1.jpg);
 background-size:150px 150px;
 background-repeat:no-repeat;
 background-position:top center;
 background-attachment:fixed;
 };
 </style>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <h1 style="color:darkblue;"><u style="color:red;"> National Service Scheme </u></h1>
 <p class="outset"></p>
 </center> 
    <center> <h1 style="color:#cc0000;">New Volunteer Register  </h1> </center> 
     <center>
   <form name="myform" method="post" action="registorprocess.jsp" onsubmit="return validateform()" >  
        <div class="container"> 
            <label>First Name : </label> 
            <input type="text" placeholder="Enter Firstname" name="fname">
            <label>Last Name : </label> 
            <input type="text" placeholder="Enter Last Name" name="lname" >
            <label>Email ID   : </label> 
            <input type="text" placeholder="Enter Email Id" name="email" >
            <label>Password : </label> 
            <input type="password" placeholder="Enter Password" name="password" >
            <button type="submit">Submit</button> 
            <a href="welcome.jsp"><button type="button" class="cancelbtn"> Cancel</button></a> 
           
        </div> 
    </form>   
    </center>
</body>   
</html>

 
