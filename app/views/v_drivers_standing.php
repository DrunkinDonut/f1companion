<!DOCTYPE html>
<html lang="pl">

<head>
    <?php $this->load(APP_PATH . 'templates/t_head.php'); ?>
    <title>F1 Companion - Klasyfikacja kierowców</title>
</head>

<body>
    <?php $this->Template->showNav(''); ?>
    <div class="app_container">
        <h2 class="h2_with_arrow"><a class="arrow_back_icon" href="<?php echo SITE_PATH; ?>app/results.php"><img src="<?php echo APP_RES; ?>img/arrow_back.svg" alt=""></a>Klasyfikacja kierowców</h2>
        <div class="standings">
            <?php $this->Template->showStanding(1, '#08A49E', 'mercedes_white', 'Lewis Hamilton', 365.5);
            $this->Template->showStanding(2, '#08A49E', 'mercedes_white', 'Valterri Bottas', 355.5); ?>
        </div>
    </div>
</body>

</html>