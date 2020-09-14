<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<title>Add</title>
<script>
$(document).ready(function(){
	var firstName =$("#firstName");
	var lastName =$("#lastName");
	var emailId= $("#emailId");
  $("#addData").click(function(){
	  
    alert(firstName.val()+" "+lastName.val());
    alert(emailId.val());

    var studentAdd ={
    		firstName : firstName.val(),
            lastName  : lastName.val(),
            emailId   : emailId.val(),
    	    };
    $.ajax({
        type :'POST',
        url: "http://localhost:8081/api/backend/students",
        dataType: "json",
        contentType: 'application/json; charset=utf-8',
       data: JSON.stringify(studentAdd),
        
        succcess: function(){
            }
        });
    console.log(JSON.stringify(studentAdd));
   
  });
});
</script>
</head>
<body>
<h2>HTML Forms Add</h2>


  <label for="fname">First name:</label><br>
  <input type="text" id="firstName" name="fname"  ><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lastName" name="lname" ><br><br>
  <label for="email">email:</label><br>
  <input type="text" id="emailId"  name="email" ><br><br>
  <button id="addData">Add</button>

<script>





    </script>
</body>
</html>