<div id="masthead" style="display: none;"> class="header-main <?php header_inner_class('main'); ?>">
      <div class="header-inner flex-row container <?php flatsome_logo_position(); ?>" role="navigation">

          <!-- Logo -->
          <div id="logo" class="flex-col logo">
            <?php get_template_part('template-parts/header/partials/element','logo'); ?>
          </div>

          <!-- Mobile Left Elements -->
          <div class="flex-col show-for-medium flex-left">
            <ul class="mobile-nav nav nav-left <?php flatsome_nav_classes('main-mobile'); ?>">
              <?php flatsome_header_elements('header_mobile_elements_left','mobile'); ?>
            </ul>
          </div>

          <!-- Left Elements -->
          <div class="flex-col hide-for-medium flex-left
            <?php if(get_theme_mod('logo_position', 'left') == 'left') echo 'flex-grow'; ?>">
            <ul class="header-nav header-nav-main nav nav-left <?php flatsome_nav_classes('main'); ?>" >
              <?php flatsome_header_elements('header_elements_left'); ?>
            </ul>
          </div>

          <!-- Right Elements -->
          <div class="flex-col hide-for-medium flex-right">
            <ul class="header-nav header-nav-main nav nav-right <?php flatsome_nav_classes('main'); ?>">
              <?php flatsome_header_elements('header_elements_right'); ?>
            </ul>
          </div>

          <!-- Mobile Right Elements -->
          <div class="flex-col show-for-medium flex-right">
            <ul class="mobile-nav nav nav-right <?php flatsome_nav_classes('main-mobile'); ?>">
              <?php flatsome_header_elements('header_mobile_elements_right','mobile'); ?>
            </ul>
          </div>

      </div><!-- .header-inner -->
     
      <?php if(get_theme_mod('header_divider', 1)) { ?>
      <!-- Header divider -->
      <div class="container"><div class="top-divider full-width"></div></div>
      <?php }?>
