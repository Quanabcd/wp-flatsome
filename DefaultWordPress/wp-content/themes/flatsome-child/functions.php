<?php
// Add custom Theme Functions here



//Weiget
add_filter('gutenberg_use_widgets_block_editor', '__return_false');
add_filter('use_widgets_block_editor', '__return_false');
//Menu Nội dung
add_theme_support('menus');
register_nav_menus(
    array(

        'footer-nav' => 'Menu nội dung'
    )
);

function tn_css_js()
{
    //add css
    wp_register_style('my-custom-style', get_stylesheet_directory_uri() . '/cssjs/style.css', 'all');
    wp_enqueue_style('my-custom-style');

}
add_action('wp_enqueue_scripts', 'tn_css_js');

function GetMenuContent($code, $arg)
{
    ob_start();



    $menu_name = 'footer-nav';
    $locations = get_nav_menu_locations();
    $menu = wp_get_nav_menu_object($locations[$menu_name]);
    $menuitems = wp_get_nav_menu_items($menu->term_id, array('order' => 'DESC'));

?>

    <div class="row row-small">

        <?php
        $count = 0;
        $submenu = false;

        foreach ($menuitems as $item) :
            // set up title and url
            $title = $item->title;
            $link = $item->url;
            if (!$item->menu_item_parent) :
                $parent_id = $item->ID;
        ?>


                <div class="col menu-ftlist medium-6 small-12 large-6">
                    <div class="col-inner">
                        <h3><?php echo $title; ?></h3>
                    <?php endif; ?>
                    <?php if ($parent_id == $item->menu_item_parent) : ?>
                        <?php if (!$submenu) : $submenu = true; ?>
                            <ul class="sub-menu">
                            <?php endif; ?>
                            <li class="">
                                <a href="<?php echo $link; ?>" class="title">
                                    <span><?php echo $title; ?>
                                    </span></a>
                            </li>
                            <?php if ($menuitems[$count + 1]->menu_item_parent != $parent_id && $submenu) : ?>
                            </ul>
                        <?php $submenu = false;
                            endif; ?>

                    <?php endif; ?>
                    <?php if ($menuitems[$count + 1]->menu_item_parent != $parent_id) : ?>

                    </div>
                </div>


            <?php $submenu = false;
                    endif; ?>

        <?php $count++;
        endforeach; ?>
    </div>

<?php
    wp_reset_query();
    return ob_get_clean();
}
add_shortcode('GetMenuContent_Fn', 'GetMenuContent');


// add_shortcode('pro_km_block','pro_km');
function pro_km()
{
    ob_start()
?>





    <div class="col">
        <div class="col-inner">

            <?php echo do_shortcode('[block id="hoa-dao-family-rooms"]') ?>

        </div>

    </div>





<?php
    return ob_get_clean();
}


