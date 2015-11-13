<?php
$slider_pictures = glob('img/slider/*.{jpeg,jpg,png}', GLOB_BRACE);
//echo Utils::debug($slider_pictures);
?>

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="home-slider" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">

                                <?php foreach($slider_pictures as $key => $picture) { ?>
                                <li data-target="#home-slider" data-slide-to="<?= $key ?>"<?= $key === 0 ? ' class="active"' : '' ?>></li>
                                <?php } ?>
                            </ol>
                            <div class="carousel-inner">

                                <?php foreach($slider_pictures as $key => $picture) { ?>
                                <div class="item<?= $key === 0 ? ' active' : '' ?>">
                                    <img class="slide-image" src="<?= $picture ?>" alt="">
                                </div>
                                <?php } ?>

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