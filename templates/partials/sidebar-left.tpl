            <!-- Left Sidebar -->
            <div class="col-md-3 left-sidebar">

                {include file='partials/sidebar-categories.tpl'}

                <p class="lead">Featured products</p>

                {foreach $best_rated_products as $_product}
                    {include file='partials/product-block.tpl'}
                {/foreach}

            </div><!-- /.left-sidebar -->