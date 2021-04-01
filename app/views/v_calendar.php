<!DOCTYPE html>
<html lang="pl">
<head>
    <?php $this->load(APP_PATH.'templates/t_head.php'); ?>
    <title>F1 Companion - Kalendarz</title>
</head>
<body>
    <?php $this->Template->showNav('calendar'); ?>
    <div class="app_container">
        <h2>Kalendarz<span class="season_year">Sezon 2021</span></h2>
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
        <div class="race_card">
            <div class="race_round">
                R2
            </div>
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
        </div>
    </div>
</body>
</html>