
                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="home-slider" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">

                                {foreach $slider_pictures as $key => $picture}
                                <li data-target="#home-slider" data-slide-to="{$key}"{if $key === 0} class="active"{/if}></li>
                                {/foreach}
                            </ol>
                            <div class="carousel-inner">

                                {foreach $slider_pictures as $key => $picture}
                                <div class="item{if $key === 0} active{/if}">
                                    <img class="slide-image" src="{$picture}" alt="">
                                </div>
                                {/foreach}

                            </div>
                            <a class="left carousel-control" href="#home-slider" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#home-slider" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>