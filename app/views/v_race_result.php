<!DOCTYPE html>
<html lang="pl">

<head>
    <?php $this->load(APP_PATH . 'templates/t_head.php');
    $results = $this->F1ApiData->getRaceResultFromApi($_GET['r'], $_GET['y']); ?>
    <title>F1 Companion - Wyniki wyścigu <?php echo $results['race_info']['name'] . ' ' . $this->F1Companion->getSeasonYear(); ?></title>
</head>

<body>
    <?php $this->Template->showNav(''); ?>
    <div class="app_container">
        <h2 class="h2_with_arrow"><a class="arrow_back_icon" href="<?php echo SITE_PATH; ?>app/results.php"><img src="<?php echo APP_RES; ?>img/arrow_back.svg" alt=""></a>Wyniki wyścigu <?php echo $results['race_info']['name'] . ' ' . $this->F1Companion->getSeasonYear(); ?></h2>
        <div class="race_result_location">
            <?php echo $results['race_info']['circuit'] . ' - ' . $results['race_info']['circuit_city'] . ', ' . $results['race_info']['circuit_country']; ?>
        </div>
        <div class="race_results_block">
            <table class="results">
                <thead>
                    <tr>
                        <th colspan="3">KIEROWCA</th>
                        <th>GRID</th>
                        <th>OKR</th>
                        <th>CZAS</th>
                        <th>PKT</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $i = 0;
                    foreach ($results['race_result'] as $result) {
                        $constructorLogo = $this->F1Companion->getConstructorLogoByName($results['race_result'][$i]['constructor']);
                        echo '<tr>
                                <td class="results_position">' . $results['race_result'][$i]['position'] . '</td>';
                        if (!is_null($constructorLogo['background_color'])) {
                            echo '<td><div class="constructor_logo" style="background-color: ' . $constructorLogo['background_color'] . '"><img src="' . APP_RES . 'img/teams/' . $constructorLogo['logo_img_name'] . '" alt=""></div></td>';
                        }
                        echo '<td class="driver_name">' . $results['race_result'][$i]['driver'] . '</td>
                                <td class="driver_code">' . $results['race_result'][$i]['driver_code'] . '</td>
                                <td>' . $results['race_result'][$i]['grid'] . '</td>
                                <td>' . $results['race_result'][$i]['laps'] . '</td>
                                <td>';
                        if (empty($results['race_result'][$i]['time']) || substr($results['race_result'][$i]['time'], 0, 2) === '+-' || $results['race_result'][$i]['status'] == '+1 Lap') {
                            echo $results['race_result'][$i]['status'];
                        } else {
                            echo $results['race_result'][$i]['time'];
                        }
                        echo '</td>
                                <td class="results_points">' . $results['race_result'][$i]['points'] . '</td>
                            </tr>';
                        $i++;
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>