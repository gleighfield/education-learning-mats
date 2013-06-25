<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <ul class="box-category">
	<div class="menuSpacer"></div>
      <?php foreach ($categories as $category) { ?>
      <li>
        <?php if ($category['category_id'] == $category_id) { ?>
        <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
        <?php } else { ?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
        <?php if ($category['children']) { ?>
        <ul>
          <?php foreach ($category['children'] as $child) { ?>
          <li>
            <?php if ($child['category_id'] == $child_id) { ?>
            <a href="<?php echo $child['href']; ?>" class="active"> - <?php echo $child['name']; ?></a>
            <?php } else { ?>
            <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?></a>
            <?php } ?>
          </li>
          <?php } ?>
        </ul>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>

	<div class="menuSpacer"></div>
    	<ul class="usps">
		<li>Bright, colourful, inviting, accessible.</li>
		<li>Hands on activities, helping children to learn those tricky basics.</li>
		<li>A useful link between home and school.  Good for revision.</li>
		<li>Re-usable, write on wipe clean learning mats.</li>
    	</ul>
  </div>
</div>
