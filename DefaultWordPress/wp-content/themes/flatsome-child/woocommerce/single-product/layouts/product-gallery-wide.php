<div class="product-container">

	<div class="product-gallery product-gallery-wide">
	<?php
		/**
		 * woocommerce_before_single_product_summary hook
		 *
		 * @hooked woocommerce_show_product_images - 20
		 */
		do_action( 'woocommerce_before_single_product_summary' );
	?>
	</div>

	<div class="row">
	<div class="col large-12">
		<div class="product-info">
			<div class="row">
				<div class="large-7 col">
					<div class="entry-summary <?php flatsome_product_summary_classes();?>">
						<?php
							 flatsome_breadcrumb();
							 woocommerce_template_single_title();
							 woocommerce_template_single_rating();
							 woocommerce_template_single_excerpt();

							 if(get_theme_mod('product_info_share', 1)){
							 	woocommerce_template_single_sharing();
							 }
						?>
					</div>
				</div>
				<div class="large-5 col">
					<div class="is-well add-to-cart-wrapper <?php flatsome_product_summary_classes( false, false, true );?>">
						<?php

							if(!flatsome_option('catalog_mode')){
								woocommerce_template_single_price();
								flatsome_before_add_to_cart_html();
								woocommerce_template_single_add_to_cart();
								flatsome_after_add_to_cart_html();
							} else {
								if(flatsome_option('catalog_mode_prices')){
									woocommerce_template_single_price();
								}
								echo '<div class="catalog-product-text pb relative">';
							    echo do_shortcode(flatsome_option('catalog_mode_product'));
							    echo '</div>';
							}
							woocommerce_template_single_meta();
						?>
					</div>
				</div>
			</div>
		</div>
		<div class="product-footer" >
				<?php
					/**
					 * woocommerce_after_single_product_summary hook
					 *
					 * @hooked woocommerce_output_product_data_tabs - 10
					 * @hooked woocommerce_upsell_display - 15
					 * @hooked woocommerce_output_related_products - 20
					 */
					do_action( 'woocommerce_after_single_product_summary' );
				?>
		</div><!-- product-footer -->

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
		    <!-- .tab-panels -->
		</div>
			</div>
			


</div>
	</div><!-- .large-12 -->
	</div><!-- .row -->
  
</div><!-- product-container -->
<?php echo do_shortcode('[block id="footer"]')?>