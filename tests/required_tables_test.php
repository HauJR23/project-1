<?php

require __DIR__ . '/../commons/env.php';
require __DIR__ . '/../commons/function.php';
require __DIR__ . '/../models/admin/Order.php';

$db = connectDB();

foreach (['pt_thanh_toan', 'lien_he'] as $table) {
    $stmt = $db->prepare(
        'SELECT COUNT(*) FROM information_schema.TABLES
         WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = :table'
    );
    $stmt->execute([':table' => $table]);

    if ((int) $stmt->fetchColumn() !== 1) {
        fwrite(STDERR, "Missing required table: {$table}" . PHP_EOL);
        exit(1);
    }
}

$order = (new Order($db))->getById(1);
if (!$order || empty($order['ten_pt_thanh_toan'])) {
    fwrite(STDERR, 'Order 1 must resolve its payment method.' . PHP_EOL);
    exit(1);
}

echo "Required tables and order payment lookup are available." . PHP_EOL;
