<?php

include 'includes/session.php';

$conn = $pdo->open();

$output = array('error' => false);

$id = $_POST['id'];
$quantity = $_POST['quantity'];

if (isset($_SESSION['user'])) {
    $stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM wishlist WHERE user_id=:user_id AND product_id=:product_id");
    $stmt->execute(['user_id' => $user['id'], 'product_id' => $id]);
    $row = $stmt->fetch();
    if ($row['numrows'] < 1) {
        try {
            $stmt = $conn->prepare("INSERT INTO wishlist (user_id, product_id) VALUES (:user_id, :product_id)");
            $stmt->execute(['user_id' => $user['id'], 'product_id' => $id]);
            $output['message'] = 'Item added to Wishlist';
        } catch (PDOException $e) {
            $output['error'] = true;
            $output['message'] = $e->getMessage();
        }
    } else {
        $output['error'] = true;
        $output['message'] = 'Product already in Wishlist';
    }
} else {
    $output['error'] = true;
    $output['message'] = 'Please login to build your Wishlist';
}

$pdo->close();
echo json_encode($output);
?>