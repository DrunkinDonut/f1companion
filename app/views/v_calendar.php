<!DOCTYPE html>
<html lang="pl">

<head>
    <?php $this->load(APP_PATH . 'templates/t_head.php'); ?>
    <title>F1 Companion - Kalendarz</title>
</head>

<body>
    <?php $this->Template->showNav('calendar'); ?>
    <div class="app_container">
        <h2>Kalendarz<span class="season_year">Sezon 2021</span></h2>
        <?php $this->Template->showRaceCard(1, 'Bahrain Grand Prix', 'Sakhir, Bahrain', '28.03.2021', '17:00'); ?>
        <?php $this->Template->showRaceCard(2, 'Emilia Romagna Grand Prix', 'Imola, Italy', '18.04.2021', '15:00'); ?>
    </div>
</body>

</html>