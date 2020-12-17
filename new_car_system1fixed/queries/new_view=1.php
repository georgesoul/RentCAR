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
			<th>Store ID</th>
			<th>City</th>
			<th>Type</th>
			<th>Car Count</th>
		</tr>
		</thead>

		<?php
			require '../connectToDB.php';

			$query = "SELECT vehicle.StoreID AS StoreID,stores.City AS City,vehicle.Type AS Type, COUNT(vehicle.VehicleID) AS vcount1 FROM (vehicle LEFT JOIN stores ON ((stores.StoreID = vehicle.StoreID))) GROUP BY vehicle.Type , stores.City";
			
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$StoreID = $row["StoreID"];
					$City = $row["City"];
					$Type = $row["Type"];
					$vcount1 = $row["vcount1"];

					echo '<tr><td>'.$StoreID.'</td><td>'.$City.'</td><td>'.$Type.'</td><td>'.$vcount1.'</td></tr>';
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