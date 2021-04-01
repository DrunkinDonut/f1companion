<!DOCTYPE html>
<html lang="pl">
<head>
    <?php $this->load(APP_PATH.'templates/t_head.php'); ?>
    <title>F1 Companion - Statystyki</title>
</head>
<body>
    <?php $this->Template->showNav('results'); ?>
    <div class="app_container">
        <h2>Statystyki<span class="season_year">Sezon 2021</span></h2>
        <a href="<?php echo SITE_PATH; ?>app/results.php?v=drivers_standing">
            <div class="results_link_block">
                <div class="results_link_icon">
                    <img src="<?php echo APP_RES; ?>img/person.svg" alt="">
                </div>
                <div class="results_link_main">
                    <div class="results_link_name">
                        Klasyfikacja kierowców
                    </div>
                    <div class="results_link_arrow">
                        <img src="<?php echo APP_RES; ?>img/arrow.svg" alt="">
                    </div>
                </div>
            </div>
        </a>
        <a href="<?php echo SITE_PATH; ?>app/results.php?v=constructors_standing">
            <div class="results_link_block">
                <div class="results_link_icon">
                    <img src="<?php echo APP_RES; ?>img/gear.svg" alt="">
                </div>
                <div class="results_link_main">
                    <div class="results_link_name">
                        Klasyfikacja konstruktorów
                    </div>
                    <div class="results_link_arrow">
                        <img src="<?php echo APP_RES; ?>img/arrow.svg" alt="">
                    </div>
                </div>
            </div>
        </a>
        <h2>Wyniki wyścigów</h2>
        <a href="<?php echo SITE_PATH; ?>app/results.php?r=1&y=2021">
            <div class="race_card">
                <div class="race_round">
                    R1
                </div>
                <div class="race_info_block">
                    <div class="race_info">
                        <div class="race_name">
                            Bahrain Grand Prix
                        </div>
                        <div class="race_location">
                            <img src="<?php echo APP_RES; ?>img/location.svg" alt="">
                            Sakhir, Bahrain
                        </div>
                        <div class="race_datetime">
                        <img src="<?php echo APP_RES; ?>img/calendar.svg" alt="">
                        28.03.2021
                        <img src="<?php echo APP_RES; ?>img/clock.svg" class="race_card_clock_img" alt="">
                        17:00
                        </div>
                    </div>
                    <div class="race_card_arrow">
                        <img src="<?php echo APP_RES; ?>img/arrow.svg" alt="">
                    </div>
                </div>
            </div>
        </a>
        <a href="<?php echo SITE_PATH; ?>app/results.php?r=2&y=2021">
            <div class="race_card">
                <div class="race_round">
                    R22
                </div>
                <div class="race_info_block">
                    <div class="race_info">
                        <div class="race_name">
                            Emilia Romagna Grand Prix
                        </div>
                        <div class="race_location">
                            <img src="<?php echo APP_RES; ?>img/location.svg" alt="">
                            Imola, Italy
                        </div>
                        <div class="race_datetime">
                        <img src="<?php echo APP_RES; ?>img/calendar.svg" alt="">
                        18.04.2021
                        <img src="<?php echo APP_RES; ?>img/clock.svg" class="race_card_clock_img" alt="">
                        15:00
                        </div>
                    </div>
                    <div class="race_card_arrow">
                        <img src="<?php echo APP_RES; ?>img/arrow.svg" alt="">
                    </div>
                </div>
            </div>
        </a>
    </div>
</body>
</html>