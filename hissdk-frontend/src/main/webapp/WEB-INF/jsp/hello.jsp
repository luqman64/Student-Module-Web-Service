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
  <style>
	table.minimalistBlack {
		border: 2px solid #000000;
		text-align: left;
		border-collapse: collapse;
	}
	
	table.minimalistBlack td, table.minimalistBlack th {
		border: 1px solid #000000;
		padding: 5px 4px;
	}
	
	table.minimalistBlack thead {
		background: #CFCBA0;
		background: -moz-linear-gradient(top, #dbd8b8 0%, #d3d0a9 66%, #CFCBA0 100%);
		background: -webkit-linear-gradient(top, #dbd8b8 0%, #d3d0a9 66%, #CFCBA0 100%);
		background: linear-gradient(to bottom, #dbd8b8 0%, #d3d0a9 66%, #CFCBA0 100%);
		border-bottom: 1px solid #000000;
	}
	
	table.minimalistBlack thead th {
		font-size: 15px;
		font-weight: bold;
		color: #000000;
		text-align: left;
	}
	
	table.minimalistBlack tfoot td {
		font-size: 14px;
	}
</style>
<body>
	<h2>Student Module</h2>
	<button id="addData">Add</button>
	<br><br>

	<table class="minimalistBlack">
		<thead>
			<tr>
				<th>Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
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