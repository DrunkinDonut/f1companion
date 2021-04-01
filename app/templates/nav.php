<nav>
    <a href="<?php echo SITE_PATH.'index.php'; ?>"><img src="<?php if($activeTab === 'home'){ echo APP_RES.'img/home_active.svg';}else{ echo APP_RES.'img/home.svg';} ?>" alt=""></a>
    <a href="<?php echo APP_PATH.'calendar.php'; ?>"><img src="<?php if($activeTab === 'calendar'){ echo APP_RES.'img/nav_calendar_active.svg';}else{ echo APP_RES.'img/nav_calendar.svg';} ?>" alt=""></a>
    <a href="<?php echo APP_PATH.'results.php'; ?>"><img src="<?php if($activeTab === 'results'){ echo APP_RES.'img/results_active.svg';}else{ echo APP_RES.'img/results.svg';} ?>" alt=""></a>
</nav>