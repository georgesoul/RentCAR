<?php	
	
	require "menu.php";

?>

<html>
<body>
<div class="container">
<div class="table-responsive">		
	<table class="table table-striped" style="width: 250px;" align="center">
		<thead>
		<tr>
			<th>Vehicle ID</th>
			<th>Rent Number</th>
		</tr>
		</thead>

		<?php
			require '../connectToDB.php';

			$query = " SELECT new_car_system2fixed.rents.VehicleID AS VehicleID, COUNT(new_car_system2fixed.rents.RentID) AS COUNT FROM new_car_system2fixed.rents GROUP BY new_car_system2fixed.rents.VehicleID HAVING (COUNT(COUNT) <= 3)";
			
			
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$id = $row["VehicleID"];
					$rents = $row["COUNT"];

					echo '<tr><td>'.$id.'</td><td>'.$rents.'</td></tr>';
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