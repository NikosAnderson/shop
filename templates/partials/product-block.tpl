                <div class="thumbnail product">
                    <img src="{$_product->getPicture()}" alt="">
                    <div class="caption">
                        <h4 class="name"><a href="#">{$_product->getName()}</a></h4>
                        <h4 class="price">{$_product->getPrice()}</h4>
                        <p>{$_product->getDescription(50)}</p>
                    </div>
                    <div class="ratings">
                        <p class="pull-right">0 review(s)</p>
                        <p>
                            {for $i = 1 to 5 step 1}
                            <span class="glyphicon glyphicon-star{if $_product->getRating() < $i}-empty{/if}"></span>
                            {/for}
                            {$_product->getRating()} star(s)
                        </p>
                    </div>
                    <div class="btns clearfix">
                        <a class="btn btn-info pull-left" href="product.php?id={$_product->getId()}"><span class="glyphicon glyphicon-eye-open"></span> View</a>
                        <a class="btn btn-primary pull-right" href=""><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
                    </div>
                </div><!-- /.thumbnail -->