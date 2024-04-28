<?php
    include 'components/connect.php';

    if (isset($_COOKIE['user_id'])) {
        $user_id = $_COOKIE['user_id'];
    }else{
        $user_id = '';
    }


?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>The Creamery House - about us page</title>
	<link rel="stylesheet" type="text/css" href="css/user_style.css">
		<!--font awesome cdn link -->
        <!-- box icon cdn link -->
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <?php include 'components/user_header.php'; ?>
    <div class="banner">
       <div class="detail">
           <h1>about us</h1>
           <p>The pain itself is great, the fatness of the patient will be followed, but it <br>will happen at such a time that some great labor and pain will occur. Over the years, I will come,</p>
           <span> <a href="home.php">home</a> <i class="bx bx-right-arrow-alt"></i>about us </span>
       </div> 
    </div>
    <div class="chef">
        <div class="box-container">
          <div class="box">
              <div class="heading">
                <span>Alex Doe</span>
                <h1>Masterchef</h1>
                <img src="image/separator-img1.jpg">  
              </div>
              <p>Maria is a Roman-born pastry chef who spent 15years in his city Rome perfecting his craft and expcetional creations.</p>
              <div class="flex-btn">
                  <a href="" class="btn">explore our menu</a>
                  <a href="menu.php" class="btn">visit our shop</a>
              </div>
          </div> 
          <div class="box">
              <img src="image/ceaf.png" class="img">
           </div> 
        </div>
    </div>
    <!-- cheaf section start -->
    <div class="story">
      <div class="heading">
        <h1>our story</h1> 
        <img src="image/separator-img1.jpg"></div>  
      <p>The customer is very important, the customer will be followed by the customer. <br> It's important to wear and tear the kids.no airline<br> There is no ferry, hate that facilites proteins</p>
      <a href="menu.php" class="btn">our services</a>
    </div>
    <!-- story section start -->
      <div class="container">
          <div class="box-container">
              <div class="img-box">
                  <img src="image/about.png">
              </div>
              <div class="box">
                <div class="heading">
                    <h1>Taking Ice Cream To New Heights</h1>
                    <img src="image/separator-img1.jpg">
                </div> 
                <p>The customer is very important, the customer will be followed by the customer.It's important to wear and tear the kids.</p>  
                <a href=" " class="btn">learn more</a>
              </div>
          </div>

      </div>
    <!-- story section start -->
         <div class="team">
             <div class="heading">
                <span>our team</span>
                <h1>Quality & passion with our services</h1>
                <img src="image/separator-img1.jpg">
             </div> 
             <div class="box-container">
               <div class="box">
                   <img src="image/team-1.jpg" class="img">
                   <div class="content">
                       <img src="image/shape-19.png" alt="" class="shap">
                       <h2>Ralph Johnson</h2>
                       <p>Coffee Chef</p>
                   </div>
               </div>  
               <div class="box">
                   <img src="image/team-2.jpg" class="img">
                   <div class="content">
                       <img src="image/shape-19.png" alt="" class="shap">
                       <h2>selena Johnson</h2>
                       <p>pastry Chef</p>
                   </div>
               </div>  
               <div class="box">
                   <img src="image/team-3.jpg" class="img">
                   <div class="content">
                       <img src="image/shape-19.png" alt="" class="shap">
                       <h2>Tom Knelltonns</h2>
                       <p>Coffee Chef</p>
                   </div>
               </div>  
           </div>
       </div>
       <!-- team section end -->
        <div class="standers">
            <div class="detail">
           <div class="heading">
              <h1>our standerts</h1> 
              <img src="image/separator-img1.jpg">
           </div> 
           <p>It is important to know that the customer is the customer, and it will be possible to suspend the customer service</p>
           <i class="bx bxs-heart"></i>
           <p>It is important to know that the customer is the customer, and it will be possible to suspend the customer service</p>
           <i class="bx bxs-heart"></i>
           <p>It is important to know that the customer is the customer, and it will be possible to suspend the customer service</p>
           <i class="bx bxs-heart"></i>
           <p>It is important to know that the customer is the customer, and it will be possible to suspend the customer service</p>
           <i class="bx bxs-heart"></i>
           <p>It is important to know that the customer is the customer, and it will be possible to suspend the customer service</p>
           <i class="bx bxs-heart"></i>
         </div>
     </div> 
        <!-- standers section end -->
        <div class="testimonial">
            <div class="heading">
              <h1>testimonial</h1> 
              <img src="image/separator-img1.jpg">
           </div>
           <div class="testimonial-container">
               <div class="slide-row" id="slide">
                <div class="slide-col">
                    <div class="user-text">
                        <p>Zen doan is a business analyst, entrepreneur and media owner, and investor. She also known as the best selling book responsible.</p>
                        <h2>Zen</h2>
                        <p>resposible</p>
                    </div>
                    <div class="user-img">
                        <img src="image/testimonial (1).jpg">
                    </div>
                </div>   
                 <div class="slide-col">
                    <div class="user-text">
                        <p>Zen doan is a business analyst, entrepreneur and media owner, and investor. She also known as the best selling book responsible.</p>
                        <h2>Zen</h2>
                        <p>resposible</p>
                    </div>
                    <div class="user-img">
                        <img src="image/testimonial (2).jpg">
                    </div>
                </div> 
                 <div class="slide-col">
                    <div class="user-text">
                        <p>Zen doan is a business analyst, entrepreneur and media owner, and investor. She also known as the best selling book responsible.</p>
                        <h2>Zen</h2>
                        <p>resposible</p>
                    </div>
                    <div class="user-img">
                        <img src="image/testimonial (3).jpg">
                    </div>
                </div> 
                 <div class="slide-col">
                    <div class="user-text">
                        <p>Zen doan is a business analyst, entrepreneur and media owner, and investor. She also known as the best selling book responsible.</p>
                        <h2>Zen</h2>
                        <p>resposible</p>
                    </div>
                    <div class="user-img">
                        <img src="image/testimonial (4).jpg">
                    </div>
                </div>       
              </div>
          </div>
          <div class="indicator">
              <span class="btn1 active"></span>
              <span class="btn1"></span>
              <span class="btn1"></span>
              <span class="btn1"></span>
          </div>
      </div>
       <!-- testimonial section end -->
       <div class="mission">
         <div class="box-container">
            <div class="box">
                <div class="heading">
                  <h1>our mission</h1>
                 <img src="image/separator-img1.jpg"> 
             </div> 
             <div class="detail">
                  <div class="img-box">
                    <img src="image/mission.webp">
                 </div>
                 <div>
                     <h2>mexicon chocolate</h2>
                     <p>Layers of shaped marshmallow candies-buneis,chicks, and simple flowers-make a memorable gift in a beribboned box</p>
                 </div>
             </div>
             <div class="detail">
                  <div class="img-box">
                    <img src="image/mission1.webp">
                 </div>
                 <div>
                     <h2>vanilla with honey</h2>
                     <p>Layers of shaped marshmallow candies-buneis,chicks, and simple flowers-make a memorable gift in a beribboned box</p>
                 </div>
             </div>
             <div class="detail">
                  <div class="img-box">
                    <img src="image/mission0.jpg">
                 </div>
                 <div>
                     <h2>pappermint chip</h2>
                     <p>Layers of shaped marshmallow candies-buneis,chicks, and simple flowers-make a memorable gift in a beribboned box</p>
                 </div>
             </div>
             <div class="detail">
                  <div class="img-box">
                    <img src="image/mission2.webp">
                 </div>
                 <div>
                     <h2>raspberry sorbat</h2>
                     <p>Layers of shaped marshmallow candies-buneis,chicks, and simple flowers-make a memorable gift in a beribboned box</p>
                 </div>
             </div> 
           </div>
             <div class="box">
                <img src="image/form.png" alt="" class="img"> 
             </div>
        </div>   
     </div>
        <!-- mission section end -->


      <?php include 'components/footer.php'; ?>
       <script src="js/user_script.js"></script>
</body>
</html>	