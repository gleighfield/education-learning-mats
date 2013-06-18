<div class="fpSearch">
   <h2>Find your perfect mat...</h2>
  <div id="sidebarsearch">
    <!-- Basic search box -->
    <input type="text" name="sidebarsearch_name" value="" placeholder="Search..." />
	 <!-- Advanced Options -->
	 <?php if($options == 1){ ?>
	 <div id="dropdown-categories" style="padding: 10px 0 5px;">
		<select name="filter_category_id">
        <option value="0"><?php echo $text_categorytop; ?></option>
        <?php foreach ($categories as $category_1) { ?>
        <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
        <?php } ?>
      </select>
	  </div>
	  <div id="checkbox-subcategories">
		<input type="checkbox" name="filter_sub_category" value="1" id="sub_category" />
		<label for="sub_category"><?php echo $text_subsYN; ?></label>
	  </div>
	  <div id="checkbox-description">
		<input type="checkbox" name="filter_description" value="1" id="description" />
		<label for="description"><?php echo $text_descripYN; ?></label>
	</div>
	<?php } ?>
      <span class="findIt"></span>
  </div>
</div>