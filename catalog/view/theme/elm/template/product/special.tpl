<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($products) { ?>
  <div class="product-filter">
    <div class="display">
        <b><?php echo $text_display; ?></b> <a onclick="display('list');"><?php echo $text_list; ?></a> <b>/</b><?php echo $text_grid; ?>
    </div>
    <div class="limit"><?php echo $text_limit; ?>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="sort"><?php echo $text_sort; ?>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
    <div id="allProductsContent">
        <p>Write On, Wipe Clean Learning Mats have been designed by teachers to help reinforce key learning objectives in line with the National Curriculum. The full range is suitable for children aged from 3 to 13, covering Early Years up to Key Stage 3.</p>
        <ul>
            <li>Designed by teachers and tested in schools</li>
            <li>Wipe clean so can be reused many times</li>
            <li>Available in A3 and A4 sizes, with rounded corners for extra safety</li>
            <li>Light and portable, they fit easily in a book bag – ideal for travelling</li>
            <li>Developed, designed and manufactured in the UK</li>
            <li>Printed on FSC-certified card using eco-friendly vegetable inks.</li>
        </ul>
    </div>
    <div class="product-grid <?php echo $catType; ?>">
        <?php foreach ($products as $product) {

        $ks = 'ksLvl_' . $product['attribute'][0]['attribute'][0]['text'];
        $subject = 'ksSubject_' . $product['attribute'][0]['attribute'][1]['text'];
        $suitable = $product['attribute'][0]['attribute'][2]['text'];

    ?>
        <div class="ksimage <?php echo $ks; ?> <?php echo $subject; ?>">
            <?php if ($product['thumb']) { ?>
            <div class="image">
                <a href="<?php echo $product['href']; ?>">
                    <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
                </a>
            </div>
            <?php } ?>

            <div class="name">
                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            </div>

            <?php if ($product['price']) { ?>
            <div class="price">
                <div class="suitable"><?php echo $suitable; ?></div>
                <?php if (!$product['special']) { ?>
                <strong>Starting from:</strong> <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php } ?>
            </div>
            <?php } ?>
            <?php if ($product['rating']) { ?>
            <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
            <?php } ?>

            <div class="cart">
                <a class="seeMore" href="<?php echo $product['href']; ?>">See more</a>
            </div>
        </div>
        <?php } ?>
    </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php }?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list <?php echo $catType; ?>');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';
						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid <?php echo $catType; ?>');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
						
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 
<?php echo $footer; ?>