add_shortcode('pro_km_Services', 'GetHotServices');
function GetHotServices()
{
    ob_start()
?>
    <section class="section" id="section_1942879938">
        <div class="bg section-bg fill bg-fill bg-loaded">





        </div><!-- .section-bg -->

        <div class="section-content relative">


            <div class="row row-large" id="row-1157259941">


                <div class="col small-12 large-12">
                    <div class="col-inner">

                        <div class="container section-title-container icon_box_left">
                            <h3 class="section-title section-title-normal"><b></b><span class="section-title-main">Service and Packages</span><b></b></h3>
                        </div><!-- .section-title -->


                    </div>
                </div>

                <?php

                $args = array(
                    'post_type' => 'product',
                    'post_status' => 'publish',
                    'posts_per_page' => 4,
                    'orderby' => 'post_date',
                    'order' => 'desc',
                    // 'meta_query' => array(
                    //   //  'relation' => 'and',
                    //     // array(
                    //     //     'key' => 'newshome', //newshome là mã custom field
                    //     //     'value' => '1'
                    //     // )
                    //     /*,
                    //     array(
                    //         'key' => 'thuoc_tinh', //sanpham là mã custom field
                    //         'value' => $key
                    //     )*/
                    // )
                );
                $loop = new WP_Query($args);
                while ($loop->have_posts()) : $loop->the_post(); {
                ?>

                        <div class="col medium-3 small-6 large-3" data-animate="fadeInLeft" data-animated="true">
                            <div class="col-inner">
                                <a href="<?php echo get_the_permalink() ?>" title="<?php echo get_the_title() ?>">
                                    <div class="box has-hover   has-hover box-overlay dark box-text-bottom">

                                        <div class="box-image">
                                            <div class="image-zoom">
                                                <img width="1200" height="771" src="<?php echo the_post_thumbnail_url() ?>" class="attachment- size-" alt="" decoding="async" loading="lazy">
                                                <div class="overlay" style="background-color:1"></div>
                                            </div>
                                        </div>
                                        <!-- box-image -->

                                        <div class="box-text text-center">
                                            <div class="box-text-inner">


                                                <h4><?php echo get_the_title() ?></h4>

                                            </div>
                                            <!-- box-text-inner -->
                                        </div>
                                        <!-- box-text -->
                                    </div>
                                    <!-- .box  -->
                                </a>

                            </div>
                        </div>

                <?php
                    }
                endwhile;
                wp_reset_query();

                ?>




            </div>

        </div><!-- .section-content -->


        <style scope="scope">
            #section_1942879938 {
                padding-top: 30px;
                padding-bottom: 30px;
            }
        </style>
    </section>

<?php
    return ob_get_clean();
}



