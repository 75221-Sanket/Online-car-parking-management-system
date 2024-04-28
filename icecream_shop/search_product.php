<?php
    include 'components/connect.php';

    if (isset($_COOKIE['user_id'])) {
        $user_id = $_COOKIE['user_id'];
    }else{
        $user_id = '';
    }

    include 'components/add_wishlist.php';
    include 'components/add_cart.php';


?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>The Creamery House - search products page</title>
    <link rel="stylesheet" type="text/css" href="css/user_style.css">
        <!--font awesome cdn link -->
        <!-- box icon cdn link -->
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <?php include 'components/user_header.php'; ?>
    <div class="banner">
       <div class="detail">
           <h1>search products</h1>
           <p>The pain itself is great, the fatness of the patient will be followed, but it <br>will happen at such a time that some great labor and pain will occur. Over the years, I will come,</p>
            <span> <a href="home.php">home</a> <i class="bx bx-right-arrow-alt"></i>search products</span>
       </div> 
    </div>
    
    <div class="products">
      <div class="heading">
          <h1>search result</h1>
          <img src="image/separator-img1.jpg">
      </div>
      <div class="box-container">
          <?php 
               if (isset($_POST['search_product']) or isset($_POST['search_product_btn'])) {
                  
                  $search_products = $_POST['search_product'];
                  $select_products = $conn->prepare("SELECT * FROM `products` WHERE name LIKE '%{$search_products}%' AND status=?");
                  $select_products->execute(['active']);
                  
                  if ($select_products->rowCount() > 0) {
                     while($fetch_products = $select_products->fetch(PDO::FETCH_ASSOC)){
                        $product_id = $fetch_products['id'];
                 
          ?>
           <form action="" method="post" class="box <?php if($fetch_products['stock'] == 0){echo "disabled";} ?>">

                <img src="uploaded files/<?= $fetch_products['image'];?>" class="image">

                <?php if($fetch_products['stock'] > 9){ ?>
                   <span class="stock" style="color: green;">In stock</span> 
                <?php }elseif($fetch_products['stock'] == 0){ ?>
                    <span class="stock" style="color: red;">out of stock</span> 
                  <?php }else{ ?> 
                    <span class="stock" style="color: red;">hurry, only <?= $fetch_products['stock']; ?></span> 
                  <?php }?>
                  <div class="content">
                      <img src="image/shape-19.png" alt="" class="shap">
                      <div class="button">
                        <div> <h3 class="name"><?= $fetch_products['name']; ?></h3> </div> 
                        <div>
                            <button type="submit" name="add_to_cart"><i class="bx bx-cart"></i></button>
                             <button type="submit" name="add_to_wishlist"><i class="bx bx-heart"></i></button>
                             <a href="view_page.php?pid=<?= $fetch_products['id'] ?>"class="bx bxs-show"></a>
                        </div>
                      </div>
                      <p class="price">price Rs <?= $fetch_products['price']; ?>/-</p>
                      <input type="hidden" name="product_id" value="<?= $fetch_products['id'] ?>">
                      <div class="flex-btn">
                          <a href="checkout.php?get_id=<?= $fetch_products['id'] ?>" class="btn">buy now</a>
                          <input type="number" name="qty" required min="1" value="1" max="99" maxlength="2" class="qty box">
                      </div>
                  </div>
            </form>
          <?php
                     }
                  }else{
                    echo'
                        <div class="empty">
                         <p>no products found</p> 
                        </div>
                    ';
                 }
             }else{
                echo'
                        <div class="empty">
                         <p>please search something else</p> 
                        </div>
                    ';
               }
           ?>
      </div>
 </div>

  <?php include 'components/footer.php'; ?>
       
    <!-- sweetalert cdn link -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  
    <!-- custom js link -->
    <script src="js/user_script.js"></script>
  
   <?php include "components/alert.php";?>

</body>
</html> 