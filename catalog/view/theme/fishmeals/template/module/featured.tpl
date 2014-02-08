<div class="module module-featured">
    <h3><?php echo $heading_title; ?></h3>
    <div class="row product-layout">
      <?php foreach ($products as $product) { ?>
      <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12">
        <div class="product-thumb transition">
          <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
        </div>
      </div>
      <?php } ?>
    </div>
</div>