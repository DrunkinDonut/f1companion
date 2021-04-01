<!DOCTYPE html>
<html lang="pl">
<head>
    <?php $this->load(APP_PATH.'templates/t_head.php'); ?>
    <title>F1 Companion - Strona główna</title>
</head>
<body>
    <?php $this->Template->showNav('home'); ?>
    <div class="app_container">
        <h2>Najbliższy wyścig<span class="season_year">Sezon 2021</span></h2>
        <div class="race_card">
            <div class="race_round">
                R1
            </div>
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
        </div>
        <h2>TOP 5 kierowców</h2>
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
                    Lewis Hamilton
                </div>
                <div class="standing_points">
                    347
                </div>
            </div>
            <div class="standing">
                <div class="standing_place_block">
                    <div class="standing_place">
                        <div class="standing_place_number">
                            2
                        </div>
                    </div>
                    <div class="standing_place_logo" style="background-color: #08A49E;">
                        <img src="<?php echo APP_RES; ?>img/teams/mercedes_white.svg" alt="">
                    </div>
                </div>
                <div class="standing_name">
                    Valterri Bottas
                </div>
                <div class="standing_points">
                    223
                </div>
            </div>
        </div>
        <h2>TOP 3 konstruktorów</h2>
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