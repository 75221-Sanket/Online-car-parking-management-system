<?php 
    // adding products to wishlist
    if (isset($_POST['add_to_wishlist'])) {
        if ($user_id != '') {

            $id = unique_id();
            $product_id = $_POST['product_id'];

            $verify_wishlist = $conn->prepare("SELECT * FROM `wishlist` WHERE user_id = ? AND product_id = ?");
            $verify_wishlist->execute([$user_id, $product_id]);

            $cart_num = $conn->prepare("SELECT * FROM `cart` WHERE user_id = ? AND product_id = ?");
            $cart_num->execute([$user_id, $product_id]);

            if ($verify_wishlist->rowCount() > 0) {
                $warning_msg[] = 'Product already exists in your wishlist';
            } else if ($cart_num->rowCount() > 0) {
                $warning_msg[] = 'Product already exists in your cart';
            }else if($user_id != ''){
                $select_price = $conn->prepare("SELECT * FROM `products` WHERE id = ? LIMIT 1");
                $select_price->execute([$product_id]);
                $fetch_price = $select_price->fetch(PDO::FETCH_ASSOC);

                if (!empty($fetch_price) && isset($fetch_price['price'])) {
                    $insert_wishlist = $conn->prepare("INSERT INTO `wishlist` (id, user_id, product_id, price) VALUES (?, ?, ?, ?)");
                    $insert_wishlist->execute([$id, $user_id, $product_id, $fetch_price['price']]);
                    $success_msg[] = 'Product added to your wishlist successfully';
                 }
             }else{
                $warning_msg[] = 'please login first';
             }
    
    }    }     
?>
