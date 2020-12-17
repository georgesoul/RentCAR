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
			<th>Vehicle ID</th>
			<th>License PLate</th>
			<th>Next Service Date</th>
			<th>Insurance Expiry Date</th>
		</tr>
		</thead>

		<?php
			require '../connectToDB.php';

			$query = " SELECT new_car_system2fixed.vehicle.VehicleID AS VehicleID, new_car_system2fixed.vehicle.LicensePlate AS LicensePlate, new_car_system2fixed.vehicle.NextService AS NextService, new_car_system2fixed.vehicle.InsuranceExp AS InsuranceExp FROM new_car_system2fixed.vehicle HAVING (((new_car_system2fixed.vehicle.NextService > NOW()) AND (new_car_system2fixed.vehicle.NextService < (NOW() + INTERVAL 30 DAY))) OR ((new_car_system2fixed.vehicle.InsuranceExp > NOW()) AND (new_car_system2fixed.vehicle.InsuranceExp < (NOW() + INTERVAL 30 DAY))))";
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$id = $row["VehicleID"];
					$license = $row["LicensePlate"];
					$service = $row["NextService"];
					$ins = $row["InsuranceExp"];

					echo '<tr><td>'.$id.'</td><td>'.$license.'</td><td>'.$service.'</td><td>'.$ins.'</td></tr>';
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