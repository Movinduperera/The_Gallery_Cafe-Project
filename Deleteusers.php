<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "movindu";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Check if a product ID is provided in the query parameters
if (isset($_GET['username'])) {
    // Retrieve the product ID from the query parameters
    $product_id = $_GET['username'];
    // Define the SQL query to delete the product with the specified ID
    $sql = "DELETE FROM users WHERE username='$product_id'";

    // Execute the delete query and check if it is successful
    if (mysqli_query($conn, $sql)) {
        // If successful, show an alert and redirect to the products page
        echo "<script>alert('User deleted successfully!'); window.location.href = 'Viewusers.php';</script>";
    } else {
        // If there is an error, display the error message
        echo "Error: " . mysqli_error($conn);
    }
} else {
    // If no product ID is provided, show an alert and redirect to the products page
    echo "<script>alert('Invalid Username.'); window.location.href = 'Viewusers.php';</script>";
}

// Close the database connection
mysqli_close($conn);
?>
