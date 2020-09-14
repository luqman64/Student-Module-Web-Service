<html>
  <head>
    <title> Person Information </title>
    <meta charset="UTF-8">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script>
    jQuery.ajax({
        url: "http://localhost:8081/api/backend/students",
        type: "GET",
        dataType: "json",
        contentType: 'application/json; charset=utf-8',
        success: function(resultData) {
            //here is your json.
              // process it
              
            var item =[];
            $.each(resultData, function (key, val){
                item.push("<tr>");
                item.push("<td id=''"+key+"''>"+val.id+"</td>");
                item.push("<td id=''"+key+"''>"+val.firstName+"</td>");
                item.push("<td id=''"+key+"''>"+val.lastName+"</td>");
                item.push("<td id=''"+key+"''>"+val.emailId+"</td>");
                //item.push("<td><a href='studentUpdate/"+val.id+"'>Update</a></td>");  
                item.push("<td><button class=\'upd\' onclick=\"update(" + val.id + ")\">Update</button></td>");  
                item.push("<td><button class=\'delete\' id=' "+val.id+" '>Delete</button></td>");
               
                item.push("</tr>");
                });
            $("<tbody/>",{html: item.join("")}).appendTo("table");

        },
        error : function(jqXHR, textStatus, errorThrown) {
        },

        timeout: 120000,
    });
  
    </script>
  </head>
  <body>
  <!-- <a href="/studentAdd">Add</a> -->
  <h2>Student Module</h2>
  <button id="addData">Add</button>
  <table>
  
  <thead>
  <tr>
  <th>id</th>
   <th>fname</th>
    <th>lname</th>
     <th>email</th>
     <th>Update</th>
     <th>Delete</th>
  </tr>
  </thead>
  <tbody></tbody>
         
  </table>
   <script type="text/javascript">
	function update(id) {
		window.location.href = "http://localhost:8080/studentUpdate/" + id;
	}
   
   $(document).ready(function() {
	   $(document).delegate('.delete', 'click', function() { 
		   var id = $(this).attr('id');
			if (confirm('Do you really want to delete record '+id + '?')) {
				
				var parent = $(this).parent().parent();
				$.ajax({
					type: "DELETE",
					url: "http://localhost:8081/api/backend/students/" + id,
					cache: false,
					success: function() {
						parent.fadeOut('slow', function() {
							$(this).remove();
						});
						location.reload(true)
					},
					error: function() {
						$('#err').html('<span style=\'color:red; font-weight: bold; font-size: 30px;\'>Error deleting record').fadeIn().fadeOut(4000, function() {
							$(this).remove();
						});
					}
				});
			}
		});

	   $("#addData").click(function(e) {
			e.preventDefault();
			window.location.replace('http://localhost:8080/studentAdd');
	   });

		
	   });
   </script>
  </body>
</html>