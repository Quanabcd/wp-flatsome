<?php
/**
 * The blog template file.
 *
 * @package flatsome
 */

get_header();
$taxonomy = get_queried_object();
$term =  get_queried_object();

// vars
$desc_cate = get_field('img_cate_du_hoc', $term);

?>

<div class="product-container">

    <div class="product-gallery product-gallery-wide">

    <div class="product-images slider-wrapper relative mb-half has-hover woocommerce-product-gallery woocommerce-product-gallery--with-images woocommerce-product-gallery--columns-4 images " data-columns="4">
        <div class="absolute left right">
            <div class="container relative">
                <div class="badge-container is-larger absolute left top z-1">
                </div>
            </div>
        </div>

        <figure class="woocommerce-product-gallery__wrapper product-gallery-slider slider slider-nav-circle mb-half slider-style-container slider-nav-light slider-load-first no-overflow" data-flickity-options='{
                "cellAlign": "center",
                "wrapAround": true,
                "autoPlay": false,
                "prevNextButtons":true,
                "adaptiveHeight": true,
                "imagesLoaded": true,
                "lazyLoad": 1,
                "dragThreshold" : 15,
                "pageDots": false,
                "rightToLeft": false            }' style="background-color: #333;">

                

                <?php 
                               $post_id = get_the_ID();

                // Lấy giá trị của trường meta 'album_images'
                $album_images = get_post_meta( $post_id, 'album_images', true );

                // Kiểm tra xem có hình ảnh nào được lưu
                if ( $album_images ) {
                    // Chuyển chuỗi ID thành mảng các ID hình ảnh
                    $image_ids = explode( ',', $album_images );

                    // Hiển thị hình ảnh
                    foreach ( $image_ids as $image_id ) {
                        $image_url = wp_get_attachment_image_url( $image_id, 'thumbnail' );
                        ?>
<div data-thumb="<?php echo $image_url?>" class="woocommerce-product-gallery__image slide">
                <a href="<?php echo $image_url?>"><img width="840" height="420" src="<?php echo $image_url?>" class="skip-lazy" alt="" decoding="async" loading="lazy" title="<?php echo get_the_title();?>" data-caption="" data-src="<?php echo $image_url?>" data-large_image="<?php echo $image_url?>" data-large_image_width="840" data-large_image_height="420" />
                </a>
            </div>

                        <?php
                    }
                }
                ?>
            
            



            
        </figure>

        <div class="loading-spin centered dark"></div>

        <div class="absolute bottom left right">
            <div class="container relative image-tools">
                <div class="image-tools absolute bottom right z-3">
                    <a href="#product-zoom" class="zoom-button button is-outline circle icon tooltip hide-for-small" title="Zoom">
                        <i class="icon-expand"></i> </a>
                </div>
            </div>
        </div>

    </div>
</div>

    <div class="row">
    <div class="col large-12">
        <div class="product-info">
            <div class="row">
                <div class="large-7 col">
                    <div class="entry-summary product-summary form-flat">
                        <h1 class="product-title product_title entry-title">
    <?php echo get_the_title();?></h1>

                    </div>
                </div>
            </div>
        </div>

        <div class="product-footer">

    <div class="woocommerce-tabs wc-tabs-wrapper container tabbed-content">
        <ul class="tabs wc-tabs product-tabs small-nav-collapse nav nav-uppercase nav-line nav-left" role="tablist">
            <li class="description_tab active" id="tab-title-description" role="tab" aria-controls="tab-description">
                <a href="#tab-description">
                        Mô tả                   </a>
            </li>
            <li class="description_tab" id="tab-title-description" role="tab" aria-controls="tab-description">
                <a href="#tab-description">
                        Cancellation Policy
                    </a>
            </li>
        </ul>
        <div class="tab-panels">
            <div class="woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content active" id="tab-description" role="tabpanel" aria-labelledby="tab-title-description">

<?php echo get_the_excerpt();?>
               
            </div>
            <div class="woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content " id="tab-description" role="tabpanel" aria-labelledby="tab-title-description">
               <?php echo get_post_meta(get_the_ID(), 'cancellation_policy', TRUE); ?>
              
            </div>

        </div>
        <!-- .tab-panels -->
    </div>
    <!-- .tabbed-content -->

</div>


        <div class="row">

            <div class="col large-12">
                <ul class="tabs wc-tabs product-tabs small-nav-collapse nav nav-uppercase nav-line nav-left" role="tablist">
                <li class="description_tab active" id="tab-title-description" role="tab" aria-controls="tab-description">
                    <a href="#tab-description">
                                Booking Information
                            </a>
                </li>
            </ul>
            <br />

                <?php echo do_shortcode('[contact-form-7 id="935" title="Services"]') ?>

            </div>


            <div class="col large-12">
<div class="woocommerce-tabs wc-tabs-wrapper container tabbed-content">
     <ul class="tabs wc-tabs product-tabs small-nav-collapse nav nav-uppercase nav-line nav-left" role="tablist">
                        <li class="description_tab active" id="tab-title-description" role="tab" aria-controls="tab-description">
                            <a href="#tab-description">
                                        Trip Inclusions
                            
                                    </a>
                        </li>
                    </ul>
                    <div class="tab-panels">
                        <div class="woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content active" id="tab-description" role="tabpanel" aria-labelledby="tab-title-description">


                            <?php echo get_post_meta(get_the_ID(), 'trip_inclusions', TRUE); ?>

                            
                        </div>

                    </div>
            <ul class="tabs wc-tabs product-tabs small-nav-collapse nav nav-uppercase nav-line nav-left" role="tablist">
                <li class="description_tab " id="tab-title-description" role="tab" aria-controls="tab-description">
                    <a href="#tab-description">
                                Trip Exclusions
                    
                            </a>
                </li>
            </ul>
            <div class="tab-panels">
                <div class="woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content " id="tab-description" role="tabpanel" aria-labelledby="tab-title-description">


                    <?php echo get_post_meta(get_the_ID(), 'trip_exclusions', TRUE); ?>

                    
                </div>

            </div>
            <ul class="tabs wc-tabs product-tabs small-nav-collapse nav nav-uppercase nav-line nav-left" role="tablist">
                <li class="description_tab " id="tab-title-description" role="tab" aria-controls="tab-description">
                    <a href="#tab-description">
                                Things To Carry
                    
                            </a>
                </li>
            </ul>
            <div class="tab-panels">
                <div class="woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content " id="tab-description" role="tabpanel" aria-labelledby="tab-title-description">


                    <?php echo get_post_meta(get_the_ID(), 'things_to_carry', TRUE); ?>

                    
                </div>

            </div>
        </div>
            </div>
            


</div>
    </div><!-- .large-12 -->
    </div><!-- .row -->
  
</div><!-- product-container -->
<?php echo do_shortcode('[block id="footer"]')?>

<?php
get_footer();
?>
