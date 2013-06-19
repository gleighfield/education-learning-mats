<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/elm/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/elm/stylesheet/jquery.bxslider.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
    <div id="container">
        <div id="header">
        <?php if ($logo) { ?>
            <div id="logo">
                <a href="<?php echo $home; ?>">
                    <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
                </a>
            </div>
        <?php } ?>

            <div id="searchandbasket">
                <div id="search">
                    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
                </div>
                <?php echo $cart; ?>
                <?php if (!$logged) { ?>
                <div class="links">
                    <a href="<?php echo $register; ?>" style="padding:1px 25px 0;">Create a free account with Education Learning Mats today!</a>
                </div>
                <a class="login" href="<?php echo $account; ?>"></a>
                <?php } else { ?>
                <div class="links loggedInLinks">
                    <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
                    <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                    <a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
                </div>
                <a class="logout" href="<?php echo $logout; ?>"></a>
                <?php } ?>
            </div>
         </div>
<?php
        if ($categories) { ?>
        <div id="topSubMenu">
            <ul>
                <li>
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#">About us</a>
                </li>
                <li>
                    <a href="#">Our Products</a>
                </li>
                <li>
                    <a href="#">Trade Enquiries & Schools</a>
                </li>
                <li>
                    <span>01793 888888</span>
                </li>
                <li>
                    <a href="mailto:info@elmats.com">info@elmats.com</a>
                </li>
            </ul>

        </div>
<?php
    $homepage = "/store/";
    $currentpage = $_SERVER['REQUEST_URI'];
    if($homepage==$currentpage) {

?>

        <h1 class="headerTitle">Write On, Wipe Clean Learning Mats</h1>
        <div id="menu">
            <ul>
    <?php foreach ($categories as $category) { ?>
                <li>
                        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                </li>
    <?php } ?>
            </ul>
        </div>


<?php } else { ?>
        <div id="paperClipSpacer"></div>
<?php }
}
?>
        <div id="notification"></div>
