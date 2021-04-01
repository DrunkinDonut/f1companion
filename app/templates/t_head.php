<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="apple-touch-icon" sizes="180x180" href="<?php echo SITE_PATH; ?>favicons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="<?php echo SITE_PATH; ?>favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="<?php echo SITE_PATH; ?>favicons/favicon-16x16.png">
<link rel="mask-icon" href="<?php echo SITE_PATH; ?>favicons/safari-pinned-tab.svg" color="#f10e0e">
<link rel="shortcut icon" href="<?php echo SITE_PATH; ?>favicons/favicon.ico">
<meta name="apple-mobile-web-app-title" content="F1 Companion">
<meta name="application-name" content="F1 Companion">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="msapplication-config" content="<?php echo SITE_PATH; ?>favicons/browserconfig.xml">
<meta name="theme-color" content="#f3f8fe">

<link rel="stylesheet" href="<?php echo APP_RES; ?>css/style.css">
<link rel="manifest" href="<?php echo SITE_PATH; ?>manifest.json">
<script type="text/javascript">
    if ('serviceWorker' in navigator) {
        window.addEventListener('load', function() {
            navigator.serviceWorker.register('<?php echo SITE_PATH; ?>service-worker.js')
            .then(function(registration) {
                console.log('Registration successful, scope is:', registration.scope);
            })
            .catch(function(error) {
                console.log('Service worker registration failed, error:', error);
            });
        });
    }
</script>