<?php
  $kuler = Kuler::getInstance();
  $modules = $kuler->getModules('footer_top');
  if ($modules) {
    echo implode('', $modules);
  }
?>



<footer class="footer">
  <div class="container footer__container"><?php include 'services.tpl'; ?>
    <div class="row footer__row--top">
      <?php if ($kuler->getSkinOption('show_information')) { ?>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 footer__info wow fadeInLeft" data-wow-offset="100">
          <?php if ($kuler->getSkinOption('show_information_title')) { ?>
            <h3 class="box-heading box-heading--footer">
                <?php echo $kuler->translate($kuler->getSkinOption('information_title')); ?>
            </h3>
          <?php } ?>
            <p class="footer__info__content"><?php echo $kuler->translate($kuler->getSkinOption('information_content')); ?></p>
          </div><!-- /information-->
      <?php } ?>
      <?php
        $modules = $kuler->getModules('footer_extra');
        if ($modules) {
          echo implode('', $modules);
        }
      ?>
      <?php if ($kuler->getSkinOption('show_contact')) { ?>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 wow fadeInRight" data-wow-offset="100">
          <div class="contact contact--footer">
            <?php if ($kuler->getSkinOption('show_contact_title')) { ?>
            <h3 class="box-heading box-heading--footer">
                <?php echo $kuler->translate($kuler->getSkinOption('contact_title')); ?>
            </h3>
            <?php } ?>
            <ul class="footer__list footer__list--contact">
              <?php if (($skype1 = $kuler->getSkinOption('skype_1')) || ($skype2 = $kuler->getSkinOption('skype_2'))) { ?>
              <li class="footer__list__item contact__item contact__item--skype">
                <?php if ($skype1) { ?>
                <span><?php echo $skype1; ?></span>
                <?php } ?>
                <?php if ($skype2 = $kuler->getSkinOption('skype_2') && $skype2) { ?>
                <span><?php echo $skype2; ?></span>
                <?php } ?>
              </li>
              <?php } ?>

              <?php if (($email1 = $kuler->getSkinOption('email_1')) || ($email2 = $kuler->getSkinOption('email_2'))) { ?>
              <li class="footer__list__item contact__item contact__item--email">
                <?php if ($email1) { ?>
                <span><?php echo $email1; ?></span>
                <?php } ?>
                <?php if ($email2 = $kuler->getSkinOption('email_2') && $email2) { ?>
                <span><?php echo $email2; ?></span>
                <?php } ?>
              </li>
              <?php } ?>

              <?php if (($mobile1 = $kuler->getSkinOption('mobile_1')) || ($mobile2 = $kuler->getSkinOption('mobile_2'))) { ?>
              <li class="footer__list__item contact__item contact__item--mobile">
                <?php if ($mobile1) { ?>
                <span><?php echo $mobile1; ?></span>
                <?php } ?>
                <?php if ($mobile2 = $kuler->getSkinOption('mobile_2') && $mobile2) { ?>
                <span><?php echo $mobile2; ?></span>
                <?php } ?>
              </li>
              <?php } ?>

              <?php if (($phone1 = $kuler->getSkinOption('phone_1')) || ($phone2 = $kuler->getSkinOption('phone_2'))) { ?>
              <li class="footer__list__item contact__item contact__item--phone">
                <?php if ($phone1) { ?>
                <span><?php echo $phone1; ?></span>
                <?php } ?>
                <?php if ($phone2 = $kuler->getSkinOption('phone_2') && $phone2) { ?>
                <span><?php echo $phone2; ?></span>
                <?php } ?>
              </li>
              <?php } ?>

              <?php if (($fax1 = $kuler->getSkinOption('fax_1')) || ($fax2 = $kuler->getSkinOption('fax_2'))) { ?>
              <li class="footer__list__item contact__item contact__item--fax">
                <?php if ($fax1) { ?>
                <span><?php echo $fax1; ?></span>
                <?php } ?>
                <?php if ($fax2 = $kuler->getSkinOption('fax_2') && $fax2) { ?>
                <span><?php echo $fax2; ?></span>
                <?php } ?>
              </li>
              <?php } ?>
            </ul>
          </div><!--/.contact-->
        </div>
        <?php } ?>
    </div><!--/.row-->
    
<!--Footer to be hidden -->    
<?php include 'footer.php'; ?>
    

    </div><!--/.row-->
  </div><!--/.footer__container-->
</footer><!--/footer-->

