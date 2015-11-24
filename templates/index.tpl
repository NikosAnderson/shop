{include file="partials/header.tpl"}

    <div class="row">

            {include file='partials/sidebar-left.tpl'}

            <div class="col-md-9">

                {include file='partials/carousel.tpl'}

                <div class="row products">

                    {foreach $products as $product}
                    <div class="product col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="{$product->picture}" alt="">
                            <div class="caption">
                                <h4 class="pull-right">{$product->price}</h4>
                                <h4><a href="#">{$product->title}</a>
                                </h4>
                                <p>{$product->getDescription(50)}</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                            <div class="btns clearfix">
                                <a class="btn btn-info pull-left" href="product.php"><span class="glyphicon glyphicon-eye-open"></span> View</a>
                                <a class="btn btn-primary pull-right" href="product.php"><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
                            </div>
                        </div><!-- /.thumbnail -->
                    </div><!-- .product -->
                    {/foreach}

                </div><!-- /.row -->

            </div><!-- col-md-9 -->

        </div><!-- /.row -->

{include file="partials/footer.tpl"}