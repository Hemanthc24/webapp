+<!DOCTYPE html>
<html>
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
  <form  method="post" action="vaddprocess.jsp">
    <center>  <h2 style="color:#cc3300;"> Details</h2> </center>
    
    <label for="fname"> Name of Volunteer:</label>
    <input type="text" name="vname" placeholder="Your name.." required>
    
    <label for="vfname">Father Name:</label>
    <input type="text" name="vfname" placeholder="Your father name.." required>
     
    <label for="vcourse">Course:</label>
    <select  name="vcourse" required>
    <option> </option>
      <option >BCA</option>
      <option >B.com</option>
      <option >BSc</option>
    </select>
      
    <label for="vyear">year:</label>
    <select  name="vyear" required>
    <option> </option>
      <option >2022</option>
      <option >2021</option>
      <option >2020</option>
      <option >2019</option>
     </select>
       
     <label for="vage">Age:</label>
     <select  name="vage" required>
     <option> </option>
     <option>18</option>
     <option>19</option>
     <option>20</option>
     <option>21</option>
     <option>22</option>
     </select>
     
      <label for="vgender">Gender:</label>
      <select  name="vgender" required>
      <option> </option>
      <option>Male</option>
      <option>Female</option>
      </select>
      
      <label for="vbgrp">Blood Group:</label>
      <select  name="vbgrp" required>
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
    <input type="text" name="veid" placeholder="Your email id.." required>
     
     <label for="vnum">Phone Number:</label>
    <input type="text" name="vnum" placeholder="Your phone number.." required>
     
     <label for="vadr">Address:</label>
    <input type="text" name="vadr" placeholder="Your address.." required>
     
    <input  type="submit" value="Submit">
     
   <a href="adminmenu.jsp"><button type="button" class="cancelbtn"> Cancel</button></a> 
  </form>
</center>  
</div>
</body>
</html>


