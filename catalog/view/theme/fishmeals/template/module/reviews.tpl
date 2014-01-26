<h3><?php echo $heading_title; ?></h3>
<div class="row review-layout">
  <?php foreach ($reviews as $review) { ?>
    <div class="review">
        <div class="image">
            <a href="<?php echo $review['href']; ?>">
                <?php if ($review['thumb']) { ?>
                    <img style="display:inline" src="<?php echo $review['thumb']; ?>" alt="<?php echo $review['product_name']; ?>" title="<?php echo $review['product_name']; ?>" class="img-responsive" />
                <?php } ?>
                <span><?php echo $review['product_name']; ?></span>
            </a>
        </div>
        <span style="word-wrap:break-word;"><?php echo $review['text'] ?></span>
        <div class="rating">
            <?php for($i=0; $i < 5; $i++) { ?>
            <span class="fa fa-stack">
                <?php if ($i < $review['rating']) { ?>
                    <i class="fa fa-star fa-stack-2x"></i>
                <?php } ?>
                <i class="fa fa-star-o fa-stack-2x"></i>
            </span>
            <?php } ?>
        </div>
    </div>
  <?php } ?>
</div>
