<?php
<?php
/**
 * The blog template file.
 *
 * @package flatsome
 */

get_header();
$taxonomy = get_queried_object();
$term = get_queried_object();

// vars


?>

<?php $current_category = single_cat_title("", false); ?>
<div id="banner_gr" class="banner_gr">
   <?php $desc_cate = get_field('img_cate_du_hoc', $term);
   if($desc_cate=="false"){
    echo '<img src="'.$desc_cate.'" alt="'.$taxonomy->name.'">';
}
else{

    echo '<img src="/wp-content/uploads/2023/03/baner_solution.jpg" alt="'.$taxonomy->name.'">';
}
?>
<div class="gr_head">
    <div class="container">
        <div class="breadcrumb2">
            <?php

            if (function_exists('yoast_breadcrumb')) {
                yoast_breadcrumb('<ol class="breadcrumb">', '</ol>');
            }
            ?>
        </div>
    </div>
</div>
</div>
<div class="section solution_details_page" data-aos="fade-down">
    <div class="mobile_button_cat_product">
        <i class="fa fa-bars" aria-hidden="true"></i>
    </div>
    <div class="row tvanh">

        <div class="row">
            <div class="post-sidebar large-3 col col-left-product left-cot list_cat_solution">
                <div class="box-side-collection widget side-collection-left">
                    <h4 class="title-left-collection">Giải pháp</h4>



                    <ul class="list-left-collection2">
                       <?php
                       $args = array(
                        'taxonomy'   => "duhoc-cate",
                        'number'     => 200,
                        'orderby'    => 'name',
                        'order'      => 'asc',
                        'hide_empty' => false,
                        'parent'     => $parentid
                    );    
                       $product_categories = get_terms($args);
                       if (!empty( $product_categories ) && ! is_wp_error($product_categories)){
                        foreach ($product_categories as $key => $category) {
                           $args = array(
                            'taxonomy'   => "duhoc-cate",
                            'number'     => 20,
                            'hide_empty'   => false,
                            'parent'    => $category->term_id,
                        );
                           $class = ( is_tax('duhoc-cate', $category->slug) ) ? 'current-cat' : '';
                           $child_categories=get_terms($args);
                           if($child_categories != null)
                            {$class1 = ( is_tax('duhoc-cate', $child_categories->slug) ) ? 'current-cat' : '';
                        ?>
                        <li class="<?php echo $class ?> <?php echo $class1 ?> menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-4582 has-child "><a class="item-title" href="<?php echo get_term_link($category) ?>"><?php echo $category->name ?></a><i class="fa dow-file icon-angle-down" aria-hidden="true"></i>

                            <ul class="sub-menu sub-giaiphap">

                                <?php


                                if (!empty( $child_categories ) && ! is_wp_error($child_categories)){
                                    foreach ( $child_categories as $child ) {
                                        $class2 = ( is_tax('duhoc-cate', $child->slug) ) ? 'current-cat' : '';
                                        $args = array('post_type' => 'duhoc', 'stock' => 1, 'posts_per_page' => 100, 'duhoc' => $child->slug, 'orderby' => 'date', 'order' => 'ASC');
                                        $loop = new WP_Query($args);
                                        if ( $loop->have_posts() ) 
                                            { ?>
                                                <li class="sidebar-item <?php echo $class1 ?>"><a class="item-title" href="<?php echo get_term_link($child) ?>"><span><i class="fa fa-angle-right" aria-hidden="true"></i> <?php echo $child ->name; ?></span></a>

                                                    </li><?php
                                                }
                                                else
                                                {
                                                    ?>
                                                    <li class="sidebar-item <?php echo $class2 ?>"><a class="item-title" href="<?php echo get_term_link($child) ?>"><span><i class="fa fa-angle-right" aria-hidden="true"></i> <?php echo $child ->name; ?></span></a>
                                                    </li>
                                                    <?php
                                                }
                                            }
                                        }
                                        ?>


                                    </ul>
                                </li>



                                <?php
                            } 
                            else
                            {
                                ?>
                                <li class="sidebar-item <?php echo $class ?> <?php echo $class1 ?>"><a class="item-title" href="<?php echo get_term_link($category) ?>"> <?php echo $category->name ?></a></li>
                                <?php
                            }
                        }
                    }   
                    ?>
                </ul>
            </div>
        </div>
        <div class="large-9 col">
            <div class="news-page">
                <div class="main-title-wrap">
                    <h1 class="main-title hidden tt-40 t-capitalize">
                     <?php echo  $taxonomy->name;?></h1>

                 </div>
             </div>
             <div class="row box_solution_order_cat">
                <?php while ( have_posts() ) : the_post(); ?>

                    <div class="col large-4 medium-6 small-12">

                        <div class="item">
                            <div class="box_img">
                                <a href="<?php echo get_the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
                                  <img class="img-responsive " title="text " alt="<?php echo get_the_title(); ?> " src="<?php echo get_the_post_thumbnail_url(get_the_ID(), 'large') ?>" style="display: block; "></a>
                              </div>
                              <div class="box_content">
                                <div class="content">
                                    <a href="<?php echo get_the_permalink(); ?>" title="<?php echo get_the_title(); ?>">
                                        <h3><?php echo get_the_title(); ?></h3>
                                    </a>
                                    <div class="box_content_excerpt">
                                        <div class="content_excerpt">
                                            <?php echo get_the_excerpt(); ?>
                                        </div>
                                    </div>
                                </div>
                                <a href="<?php echo get_the_permalink(); ?>" title="Xem thêm">Xem thêm<i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>


                    </div>
                <?php endwhile; ?>

                <!-- .col -->
                <!-- .col -->
                <!-- .col -->
            </div>
            <div class="clearfix"></div>
            <div class="the-pagination">
                <?php flatsome_posts_pagination(); ?>
            </div>

        </div>

    </div>
</div>


<div>

</div>

</div>


<?php
get_footer();
?>