add_shortcode('pro_km_block', 'GetHotPrd');
function GetHotPrd()
{
    ob_start()
?>

    <div class="slider_post container large-columns-3 medium-columns-3 small-columns-1 row-normal slider row-slider slider-nav-simple slider-nav-outside slider-nav-push" data-flickity-options='{"imagesLoaded": true, "groupCells": "100%", "dragThreshold" : 5, "cellAlign": "left","wrapAround": true,"prevNextButtons": true,"percentPosition": true,"pageDots": false, "rightToLeft": false, "autoPlay" : false}'>

        <?php

        $args = array(
            'post_type' => 'duhoc',
            'post_status' => 'publish',
            'posts_per_page' => 5,
            'orderby' => 'post_date',
            'order' => 'desc',
            // 'meta_query' => array(
            //   //  'relation' => 'and',
            //     // array(
            //     //     'key' => 'newshome', //newshome là mã custom field
            //     //     'value' => '1'
            //     // )
            //     /*,
            //     array(
            //         'key' => 'thuoc_tinh', //sanpham là mã custom field
            //         'value' => $key
            //     )*/
            // )
        );
        $loop = new WP_Query($args);
        while ($loop->have_posts()) : $loop->the_post(); {
        ?>
                <div class="col">
                    <div class="col-inner">
                        <div class="box has-hover has-hover box-text-bottom has-block tooltipstered">
                            <div class="box-image">
                                <div class="">
                                    <img width="1888" height="1201" src="<?php echo the_post_thumbnail_url() ?>" class="attachment- size-" alt="" decoding="async" loading="lazy">
                                </div>
                            </div>
                            <!-- box-image -->
                            <div class="box-text text-left">
                                <div class="box-text-inner">
                                    <a href="<?php echo get_the_permalink() ?>" title="<?php echo get_the_title() ?>">
                                        <h4><?php echo get_the_title() ?></h4>
                                        <p><?php echo get_the_excerpt() ?></p>
                                    </a>
                                </div>
                                <!-- box-text-inner -->
                            </div>
                            <!-- box-text -->
                        </div>
                    </div>
                </div>
        <?php
            }
        endwhile;
        wp_reset_query();
        ?>
    </div> <?php
            return ob_get_clean();
        }

        add_shortcode('pro_km_new', 'GetHotNew');
        function GetHotNew()
        {
            ob_start()
            ?>

    <section class="section">
        <div class="bg section-bg fill bg-fill bg-loaded"></div>
        <div class="section-content relative">
            <div class="row row-large" id="row-1918582698">
                <div class="col small-12 large-12">
                    <div class="col-inner">
                        <div class="container section-title-container">
                            <h3 class="section-title section-title-normal"><b></b><span class="section-title-main" style="color:rgb(3, 152, 158);">News and Promotions</span><b></b></h3>
                        </div>


                        <div class="slider_post container large-columns-3 medium-columns-3 small-columns-1 row-normal slider row-slider slider-nav-simple slider-nav-outside slider-nav-push" data-flickity-options='{"imagesLoaded": true, "groupCells": "100%", "dragThreshold" : 5, "cellAlign": "left","wrapAround": true,"prevNextButtons": true,"percentPosition": true,"pageDots": false, "rightToLeft": false, "autoPlay" : false}'>

                            <?php

                            $args = array(
                                'post_type' => 'post',
                                'post_status' => 'publish',
                                'posts_per_page' => 6,
                                'orderby' => 'post_date',
                                'order' => 'desc',
                                // 'meta_query' => array(
                                //   //  'relation' => 'and',
                                //     // array(
                                //     //     'key' => 'newshome', //newshome là mã custom field
                                //     //     'value' => '1'
                                //     // )
                                //     /*,
                                //     array(
                                //         'key' => 'thuoc_tinh', //sanpham là mã custom field
                                //         'value' => $key
                                //     )*/
                                // )
                            );
                            $loop = new WP_Query($args);
                            while ($loop->have_posts()) : $loop->the_post(); {
                            ?>
                                    <div class="col">
                                        <div class="col-inner">
                                            <div class="box has-hover has-hover box-text-bottom has-block tooltipstered">
                                                <div class="box-image">
                                                    <div class="">
                                                        <img width="1888" height="1201" src="<?php echo the_post_thumbnail_url() ?>" class="attachment- size-" alt="" decoding="async" loading="lazy">
                                                    </div>
                                                </div>
                                                <!-- box-image -->
                                                <div class="box-text text-left">
                                                    <div class="box-text-inner">
                                                        <a href="<?php echo get_the_permalink() ?>" title="<?php echo get_the_title() ?>">
                                                            <h4><?php echo get_the_title() ?></h4>
                                                            <p><?php echo get_the_excerpt() ?></p>
                                                        </a>
                                                    </div>
                                                    <!-- box-text-inner -->
                                                </div>
                                                <!-- box-text -->
                                            </div>
                                        </div>
                                    </div>
                            <?php
                                }
                            endwhile;
                            wp_reset_query();
                            ?>


                        </div>
                    </div>
                </div>
            </div>
            <style scope="scope">
                #section_1441145759 {
                    padding-top: 30px;
                    padding-bottom: 30px;
                }
            </style>
    </section>

