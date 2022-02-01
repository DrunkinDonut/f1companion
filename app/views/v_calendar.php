<!DOCTYPE html>
<html lang="pl">

<head>
    <?php $this->load(APP_PATH . 'templates/t_head.php'); ?>
    <title>F1 Companion - Kalendarz</title>
</head>

<body>
    <?php $this->Template->showNav('calendar'); ?>
    <div class="app_container">
        <h2>Kalendarz<?php $this->load(APP_PATH . 'templates/t_season_year_input.php'); ?></h2>
        <?php $this->F1Companion->showRaceSchedule(); ?>
    </div>
</body>

</html>