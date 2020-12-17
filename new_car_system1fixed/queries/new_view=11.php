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
			<th>Annual Income</th>
			<th>Year</th>
		</tr>
		</thead>

		<?php
			require '../connectToDB.php';

			$query = "SELECT new_car_system1fixed.stores.StoreID AS StoreID, new_car_system1fixed.rents.StartLocation AS City, SUM(new_car_system1fixed.transaction_history.PaymentAmount) AS anual_income, YEAR(new_car_system1fixed.rents.StartDate) AS YEAR FROM ((new_car_system1fixed.rents LEFT JOIN new_car_system1fixed.stores ON ((new_car_system1fixed.rents.StartLocation = new_car_system1fixed.stores.City))) LEFT JOIN new_car_system1fixed.transaction_history ON ((new_car_system1fixed.rents.RentID = new_car_system1fixed.transaction_history.RentID))) GROUP BY new_car_system1fixed.rents.StartLocation , YEAR(new_car_system1fixed.rents.StartDate)";
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$StoreID = $row["StoreID"];
					$City = $row["City"];
					$income = $row["anual_income"];
					$year = $row["YEAR"];

					echo '<tr><td>'.$StoreID.'</td><td>'.$City.'</td><td>'.$income.'</td><td>'.$year.'</td></tr>';
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