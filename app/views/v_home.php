<!DOCTYPE html>
<html lang="pl">

<head>
    <?php $this->load(APP_PATH . 'templates/t_head.php'); ?>
    <title>F1 Companion - Strona główna</title>
</head>

<body>
    <?php $this->Template->showNav('home'); ?>
    <div class="app_container">
        <h2>Najbliższy wyścig<span class="season_year">Sezon <?php echo $this->F1Companion->getSeasonYear(); ?></span></h2>
        <?php $this->F1Companion->showNextRaceSchedule(); ?>
        <h2>TOP 5 kierowców</h2>
        <div class="standings">
            <?php $this->F1Companion->showTop5DriverStandings(); ?>
        </div>
        <h2>TOP 3 konstruktorów</h2>
        <div class="standings">
            <?php $this->F1Companion->showTop3ConstructorStandings(); ?>
        </div>
    </div>
</body>

</html>