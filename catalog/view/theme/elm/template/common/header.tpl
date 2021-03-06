<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } else { ?>
<meta name="description" content="Learning mats are all about helping children to master those tricky basics and cover a range of subjects, including English, Maths, Times Tables and basic French" />
<?php
} if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } else { ?>
<meta name="keywords" content="educational learning mats, elmats, learning mat , learning mats , early learning Math, early keystage learning, keystage learning , Early Learning , Direct Teaching , Home school, Discover elmats , home teaching ideas , number mats , learning to write , loving to learn ,  early learning mats , primary school tools , primary school resources , primary classroom resources ,  show me mats,  abc write on mats , learning french mats , lets learn numbers , learning basic french , lets learn letters , lets learn , times table learning mats , writing letters mats , learning to write letters , learn top write numbers , learn times table mats , safe for kids mats , left hand alphabet , left hand numbers" />
<?php
} if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>

<!-- FBOG /-->
<meta property="og:title" content="<?php echo $title; ?>"/>
<meta property="og:type" content="website"/>
<meta property="og:url" content="http://<?php echo $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"]; ?>"/>
<meta property="og:site_name" content="Educational Learning Mats"/>
<meta property="fb:admins" content="627245220"/>
<?php if ($description) { ?>
<meta property="og:description" content="<?php echo $description; ?>"/>
<?php } else { ?>
<meta property="og:description" content="Learning mats are all about helping children to master those tricky basics and cover a range of subjects, including English, Maths, Times Tables and basic French"/>
<?php } ?>
<meta property="og:image" content="<?php echo $base; ?>image/fbog.png"/>

<link href='https://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
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
                <a href="">
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
                    <a href="<?php echo $shopping_cart; ?>" style="padding:0 20px 0 15px;">Your Basket</a>
                    <a href="<?php echo $register; ?>">Create a free account today!</a>
                </div>
                <a class="login" href="<?php echo $account; ?>"></a>
                <?php } else { ?>
                <div class="links loggedInLinks">
                    <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
                    <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                    <a href="<?php echo $shopping_cart; ?>">Your Basket</a>
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
                    <a href="">Home</a>
                </li>
                <li>
                    <a href="about">About us</a>
                </li>
                <li class="ourProducts"><span>Our Products</span>
                    <div id="ourProductsMenu">
                        <a href="all_products">All Our Products</a>
                        <a href="handwriting_mats">Handwriting</a>
                        <a href="french_mats">French</a>
                        <a href="maths_mats">Maths</a>
                        <a href="ks1">Key Stage 1</a>
                        <a href="ks2">Key Stage 2</a>
                        <a href="ks3">Key Stage 3</a>
                    </div>
                </li>
                <li>
                    <a href="trade">Trade Enquiries & Schools</a>
                </li>
                <li class="phone">
                    <span>07442 504273</span>
                </li>
                <li>
                    <a href="contact">info@elmats.com</a>
                </li>
            </ul>

        </div>
<?php
    $homepage = "/";
    $currentpage = $_SERVER['REQUEST_URI'];
    if($homepage==$currentpage) {

?>

        <h1 class="headerTitle">Write On, Wipe Clean Learning Mats</h1>
        <div id="menu">
            <ul>
                <li>
                    <span>Foundation Stage</span>
                </li>
                <li>
                    <a href="ks1">Key Stage 1</a>
                </li>
                <li>
                    <a href="ks2">Key Stage 2</a>
                </li>
                <li>
                    <a href="ks3">Key Stage 3</a>
                </li>
            </ul>
        </div>

<?php } else { ?>
        <div id="paperClipSpacer"></div>
<?php }
}
?>
        <div id="notification"></div>
