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
			<th>Rent ID</th>
			<th>Customer SSN</th>
			<th>Payment Method</th>
			<th>Payment Amount</th>
		</tr>
		</thead>

		<?php
			require '../connectToDB.php';
		
			$query = "SELECT new_car_system1fixed.rents.RentID AS RentID, new_car_system1fixed.rents.SSN_cust AS SSN_cust, new_car_system1fixed.transaction_history.PaymentMethod AS PaymentMethod, new_car_system1fixed.transaction_history.PaymentAmount AS PaymentAmount FROM (new_car_system1fixed.rents LEFT JOIN new_car_system1fixed.transaction_history ON ((new_car_system1fixed.rents.RentID = new_car_system1fixed.transaction_history.RentID))) WHERE ISNULL(new_car_system1fixed.rents.Employee_Receive) ORDER BY new_car_system1fixed.transaction_history.PaymentAmount DESC";
			
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$rentid = $row["RentID"];
					$ssn = $row["SSN_cust"];
					$pmethod = $row["PaymentMethod"];
					$pamount = $row["PaymentAmount"];

					echo '<tr><td>'.$rentid.'</td><td>'.$ssn.'</td><td>'.$pmethod.'</td><td>'.$pamount.'</td></tr>';
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