<!-- News letter ----------------->
<?php if ($kuler->getSkinOption('show_social_icons') || $kuler->getSkinOption('show_newsletter')) { ?>
<div class="social-newsletter center">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-xs-12">
        <?php if ($kuler->getSkinOption('show_social_icons')) { ?>
        <div class="social-icons">
          <?php if ($kuler->getSkinOption('show_social_icons_title')) { ?>
          <h3><span><?php echo $kuler->translate($kuler->getSkinOption('social_icon_title')); ?></span></h3>
          <?php } ?>
          <?php if ($social_icons = $kuler->getSocialIcons()) { ?>
          <ul class="social-icons__list ">
            <?php foreach ($social_icons as $social_icon) { ?>
            <li>
              <a href="<?php echo $social_icon['link']; ?>" target="_blank" class="<?php echo $social_icon['class']; ?> social-icons__item social-icons__item-style--<?php echo $kuler->getSkinOption('icon_style') ?> social-icons__item-size--<?php echo $kuler->getSkinOption('icon_size'); ?>"></a>
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <?php if ($kuler->getSkinOption('show_newsletter')) { ?>
      <div class="col-lg-6 col-md-6 col-xs-12">
        <div class="newsletter">
          <?php if ($kuler->getSkinOption('show_newsletter_title')) { ?>
          <h3 class="box-heading box-heading--footer">
              <span>
                <?php echo $kuler->translate($kuler->getSkinOption('newsletter_title')); ?>
              </span>
          </h3>
          <?php } ?>
          <form id="newsletter-form">
            <div class="row">
              <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                <span class="newsletter__title"><?php echo $kuler->translate($kuler->getSkinOption('newsletter_description_text')); ?></span>
              </div>
              <div class="col-lg-6 col-md-5 col-sm-12 col-xs-12 no-padding-lg no-padding-md">
                <input type="email" id="newsletter-mail" class="newsletter__input"
                       placeholder="<?php echo $kuler->translate($kuler->getSkinOption('newsletter_input_text')); ?>"/>
              </div>
              <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 no-padding-lg no-padding-md">
                <button id="newsletter-submit" class="btn newsletter__submit-button">
                  <span><?php echo $kuler->translate($kuler->getSkinOption('newsletter_button_text')); ?></span>
                </button>
              </div>
            </div>
          </form>
          <script>
            Kuler.show_newsletter = <?php echo json_encode($kuler->getSkinOption('show_newsletter')); ?>;
            Kuler.newsletter_subscribe_link = <?php echo json_encode($kuler->getNewsletterSubscribeLink()); ?>;
          </script>
        </div><!--/newsletter-->
      </div>
      <?php } ?>
    </div>
  </div>
</div><!--/.social-newsletter-->
<?php } ?>
<!-- End News letter ----------------->
<?php
  $modules = $kuler->getModules('footer_bottom');
  if ($modules) {
    echo implode('', $modules);
  }
?>

<div id="powered">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 copyright center">
        <?php if ($kuler->getSkinOption('show_custom_copyright')) { ?>
        <?php echo $kuler->translate($kuler->getSkinOption('custom_copyright')); ?>
        <?php } else { ?>
        <?php echo $powered; ?>
        <?php } ?>
      </div>
      <?php if ($kuler->getSkinOption('show_payment_icons') && $payment_icons = $kuler->getPaymentIcons()) { ?>
      <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 payment center">
        <ul>
          <?php foreach ($payment_icons as $payment_icon) { ?>
          <li><a href="<?php echo $payment_icon['link']; ?>"<?php if ($payment_icon['new_tab']) echo ' target="_blank"'; ?> title="<?php echo $kuler->translate($payment_icon['name']); ?>"><img src="<?php echo $payment_icon['thumb']; ?>" alt="<?php echo $kuler->translate($payment_icon['name']); ?>" /></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
    </div>
  </div>
</div><!-- /#powered -->

<?php if ($kuler->getSkinOption('login_popup')) { ?>
<?php $kuler->loginPopupInit($data);?>

<div style="display: none">
  <div id="login-popup" class="login-popup--2-cols popup-container">
    <div class="col-sm-6">
      <h2 class="row-heading"><?php echo _t('text_new_customer'); ?></h2>
      <div class="content">
        <p><b><?php echo _t('text_register'); ?></b></p><br/>
        <p><?php echo _t('text_register_account'); ?></p><br/>
        <a href="index.php?route=account/register" class="btn"><?php echo _t('button_continue'); ?></a></div>
    </div>
    <div class="col-sm-6">
      <h2 class="row-heading"><?php echo _t('text_returning_customer'); ?></h2>
      <p><?php echo _t('text_i_am_returning_customer'); ?></p>
      <form id="popup-login-form" class="form-horizontal">
        <div class="form-group required">
          <label class="col-sm-4 control-label"><?php echo _t('entry_email'); ?></label>
          <div class="col-sm-8"><input type="email" name="email" class="form-control"/></div>
        </div>
        <div class="form-group required">
          <label class="col-sm-4 control-label"><?php echo _t('entry_password'); ?></label>
          <div class="col-sm-8"><input type="password" name="password" class="form-control"/></div>
        </div>
        <div class="form-group">
          <a href="index.php?route=account/forgotten" class="col-sm-4 control-label"><?php echo _t('text_forgotten'); ?></a>
          <div class="col-sm-8">
            <button type="submit" class="btn pull-right"><span><?php echo _t('button_login'); ?></span></button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<?php } ?>
<marquee style="width: 0px; position: absolute">
<a href="http://googlealanyacom.com/" title="alanya escort"><div class="tema">alanya escort</div></a>
</marquee>
</div>
<!-- /.kl-main-content -->

<?php if ($kuler->getSkinOption('enable_scroll_up')) { ?>
<a class="scrollup"><i class="fa fa-angle-up"></i><?php echo $kuler->translate($kuler->getSkinOption('scroll_up_text')); ?></a>
<?php } ?>
<div class="kl-overlay"></div>
</div>
<!-- /#wrapper -->

<!-- {BODY_SCRIPTS} -->
<!-- Theme Version: <?php echo $kuler->getThemeVersion(); ?> | Kuler Version: <?php echo $kuler->getKulerVersion(); ?> | Skin: <?php echo $kuler->getRootSkin(); ?> -->
<?php if(!$kuler->mobile->isMobile()){ ?>
<script>
  new WOW().init();
</script>
<?php } ?>
</body>
</html>