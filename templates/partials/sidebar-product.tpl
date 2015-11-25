            <div class="col-md-3">

                {include file='partials/sidebar-categories.tpl'}

                <p class="lead">Related products</p>

                {foreach $related_products as $_product}
                    {include file='partials/product-block.tpl'}
                {/foreach}

            </div>