<?php return ob_get_clean();
        }



        if (!function_exists('duhoc')) {

            // Register Custom Post Type
            function duhoc()
            {

                $labels = array(
                    'name'                  => __('Room Type', 'Post Type General Name', 'tnthemes'),
                    'singular_name'         => __('Room Type', 'Post Type Singular Name', 'tnthemes'),
                    'menu_name'             => __('Room Type', 'tnthemes'),
                    'name_admin_bar'        => __('Room Type', 'tnthemes'),
                    'archives'              => __('Danh mục', 'tnthemes'),
                    'attributes'            => __('Danh mục', 'tnthemes'),
                    'parent_item_colon'     => __('Bài viết cha', 'tnthemes'),
                    'all_items'             => __('Tất cả bài viết', 'tnthemes'),
                    'add_new_item'          => __('Thêm bài viết mới', 'tnthemes'),
                    'add_new'               => __('Thêm mới', 'tnthemes'),
                    'new_item'              => __('Bài mới', 'tnthemes'),
                    'edit_item'             => __('Chỉnh sửa bài viết', 'tnthemes'),
                    'update_item'           => __('Cập nhật bài viết', 'tnthemes'),
                    'view_item'             => __('Xem bài viết', 'tnthemes'),
                    'view_items'            => __('Xem bài viết', 'tnthemes'),
                    'search_items'          => __('Tìm kiếm bài viết', 'tnthemes'),
                    'not_found'             => __('Not found', 'tnthemes'),
                    'not_found_in_trash'    => __('Not found in Trash', 'tnthemes'),
                    'featured_image'        => __('Ảnh đại diện', 'tnthemes'),
                    'set_featured_image'    => __('Chọn ảnh đại diện', 'tnthemes'),
                    'remove_featured_image' => __('Xóa ảnh đại diện', 'tnthemes'),
                    'use_featured_image'    => __('Sử dụng ảnh đại diện', 'tnthemes'),
                    'insert_into_item'      => __('Insert into item', 'tnthemes'),
                    'uploaded_to_this_item' => __('Uploaded to this item', 'tnthemes'),
                    'items_list'            => __('Danh sách', 'tnthemes'),
                    'items_list_navigation' => __('Danh sách', 'tnthemes'),
                    'filter_items_list'     => __('Lọc', 'tnthemes'),
                );
                $rewrite = array(
                    'slug'                  => 'roomtype',
                    'with_front'            => true,
                    'pages'                 => true,
                    'feeds'                 => true,
                );
                $args = array(
                    'label'                 => __('Room Type', 'tnthemes'),
                    'description'           => __('Bài viết trong trang về Room Type', 'tnthemes'),
                    'labels'                => $labels,
                    'supports'              => array('title', 'editor', 'archives', 'thumbnail', 'custom-fields', 'comments', 'excerpt'),
                    'taxonomies'            => array(''),
                    'hierarchical'          => true,
                    'public'                => true,
                    'show_ui'               => true,
                    'show_in_menu'          => true,
                    'menu_position'         => 10,
                    'menu_icon'             => 'dashicons-welcome-write-blog',
                    'show_in_admin_bar'     => true,
                    'show_in_nav_menus'     => true,
                    'can_export'            => true,
                    'has_archive'           => 'roomtype',
                    'exclude_from_search'   => false,
                    'publicly_queryable'    => true,
                    'rewrite'               => $rewrite,
                    'capability_type'       => 'page'

                );
                register_post_type('duhoc', $args);
            }
            add_action('init', 'duhoc', 0);
            add_action('init', function () {
                add_ux_builder_post_type('duhoc');
            });
        }

        if (!function_exists('duhoc_taxonomy')) {

            // Register Custom Taxonomy
            function duhoc_taxonomy()
            {

                $labels = array(
                    'name'                       => __('Danh mục', 'Taxonomy General Name', 'tnthemes'),
                    'singular_name'              => __('Danh mục', 'Taxonomy Singular Name', 'tnthemes'),
                    'menu_name'                  => __('Danh mục', 'tnthemes'),
                    'all_items'                  => __('Tất cả', 'tnthemes'),
                    'parent_item'                => __('Mục cha', 'tnthemes'),
                    'parent_item_colon'          => __('Danh mục:', 'tnthemes'),
                    'new_item_name'              => __('Tên danh mục mới', 'tnthemes'),
                    'add_new_item'               => __('Thêm danh mục mới', 'tnthemes'),
                    'edit_item'                  => __('Sửa danh mục', 'tnthemes'),
                    'update_item'                => __('Cập nhật danh mục', 'tnthemes'),
                    'view_item'                  => __('Xem', 'tnthemes'),
                    'separate_items_with_commas' => __('Separate items with commas', 'tnthemes'),
                    'add_or_remove_items'        => __('Thêm hoặc xóa danh mục', 'tnthemes'),
                    'choose_from_most_used'      => __('Chọn danh mục hay sử dụng', 'tnthemes'),
                    'popular_items'              => __('Danh mục phổ biến', 'tnthemes'),
                    'search_items'               => __('Tìm danh mục', 'tnthemes'),
                    'not_found'                  => __('Không tìm thấy', 'tnthemes'),
                    'no_terms'                   => __('Không có danh mục', 'tnthemes'),
                    'items_list'                 => __('Danh sách danh mục', 'tnthemes'),
                    'items_list_navigation'      => __('Items list navigation', 'tnthemes'),
                );
                $rewrite = array(
                    'slug'                       => 'room-type',
                    'with_front'                 => true,
                    'hierarchical'               => true,
                );
                $args = array(
                    'labels'                     => $labels,
                    'hierarchical'               => true,
                    'public'                     => true,
                    'show_ui'                    => true,
                    'show_admin_column'          => true,
                    'show_in_nav_menus'          => true,
                    'show_tagcloud'              => true,
                    'rewrite'                    => $rewrite,
                );
                register_taxonomy('duhoc-cate', array('duhoc'), $args);
            }
            add_action('init', 'duhoc_taxonomy', 0);
        }
        // Thêm Custom Meta Box cho album ảnh
        function add_album_metabox()
        {
            add_meta_box(
                'album_metabox',
                'Album ảnh',
                'render_album_metabox',
                'duhoc', // Thay 'duhoc' bằng tên của Custom Post Type của bạn
                'normal',
                'high'
            );
        }
        add_action('add_meta_boxes', 'add_album_metabox');

        // Hiển thị nội dung của Custom Meta Box
        function render_album_metabox($post)
        {
            $album_images = get_post_meta($post->ID, 'album_images', true);

            wp_nonce_field('album_images_nonce', 'album_images_nonce');

            // Hiển thị trường tải lên ảnh cho album
?>
    <label for="album_images">Chọn ảnh cho album:</label>
    <div id="album_images_container">
        <?php
            if ($album_images) {
                $image_ids = explode(',', $album_images);
                foreach ($image_ids as $image_id) {
                    $image_url = wp_get_attachment_image_url($image_id, 'thumbnail');
                    if ($image_url) {
                        echo '<div class="album-image">';
                        echo '<img src="' . esc_url($image_url) . '" alt="" />';
                        echo '<input type="hidden" name="album_images[]" value="' . esc_attr($image_id) . '" />';
                        echo '</div>';
                    }
                }
            }
        ?>
    </div>
    <button type="button" id="add_album_image_button" class="button">Thêm ảnh</button>
    <script>
        jQuery(document).ready(function($) {
            var albumImagesContainer = $('#album_images_container');
            var addImageBtn = $('#add_album_image_button');

            // Xử lý sự kiện click nút "Thêm ảnh"
            addImageBtn.on('click', function(e) {
                e.preventDefault();

                // Mở Media Library để chọn ảnh
                var mediaUploader = wp.media({
                    title: 'Chọn ảnh',
                    button: {
                        text: 'Chọn ảnh'
                    },
                    multiple: true
                });

                // Khi người dùng chọn ảnh và nhấn nút "Chọn ảnh"
                mediaUploader.on('select', function() {
                    var attachment = mediaUploader.state().get('selection').toJSON();

                    // Hiển thị các ảnh được chọn
                    if (attachment.length > 0) {
                        $.each(attachment, function(index, image) {
                            albumImagesContainer.append('<div class="album-image"><img src="' + image.url + '" alt="" /><input type="hidden" name="album_images[]" value="' + image.id + '" /></div>');
                        });
                    }
                });

                // Mở Media Library
                mediaUploader.open();
            });
        });
    </script>
<?php
        }

        function save_album_metabox($post_id)
        {
            if (!isset($_POST['album_images_nonce']) || !wp_verify_nonce($_POST['album_images_nonce'], 'album_images_nonce')) {
                return;
            }

            if (isset($_POST['album_images'])) {
                $image_ids = array_map('intval', $_POST['album_images']);
                $image_ids = array_filter($image_ids);
                $image_ids = array_unique($image_ids);

                $album_images = implode(',', $image_ids);
                update_post_meta($post_id, 'album_images', $album_images);
            }
        }
        add_action('save_post', 'save_album_metabox');