</div><!-- .header-main -->
<header class="header">
        <div class="remove-all"></div>
        <div class="content-header">
            <div class="container">
                <div class="logo-header">
                    <a href="https://www.tamcocgarden.com" title="Tam Coc Garden">
                        <img src="https://www.tamcocgarden.com/wp-content/uploads/2023/02/logo-tamcoc-new.png" title="Tam Coc Garden" alt="Tam Coc Garden">
                    </a>
                </div>
                <span class="button-phone btn_sp_menu">
        <i class="fa fa-bars" aria-hidden="true"></i>
      </span>
                <div class="menu">
                    <span class="button-phone btn_sp_menu"><i class="fa fa-bars" aria-hidden="true"></i></span>
                    <div class="menu-desktop">
                        <ul id="menu-menu-chinh" class="">
                            <li id="menu-item-45" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-45"><a href="#">The Land</a>
                                <ul class="sub-menu">
                                    <li id="menu-item-264" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-264"><a href="https://www.tamcocgarden.com/our-story/">Its Story</a>
                                    </li>
                                    <li id="menu-item-330" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-330"><a href="https://www.tamcocgarden.com/our-villagers/">Its People</a>
                                    </li>
                                    <li id="menu-item-265" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-265"><a href="https://www.tamcocgarden.com/discover-tam-coc/">Its Attractions</a>
                                    </li>
                                </ul>
                            </li>
                            <li id="menu-item-1270" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1270"><a href="https://www.tamcocgarden.com/garden/">Hieu&#8217;s Garden</a>
                            </li>
                            <li id="menu-item-46" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-46"><a href="#">Houses</a>
                                <ul class="sub-menu">
                                    <li id="menu-item-2817" class="menu-item menu-item-type-post_type menu-item-object-room menu-item-2817"><a href="https://www.tamcocgarden.com/room/full-moon-villa-2/">Full Moon Villa</a>
                                    </li>
                                    <li id="menu-item-3057" class="menu-item menu-item-type-post_type menu-item-object-room menu-item-3057"><a href="https://www.tamcocgarden.com/room/onsen-panoramic-valley-chamber/">Onsen Panoramic Valley Chamber</a>
                                    </li>
                                    <li id="menu-item-2853" class="menu-item menu-item-type-post_type menu-item-object-room menu-item-2853"><a href="https://www.tamcocgarden.com/room/sunset-valley-bungalow-2/">Sunset Valley Bungalow</a>
                                    </li>
                                    <li id="menu-item-2964" class="menu-item menu-item-type-post_type menu-item-object-room menu-item-2964"><a href="https://www.tamcocgarden.com/room/mountain-verandah/">Mountain Verandah Chamber</a>
                                    </li>
                                    <li id="menu-item-1272" class="menu-item menu-item-type-post_type menu-item-object-room menu-item-1272"><a href="https://www.tamcocgarden.com/room/premium-tonkin-garden/">Premium Tonkin Garden Bungalow</a>
                                    </li>
                                    <li id="menu-item-2934" class="menu-item menu-item-type-post_type menu-item-object-room menu-item-2934"><a href="https://www.tamcocgarden.com/room/deluxe-tonkin-garden/">Deluxe Tonkin Garden Bungalow</a>
                                    </li>
                                </ul>
                            </li>
                            <li id="menu-item-48" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-48"><a href="#">Experiences</a>
                                <ul class="sub-menu">
                                    <li id="menu-item-529" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-529"><a href="https://www.tamcocgarden.com/our-gastronomy/">Gastronomy</a>
                                    </li>
                                    <li id="menu-item-565" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-565"><a href="https://www.tamcocgarden.com/wellness/">Wellness</a>
                                    </li>
                                    <li id="menu-item-672" class="menu-item menu-item-type-taxonomy menu-item-object-experience-immersion-category menu-item-672"><a href="https://www.tamcocgarden.com/experience-immersion-category/nature-immersion/">Nature Immersion</a>
                                    </li>
                                    <li id="menu-item-671" class="menu-item menu-item-type-taxonomy menu-item-object-experience-immersion-category menu-item-671"><a href="https://www.tamcocgarden.com/experience-immersion-category/local-immersion/">Local Immersion</a>
                                    </li>
                                    <li id="menu-item-846" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-846"><a href="https://www.tamcocgarden.com/tour-packages/">Tour Packages</a>
                                    </li>
                                    <li id="menu-item-506" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-506"><a href="https://www.tamcocgarden.com/our-services/">Services</a>
                                    </li>
                                </ul>
                            </li>
                            <li id="menu-item-263" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-263"><a href="https://www.tamcocgarden.com/page-sustainability/">Sustainability</a>
                                <ul class="sub-menu">
                                    <li id="menu-item-916" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-916"><a href="https://www.tamcocgarden.com/page-our-commitment/">Our Commitment</a>
                                    </li>
                                    <li id="menu-item-906" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-906"><a href="https://www.tamcocgarden.com/our-responsible-actions/">Our Responsible Actions</a>
                                    </li>
                                    <li id="menu-item-446" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-446"><a href="https://www.tamcocgarden.com/responsible-projects/">Our Sustainable Projects</a>
                                    </li>
                                </ul>
                            </li>
                            <li id="menu-item-267" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-267"><a href="https://www.tamcocgarden.com/offers-events/">Offers &#038; Events</a>
                            </li>
                            <li id="menu-item-347" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-347"><a href="https://www.tamcocgarden.com/gallery/">Gallery</a>
                            </li>
                            <li id="menu-item-2699" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2699"><a href="https://www.tamcocgarden.com/contact-us/">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="languages-headers">
                    <p class="btn-language__headers">
                        <span class="text_lang_default"></span>
                        <i class="fa fa-caret-down" aria-hidden="true"></i>
                    </p>
                    <ul id="menu-menu-ngon-ngu" class="list-langue__header">
                        <li id="menu-item-252-vi" class="lang-item lang-item-2 lang-item-vi lang-item-first menu-item menu-item-type-custom menu-item-object-custom menu-item-252-vi"><a href="https://www.tamcocgarden.com/vi/" hreflang="vi" lang="vi">VN</a>
                        </li>
                        <li id="menu-item-252-en" class="lang-item lang-item-5 lang-item-en current-lang menu-item menu-item-type-custom menu-item-object-custom current_page_item menu-item-home menu-item-252-en"><a href="https://www.tamcocgarden.com/" hreflang="en-US" lang="en-US">ENG</a>
                        </li>
                        <li id="menu-item-252-kr" class="lang-item lang-item-8 lang-item-kr menu-item menu-item-type-custom menu-item-object-custom menu-item-252-kr"><a href="https://www.tamcocgarden.com/kr/" hreflang="ko-KR" lang="ko-KR">KR</a>
                        </li>
                        <li id="menu-item-252-ja" class="lang-item lang-item-12 lang-item-ja menu-item menu-item-type-custom menu-item-object-custom menu-item-252-ja"><a href="https://www.tamcocgarden.com/ja/" hreflang="ja" lang="ja">JP</a>
                        </li>
                        <li id="menu-item-252-fr" class="lang-item lang-item-16 lang-item-fr menu-item menu-item-type-custom menu-item-object-custom menu-item-252-fr"><a href="https://www.tamcocgarden.com/fr/" hreflang="fr-FR" lang="fr-FR">FR</a>
                        </li>
                        <li id="menu-item-252-de" class="lang-item lang-item-20 lang-item-de menu-item menu-item-type-custom menu-item-object-custom menu-item-252-de"><a href="https://www.tamcocgarden.com/de/" hreflang="de-DE" lang="de-DE">DE</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="main-menu-mobile">
            <div class="header-menu-mobile d-flex align-items-center justify-content-between">
                <a href="https://www.tamcocgarden.com" title="Tam Coc Garden">
                    <img src="https://www.tamcocgarden.com/wp-content/uploads/2023/02/logo-tamcoc-new.png" title="Tam Coc Garden" alt="Tam Coc Garden">
                </a>
                <p class="close-menu-btn smooth"><i class="fa fa-angle-right" aria-hidden="true"></i>
                </p>
            </div>
            <div class="menu_clone">
                <ul id="menu-menu-chinh-1" class="">
                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-45"><a href="#">The Land</a>
                        <ul class="sub-menu">
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-264"><a href="https://www.tamcocgarden.com/our-story/">Its Story</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-330"><a href="https://www.tamcocgarden.com/our-villagers/">Its People</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-265"><a href="https://www.tamcocgarden.com/discover-tam-coc/">Its Attractions</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1270"><a href="https://www.tamcocgarden.com/garden/">Hieu&#8217;s Garden</a>
                    </li>
                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-46"><a href="#">Houses</a>
                        <ul class="sub-menu">
                            <li class="menu-item menu-item-type-post_type menu-item-object-room menu-item-2817"><a href="https://www.tamcocgarden.com/room/full-moon-villa-2/">Full Moon Villa</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-room menu-item-3057"><a href="https://www.tamcocgarden.com/room/onsen-panoramic-valley-chamber/">Onsen Panoramic Valley Chamber</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-room menu-item-2853"><a href="https://www.tamcocgarden.com/room/sunset-valley-bungalow-2/">Sunset Valley Bungalow</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-room menu-item-2964"><a href="https://www.tamcocgarden.com/room/mountain-verandah/">Mountain Verandah Chamber</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-room menu-item-1272"><a href="https://www.tamcocgarden.com/room/premium-tonkin-garden/">Premium Tonkin Garden Bungalow</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-room menu-item-2934"><a href="https://www.tamcocgarden.com/room/deluxe-tonkin-garden/">Deluxe Tonkin Garden Bungalow</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-48"><a href="#">Experiences</a>
                        <ul class="sub-menu">
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-529"><a href="https://www.tamcocgarden.com/our-gastronomy/">Gastronomy</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-565"><a href="https://www.tamcocgarden.com/wellness/">Wellness</a>
                            </li>
                            <li class="menu-item menu-item-type-taxonomy menu-item-object-experience-immersion-category menu-item-672"><a href="https://www.tamcocgarden.com/experience-immersion-category/nature-immersion/">Nature Immersion</a>
                            </li>
                            <li class="menu-item menu-item-type-taxonomy menu-item-object-experience-immersion-category menu-item-671"><a href="https://www.tamcocgarden.com/experience-immersion-category/local-immersion/">Local Immersion</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-846"><a href="https://www.tamcocgarden.com/tour-packages/">Tour Packages</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-506"><a href="https://www.tamcocgarden.com/our-services/">Services</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-263"><a href="https://www.tamcocgarden.com/page-sustainability/">Sustainability</a>
                        <ul class="sub-menu">
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-916"><a href="https://www.tamcocgarden.com/page-our-commitment/">Our Commitment</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-906"><a href="https://www.tamcocgarden.com/our-responsible-actions/">Our Responsible Actions</a>
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-446"><a href="https://www.tamcocgarden.com/responsible-projects/">Our Sustainable Projects</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-267"><a href="https://www.tamcocgarden.com/offers-events/">Offers &#038; Events</a>
                    </li>
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-347"><a href="https://www.tamcocgarden.com/gallery/">Gallery</a>
                    </li>
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2699"><a href="https://www.tamcocgarden.com/contact-us/">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="bg-over-menu"></div>
    </header>