<!DOCTYPE html>
<html lang="en">
<head>
<title>Search </title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="style.css"> 
    <link rel="stylesheet" href="fontawesome-free-5.15.1/css/all.css">
    <style>
input[type=text], select {
  width: 50%;
  padding: 12px 20px;
  margin: 15px 15px;
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
        margin: 15px 15px; 
        border: none; 
        cursor: pointer; 
         } 
 button:hover { 
      
        background-color: #000080; 
        
    } 
 form { 
       width:50%;
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
</head>
<body="center" bgcolor="#e6f7ff">
<div class="container">
<form class="form-inline" method="post" action="vprofile1.jsp">
<center><h1 style="color:red;"> PROFILE</h1> </center>
<input type="text" name="uid" class="form-control" placeholder="Enter ID.....">
 :<button type="submit" name="save" class="btn btn-primary">Get Profile</button>
 <a href="volunteermenu.jsp"> <button type="button">Back</button> </a>
</form>
</div>
<br>
<br>

</body>
</html>
