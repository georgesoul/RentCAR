<?php	
	
	require "menu.php";

?>

<html>
<body>
<div class="container">

<div class="table-responsive">		
	<table class="table table-striped">
		<thead>
		<tr>
			<th>Blacklisted Customer SSN</th>
			<th>Last Name</th>
			<th>First Name</th>
		</tr>
		</thead>
		
		<?php
			require '../connectToDB.php';

			$query = "SELECT new_car_system1fixed.customers.SSN_cust AS black_list,new_car_system1fixed.customers.LastName AS LastName,new_car_system1fixed.customers.FirstName AS FirstName FROM new_car_system1fixed.customers WHERE new_car_system1fixed.customers.SSN_cust IN (SELECT new_car_system1fixed.rents.SSN_cust FROM new_car_system1fixed.rents WHERE (new_car_system1fixed.rents.ReturnState LIKE 'BAD'))";
			
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$ssn = $row["black_list"];
					$lname = $row["LastName"];
					$fname = $row["FirstName"];

					echo '<tr><td>'.$ssn.'</td><td>'.$lname.'</td><td>'.$fname.'</td></tr>';
				}
			}
			else
			{
				echo 'Error';
			}

			mysqli_close($mysql_connection);
		?>
	</table>
</div>
</body>
</html>