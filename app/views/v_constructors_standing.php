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
        <?php $this->Template->showStanding(1, 'mercedes_white', 'Mercedes', 573); ?>
        </div>
    </div>
</body>

</html>