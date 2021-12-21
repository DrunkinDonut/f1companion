<div class="race_card">
    <div class="race_round">
        R<?php echo $round; ?>
    </div>
    <div class="race_info_block">
        <div class="race_info">
            <div class="race_name">
                <?php echo $raceName; ?>
            </div>
            <div class="race_location">
                <img src="<?php echo APP_RES; ?>img/location.svg" alt="">
                <?php echo $raceLocation; ?>
            </div>
            <div class="race_datetime">
                <img src="<?php echo APP_RES; ?>img/calendar.svg" alt="">
                <?php echo $raceDate; ?>
                <img src="<?php echo APP_RES; ?>img/clock.svg" class="race_card_clock_img" alt="">
                <?php echo $raceTime; ?>
            </div>
        </div>
        <?php if ($addArrow === true) {
            echo '<div class="race_card_arrow">
                <img src="' . APP_RES . 'img/arrow.svg" alt="">
            </div>';
        } ?>
    </div>
</div>