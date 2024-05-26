<style type="text/css">
.home >  .pix_diapo , .da-thumbs{
  width: 100%;
}
 .pix_diapo div  img{
    width: 100%;
    height: 100%;
 }
</style>
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="css/bootstrap-theme.min.css"> -->
<div class="home">

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <?php 
      $mydb->setQuery("SELECT * FROM carousel WHERE carousel_id = 1");
      $cur = $mydb->loadResultList();
      foreach ($cur as $result) { ?>
    <div class="item active">
      <img src="admin/carousel/<?php echo $result->images; ?>">
    </div>
    <?php } ?>
    <?php 
      $mydb->setQuery("SELECT * FROM carousel WHERE carousel_id != 1");
      $cur = $mydb->loadResultList();
      foreach ($cur as $result) { ?>
      <div class="item">
        <img src="admin/carousel/<?php echo $result->images; ?>">
      </div>
    <?php } ?>
  </div>

  <!-- <div class="item">
        <img src="<?php echo web_root;?>image/image2.jpg">
      </div>
      <div class="item">
        <img src="<?php echo web_root;?>image/image3.jpg">
      </div><div class="item">
        <img src="<?php echo web_root;?>image/image4.jpg">
      </div> -->

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon "><b></b></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon"><b></b></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- <div class="pix_diapo">

    <div data-thumb="<?php echo web_root;?>image/image1.jpg">
        <img src="image/image1.jpg">
    </div>

    <div data-thumb="<?php echo web_root;?>image/image2.jpg">
        <img src="<?php echo web_root;?>image/image2.jpg"> 
    </div>

    <div data-thumb="<?php echo web_root;?>image/image3.jpg" data-time="7000">
        <img src="<?php echo web_root;?>image/image3.jpg">
    </div>       

    <div data-thumb="<?php echo web_root;?>image/image4" data-time="7000">
        <img src="<?php echo web_root;?>image/image4.jpg">
    </div>

    <div data-thumb="<?php echo web_root;?>image/image5.jpg" data-time="7000">
        <img src="<?php echo web_root;?>image/image5.jpg">
    </div> 
</div> -->
<!-- #pix_diapo --> 
    
<!-- <ul id="da-thumbs" class="da-thumbs">
    <li class="col-md-3">
        <a href="">
            <img src="images/3.jpg" />
            <div><center><span>Information<br>Technology</span></center></div>
        </a>
    </li>
    <li class="col-md-3">
        <a href="">
            <img src="images/4.jpg" />
            <div><center><span>Business<br>Administration</span></center></div>
        </a>
    </li>
    <li class="col-md-3">
        <a href="">
            <img src="images/5.jpg" />
            <div><center><span>Office<br>Administration</span></center></div>
        </a>
    </li>
    <li class="col-md-3">
        <a href="">
            <img src="images/6.jpg" />
            <div><center><span>Hospitality<br>Management</span></center></div>
        </a>
    </li>
</ul> -->
</div>


