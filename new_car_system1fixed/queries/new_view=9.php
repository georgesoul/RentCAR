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
			<th>Customer SSN</th>
			<th>Last Name</th>
			<th>First Name</th>
			<th>Rents Sum</th>
		</tr>
		</thead>

		<?php
			require '../connectToDB.php';

			$query = "SELECT new_car_system1fixed.customers.SSN_cust AS SSN_cust, new_car_system1fixed.customers.LastName AS LastName, new_car_system1fixed.customers.FirstName AS FirstName, COUNT(new_car_system1fixed.rents.RentID) AS sum_rents FROM (new_car_system1fixed.customers LEFT JOIN new_car_system1fixed.rents ON ((new_car_system1fixed.customers.SSN_cust = new_car_system1fixed.rents.SSN_cust))) WHERE (NOT ((new_car_system1fixed.rents.ReturnState LIKE 'BAD'))) GROUP BY new_car_system1fixed.rents.SSN_cust HAVING (COUNT(sum_rents) >= 2)";
			
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$ssn = $row["SSN_cust"];
					$lname = $row["LastName"];
					$fname = $row["FirstName"];
					$sum = $row["sum_rents"];

					echo '<tr><td>'.$ssn.'</td><td>'.$lname.'</td><td>'.$fname.'</td><td>'.$sum.'</td></tr>';
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