{include file='partials/header.tpl'}

        <div class="row">

            {include file='partials/sidebar-product.tpl'}

            <div class="col-md-9">

                <div class="thumbnail">
                    <img class="img-responsive" src="{$product->getPicture()}" alt="">
                    <div class="caption-full">
                        <h4 class="pull-right">{$product->getPrice()}</h4>
                        <h4><a href="#">{$product->getName()}</a>
                        </h4>
                        <blockquote>
                            {$product->getDescription()}
                        </blockquote>
                    </div>
                    <div class="ratings">
                        <p class="pull-right">3 reviews</p>
                        <p>
                            {for $i = 1 to 5 step 1}
                            <span class="glyphicon glyphicon-star{if $product->getRating() < $i}-empty{/if}"></span>
                            {/for}
                            {$product->getRating()} star(s)
                        </p>
                    </div>
                    <div class="btns text-center clearfix">
                        <a class="btn btn-success" href=""><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
                    </div>
                </div>

                <div class="well">

                    <div class="text-right">
                        <a class="btn btn-primary">Leave a Review</a>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            Anonymous
                            <span class="pull-right">10 days ago</span>
                            <p>This product was great in terms of quality. I would definitely buy another!</p>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            Anonymous
                            <span class="pull-right">12 days ago</span>
                            <p>I've alredy ordered another one!</p>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            Anonymous
                            <span class="pull-right">15 days ago</span>
                            <p>I've seen some better than this, but not at this price. I definitely recommend this item.</p>
                        </div>
                    </div>

                </div>

            </div>

        </div>

{include file='partials/footer.tpl'}