<h3><?php echo $heading_title; ?></h3>
<div class="row product-layout">
  <?php foreach ($products as $product) { ?>
  <div class="col-lg-12 col-md-3 col-sm-6 col-xs-12">
    <div>
      <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
      <div class="caption">
          <a href="<?php echo $product['href']; ?>"><img style="float: left; margin-right: 10px; margin-bottom: 10px;" class="image-tail image-tail-medium" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
          <span class="text-description"><?php echo $product['description']; ?></span>
      </div>
<!--      <div class="button-group">-->
<!--        <button type="button" onclick="addToCart('--><?php //echo $product['product_id']; ?><!--');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md">--><?php //echo $button_cart; ?><!--</span></button>-->
<!--      </div>-->
    </div>
  </div>
  <?php } ?>
</div>
