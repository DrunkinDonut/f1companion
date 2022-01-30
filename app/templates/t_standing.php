<div class="standing">
    <div class="standing_place_block">
        <div class="standing_place">
            <div class="standing_place_number">
                <?php echo $place; ?>
            </div>
        </div>
        <?php if (!is_null($teamBackgroundColor)) {
            echo '<div class="standing_place_logo" style="background-color: '.$teamBackgroundColor.';">
                <img src="'.APP_RES.'img/teams/'.$teamLogoName.'.svg" alt="">
            </div>';
        }
        ?>
    </div>
    <div class="standing_name">
        <?php echo $name; ?>
    </div>
    <div class="standing_points">
        <?php echo $points; ?>
    </div>
</div>