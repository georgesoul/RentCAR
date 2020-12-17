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
			<th>Employee SSN</th>
			<th>Store ID</th>
			<th>Last Name</th>
			<th>First Name</th>
			<th>Position</th>
			<th>Salary</th>
			<th>End of Collaboration</th>
		</tr>
		</thead>

		<?php
			require '../connectToDB.php';

			$query = "SELECT employee.SSN_emp AS SSN_emp,works.StoreID AS StoreID,employee.LastName AS LastName,employee.FirstName AS FirstName,works.Position AS Position,works.Salary AS Salary,works.FinishDate AS FinishDate FROM (employee LEFT JOIN works ON ((employee.SSN_emp = works.SSN_emp))) WHERE ISNULL(works.FinishDate)HAVING (works.Salary > 1000)";
			if($query_run = mysqli_query($mysql_connection,$query))
			{
				while($row = mysqli_fetch_assoc($query_run))
				{
					$ssn = $row["SSN_emp"];
					$id = $row["StoreID"];
					$lname = $row["LastName"];
					$fname = $row["FirstName"];
					$position = $row["Position"];
					$salary = $row["Salary"];
					$fdate = $row["FinishDate"];

					echo '<tr><td>'.$ssn.'</td><td>'.$id.'</td><td>'.$lname.'</td><td>'.$fname.'</td><td>'.$position.'</td><td>'.$salary.'</td><td>'.$fdate.'</td></tr>';
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