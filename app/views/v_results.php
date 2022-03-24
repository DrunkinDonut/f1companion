<!DOCTYPE html>
<html lang="pl">

<head>
    <?php $this->load(APP_PATH . 'templates/t_head.php'); ?>
    <title>F1 Companion - Statystyki</title>
</head>

<body>
    <?php $this->Template->showNav('results'); ?>
    <div class="app_container">
        <h2>Statystyki<?php $this->load(APP_PATH . 'templates/t_season_year_input.php'); ?></h2>
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
        <?php $this->F1Companion->showEndedRacesHyperlinks(); ?>
    </div>
</body>

</html>