<?php
// Database configuration
$dbHost     = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName     = "xavierburgers";
// Create database connection
$db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);
// Check connection
if ($db->connect_error) 
{
    die("Connection failed: " . $db->connect_error);
}
?>
<!DOCTYPE html>
<html>
<head>
<title>Orders made</title>
<style>
table {
border-collapse: collapse;
width: 100%;
color: #588c7e;
font-family: monospace;
font-size: 25px;
text-align: left;
}
th {
background-color: #588c7e;
color: white;
}
tr:nth-child(even) {background-color: #f2f2f2}
</style>
</head>
<body>
<table>
<tr>
<th>id</th>
<th>code</th>
<th>quantity</th>
<th>unitprice</th>
<th>totalprice</th>
</tr>
<?php
$sql = "SELECT id, code, quantity,unitprice,totalprice FROM ordertable";
$result = $db->query($sql);
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["id"]. "</td><td>" . $row["code"] . "</td><td>"
. $row["quantity"]. "</td><td>" . $row["unitprice"]. "</td><td>" . $row["totalprice"]. "</td></tr>";
}
echo "</table>";
} else { echo "0 results"; }
$db->close();
?>
</table>
</body>
</html>