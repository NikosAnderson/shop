{include file="partials/header.tpl"}

    <div class="row">

            {include file='partials/sidebar-left.tpl'}

            <div class="col-md-9">

                {include file='partials/carousel.tpl'}

                <div class="row products">

                    {foreach $products as $_product}
                    <div class="product col-sm-4 col-lg-4 col-md-4">
                        {include file='partials/product-block.tpl'}
                    </div><!-- .product -->
                    {/foreach}

                </div><!-- /.row -->

            </div><!-- col-md-9 -->

        </div><!-- /.row -->

{include file="partials/footer.tpl"}