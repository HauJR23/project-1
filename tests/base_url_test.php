<?php

$_SERVER['HTTP_HOST'] = 'localhost:8080';
$_SERVER['SCRIPT_NAME'] = '/custom-shop/index.php';
$_SERVER['HTTPS'] = 'off';

require __DIR__ . '/../commons/env.php';

$expected = 'http://localhost:8080/custom-shop/';

if (BASE_URL !== $expected) {
    fwrite(STDERR, "Expected BASE_URL to be {$expected}, got " . BASE_URL . PHP_EOL);
    exit(1);
}

echo "BASE_URL is derived from the current request." . PHP_EOL;

require __DIR__ . '/../commons/function.php';

$assetUrl = app_url('public/client/assets/css/style.css');
if ($assetUrl !== 'http://localhost:8080/custom-shop/public/client/assets/css/style.css') {
    fwrite(STDERR, "Asset URL did not use BASE_URL: {$assetUrl}" . PHP_EOL);
    exit(1);
}

$legacyHtml = '<link href="/Duan1-main/public/client/assets/css/style.css">';
$rewrittenHtml = rewrite_legacy_base_urls($legacyHtml);
$expectedHtml = '<link href="http://localhost:8080/custom-shop/public/client/assets/css/style.css">';

if ($rewrittenHtml !== $expectedHtml) {
    fwrite(STDERR, "Legacy asset URL was not normalized: {$rewrittenHtml}" . PHP_EOL);
    exit(1);
}

echo "Asset URLs consistently use BASE_URL." . PHP_EOL;
