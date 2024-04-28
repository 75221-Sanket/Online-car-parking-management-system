<?php
    include 'components/connect.php';

    if (isset($_COOKIE['user_id'])) {
   $user_id = $_COOKIE['user_id'];
 }else{
      $user_id = '';
      header('location:login.php');
 }
  if (isset($_POST['submit'])) {
      

      $select_user = $conn->prepare("SELECT * FROM `users` WHERE id = ? LIMIT 1");
      $select_user->execute([$user_id]);
      $fetch_user = $select_user->fetch(PDO::FETCH_ASSOC);

      $prev_pass = $fetch_user['password'];
      $prev_image = $fetch_user['image'];

      $name = $_POST['name'];
      $name = filter_var($name, FILTER_SANITIZE_STRING);

      $email= $_POST['email'];
      $email = filter_var($email, FILTER_SANITIZE_STRING);

     //update name
      if (!empty($name)) {
          $update_name = $conn->prepare("UPDATE `users` SET name = ? WHERE id = ?");
          $update_name->execute([$name, $user_id]);
          $success_msg[] = 'username updated succesfully';
      }

      //update email 
      if (!empty($email)) {
          $select_email = $conn->prepare("SELECT * FROM `users` WHERE id = ? AND email = ?");
          $select_email->execute([$user_id, $email]);

       if ($select_email->rowCount() > 0) {
           $warning_msg[] = 'email already exist';
       }else{
             $update_email = $conn->prepare("UPDATE `users` SET email = ? WHERE id = ?");
             $update_email->execute([$email, $user_id]);
             $success_msg[] = 'email updated succesfully';
       }
    }
      
    //update image 

    $image = $_FILES['image']['name'];
    $image = filter_var($image, FILTER_SANITIZE_STRING);
    $ext = pathinfo($image, PATHINFO_EXTENSION);
    $rename = unique_id().'.'.$ext;   
    $image_size = $_FILES['image']['size'];
    $image_tmp_name = $_FILES['image']['tmp_name'];
    $image_folder = '../uploaded files/' .$rename;

    if (!empty($image)) {
       if ($image_size > 2000000) {
          $warning_msg[] = 'image size is too large';
       }else{
        $update_image = $conn->prepare("UPDATE `users` SET image = ? WHERE id = ?");
        $update_image->execute([$rename, $user_id]);
        move_uploaded_file($image_tmp_name, $image_folder);

         if ($prev_image != '' AND $prev_image != $rename) {
             unlink('uploaded files/' .$prev_image);
         }
         $success_msg[] = 'image updated succesfully';
       }
    }
      
  //update password

    $empty_pass = 'da39a3ee5e6b4b8d3255bfef95601890afd80709';

    $old_pass = sha1($_POST['old_pass']);
    $old_pass = filter_var($old_pass, FILTER_SANITIZE_STRING);

    $new_pass = sha1($_POST['new_pass']);
    $new_pass = filter_var($new_pass, FILTER_SANITIZE_STRING);

    $cpass = sha1($_POST['cpass']);
    $cpass = filter_var($cpass, FILTER_SANITIZE_STRING);

    if ($old_pass != $empty_pass) {
        if ($old_pass != $prev_pass) {
            $warning_msg[] = 'old password not matched';
        }elseif($new_pass != $cpass ) {
           $warning_msg[] = 'password not matched!';
        }else{
            if ($new_pass != $empty_pass) {
                $update_pass = $conn->prepare("UPDATE `users` SET password = ? WHERE id = ?");
                $update_pass->execute([$cpass, $user_id]);
                $success_msg[] = 'password updated succesfully';
            }else{
                $warning_msg[] = 'please enter a new password';
            }
        }
        
    }

  }

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>The Creamery House - update profile login page</title>
    <link rel="stylesheet" type="text/css" href="css/user_style.css">
        <!--font awesome cdn link -->
        <!-- box icon cdn link -->
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <?php include 'components/user_header.php'; ?>
    <div class="banner">
       <div class="detail">
           <h1>update profile</h1>
           <p>The pain itself is great, the fatness of the patient will be followed, but it <br>will happen at such a time that some great labor and pain will occur. Over the years, I will come,</p>
            <span> <a href="home.php">home</a> <i class="bx bx-right-arrow-alt"></i>update profile</span>
       </div> 
    </div>

      <section class="form-container">
           <div class="heading">
               <h1>update profile details</h1>
              <img src="image/separator-img1.jpg">
            
             <form action="" method="post" enctype="multipart/form-data" class="register">
                <div class="img-box">
                   <img src="uploaded files/<?= $fetch_profile['image']; ?>">
               </div>
                  <div class="flex">
                     <div class="col">
                        <div class="input-field">
                            <p>your name<span>*</span></p>
                            <input type="text" name="name" placeholder="<?= $fetch_profile['name']; ?>" class="box">
                        </div>
                         <div class="input-field">
                            <p>your email<span>*</span></p>
                            <input type="email" name="email" placeholder="<?= $fetch_profile['email']; ?>" class="box">
                        </div>
                           <div class="input-field">
                            <p>select pic<span>*</span></p>
                            <input type="file" name="image" accept="image/*" class="box">
                        </div> 
                    </div> 
                     <div class="col">
                           <div class="input-field">
                            <p>old password<span>*</span></p>
                            <input type="password" name="old_pass" placeholder="enter your old password" class="box">
                        </div>
                         <div class="input-field">
                            <p>new password<span>*</span></p>
                            <input type="password" name="new_pass" placeholder="enter your new password" class="box">
                        </div>
                           <div class="input-field">
                            <p>confirm password<span>*</span></p>
                            <input type="password" name="cpass" placeholder="confirm your password" class="box">
                        </div>
                     </div>      
                 </div>
                 <input type="submit" name="submit" value="update now" class="btn">
             </form>
       </div>
</section>
 



  <?php include 'components/footer.php'; ?>
       
    <!-- sweetalert cdn link -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  
    <!-- custom js link -->
    <script src="js/user_script.js"></script>
  
   <?php include "components/alert.php";?>

</body>
</html> 