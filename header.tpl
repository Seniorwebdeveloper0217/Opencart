<?php
$kuler = Kuler::getInstance();
var_dump($kuler);
$kuler->language->load('kuler/maven');
$theme = $kuler->getTheme();

$kuler->addStyle(array(
  "catalog/view/theme/$theme/stylesheet/bootstrap.min.css",
  "catalog/view/theme/$theme/stylesheet/_grid.css",
  "catalog/view/theme/$theme/stylesheet/stylesheet.css",
  "catalog/view/theme/$theme/stylesheet/animate.min.css",
  "catalog/view/theme/$theme/stylesheet/animsition.min.css",
  "catalog/view/theme/$theme/stylesheet/jquery.mCustomScrollbar.min.css",
  "catalog/view/javascript/font-awesome/css/font-awesome.min.css",
));

$kuler->addScript(array(
  'catalog/view/javascript/jquery/jquery-2.1.1.min.js',
  'catalog/view/javascript/bootstrap/js/bootstrap.min.js',
  'catalog/view/javascript/common.js',
  "catalog/view/theme/$theme/js/lib/jquery.magnific-popup.min.js",
  "catalog/view/theme/$theme/js/lib/main.js",
  "catalog/view/theme/$theme/js/lib/wow.min.js",
  "catalog/view/theme/$theme/js/lib/jquery.animsition.min.js",
  "catalog/view/theme/$theme/js/lib/headroom.min.js",
  "catalog/view/theme/$theme/js/lib/jQuery.headroom.min.js",
  "catalog/view/theme/$theme/js/utils.js"
));

$kuler->addScript('catalog/view/theme/' . $theme . '/js/lib/jquery.mCustomScrollbar.concat.min.js', true);
$kuler->addScript('catalog/view/theme/' . $theme . '/js/lib/owl.carousel.min.js', true);
?>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content= "<?php echo $keywords; ?>" />
  <?php } ?>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <?php if ($icon) { ?>
  <link href="<?php echo $icon; ?>" rel="icon" />
  <?php } ?>
  <?php foreach ($links as $link) { ?>
  <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <!-- {STYLES} -->
  <!-- {SCRIPTS} -->
  <?php echo $google_analytics; ?>
  <?php if($direction == "rtl") { ?>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $theme ?>/stylesheet/rtl.css" media="screen">
  <?php } ?>
</head>
<body class="<?php echo $class; ?> <?php echo $kuler->getBodyClass(); ?>">
<div id="notification"></div><!--/#notificaton-->

<div id="wrapper">
  <?php
    $modules = $kuler->getModules('header_top');
    if ($modules) {
      echo implode('', $modules);
    }
  ?>

<?php if ($kuler->getRootSkin() == 'skin1') { ?>
<?php include(DIR_TEMPLATE . $kuler->getTheme() . '/template/common/_header_skin1.tpl'); ?>
<?php } elseif ($kuler->getRootSkin() == 'skin2'){ ?>
<?php include(DIR_TEMPLATE . $kuler->getTheme() . '/template/common/_header_skin2.tpl'); ?>
<?php } elseif ($kuler->getRootSkin() == 'skin3'){ ?>
<?php include(DIR_TEMPLATE . $kuler->getTheme() . '/template/common/_header_skin3.tpl'); ?>
<?php } ?>

<div class="kl-main-content">
  <?php
    $modules = $kuler->getModules('promotion');
    if ($modules) {
      echo implode('', $modules);
    }
  ?>