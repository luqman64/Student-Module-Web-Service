
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<title>Insert title here Hello</title>



<script>

	/* $(document).ready(function(){ */
		
		var url = document.URL;
		var id = url.substring(url.lastIndexOf('/') + 1);

		console.log(id);
		
		jQuery.ajax({
					url : "http://localhost:8080/frontend/student/"+id+"",
					type : "GET",
					dataType : "json",
					contentType : 'application/json; charset=utf-8',
					success : function(resultData) {
						//here is your json.
						// process it
						
						$("#firstName").val(resultData.firstName);
	            		$("#lastName").val(resultData.lastName);
	            		$("#email").val(resultData.emailId);
	            		
						console.log("sini");
						console.log("result Data", resultData);
						
						
					},
					error : function(jqXHR, textStatus, errorThrown) {
					},

					timeout : 120000,
					
				}); 

	/* }); */
	
</script>
</head>
 
<body>
<h2>Update Student Form</h2>
	<form id="myform">
		<label for='fname'>First Name:</label><br>
		<input type='text' class='fn' id='firstName'><br>
		<label for='lname'>Last Name:</label><br>
		<input type='text' class='ln' id='lastName'><br>
		<label for='email'>Email:</label><br>
		<input type='text' class='em' id='email'><br><br>
		<input type='submit' class='submit-button' value='Submit'> 
		<input type='hidden' id='id'>
	</form>

<div></div>
<script>
		
	$(document).ready(function(){
		
		$('#myform').submit(function(e){
		
			var firstName = $("#firstName");
			var lastName  = $("#lastName");
			var emailId	  = $("#email");
			
			var studentUpdate ={
		    		firstName : firstName.val(),
		            lastName  : lastName.val(),
		            emailId   : emailId.val(),
		    	    };
		    
			e.preventDefault();
			
			$.ajax({
				url		: "http://localhost:8081/api/backend/students/"+ id +"",
				type	: "PUT",
				dataType : "json",
				contentType : 'application/json; charset=utf-8',
				data: JSON.stringify(studentUpdate),
				success	: function(result){
					
					
					console.log("test",result);
					
					$("#firstName").val(result.firstName);
            		$("#lastName").val(result.lastName);
            		$("#email").val(result.emailId);
					
				}
			});
			console.log(JSON.stringify(studentUpdate));
			document.location.replace('http://localhost:8080/');
		});
		
		
		
		});
	
		
</script>
</body>
</html>