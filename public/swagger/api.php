<?php 
$baseUrl = '../../';
require($baseUrl."vendor/autoload.php"); 
$openapi = \OpenApi\Generator::scan([
    $baseUrl.'app/Controllers',
    $baseUrl.'app/Entities',
    $baseUrl.'app/Models',
]);
header('Content-Type: application/x-yaml');
echo $openapi->toYaml();