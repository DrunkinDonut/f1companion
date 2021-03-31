<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo SITE_PATH; ?>favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo SITE_PATH; ?>favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo SITE_PATH; ?>favicons/favicon-16x16.png">
    <link rel="mask-icon" href="<?php echo SITE_PATH; ?>favicons/safari-pinned-tab.svg" color="#f10e0e">
    <link rel="shortcut icon" href="<?php echo SITE_PATH; ?>favicons/favicon.ico">
    <meta name="apple-mobile-web-app-title" content="F1 Companion">
    <meta name="application-name" content="F1 Companion">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="msapplication-config" content="<?php echo SITE_PATH; ?>favicons/browserconfig.xml">
    <meta name="theme-color" content="#f3f8fe">
    <title>F1 Companion - Strona główna</title>

    <link rel="stylesheet" href="<?php echo APP_RES; ?>css/style.css?v=1">
    <link rel="manifest" href="<?php echo SITE_PATH; ?>manifest.json">
    <script>
        if ('serviceWorker' in navigator) {
  navigator.serviceWorker.register('<?php echo SITE_PATH; ?>service-worker.js')
  .then(function(registration) {
    console.log('Registration successful, scope is:', registration.scope);
  })
  .catch(function(error) {
    console.log('Service worker registration failed, error:', error);
  });
}
    </script>
</head>
<body>
    <nav>
        <a href="<?php echo SITE_PATH; ?>index.php"><img src="<?php echo APP_RES; ?>img/home_active.svg" alt=""></a>
        <a href="<?php echo APP_PATH; ?>calendar.php"><img src="<?php echo APP_RES; ?>img/nav_calendar.svg" alt=""></a>
        <a href="<?php echo APP_PATH; ?>results.php"><img src="<?php echo APP_RES; ?>img/results.svg" alt=""></a>
    </nav>
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