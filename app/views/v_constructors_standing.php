<!DOCTYPE html>
<html lang="pl">

<head>
    <?php $this->load(APP_PATH . 'templates/t_head.php'); ?>
    <title>F1 Companion - Klasyfikacja konstruktorów</title>
</head>

<body>
    <?php $this->Template->showNav(''); ?>
    <div class="app_container">
        <h2 class="h2_with_arrow"><a class="arrow_back_icon" href="<?php echo SITE_PATH; ?>app/results.php"><img src="<?php echo APP_RES; ?>img/arrow_back.svg" alt=""></a>Klasyfikacja konstruktorów</h2>
        <div class="standings">
            <div class="standing">
                <div class="standing_place_block">
                    <div class="standing_place">
                        <div class="standing_place_number">
                            1
                        </div>
                    </div>
                    <div class="standing_place_logo" style="background-color: #08A49E;">
                        <img src="<?php echo APP_RES; ?>img/teams/mercedes_white.svg" alt="">
                    </div>
                </div>
                <div class="standing_name">
                    Mercedes
                </div>
                <div class="standing_points">
                    573
                </div>
            </div>
        </div>
    </div>
</body>

</html>