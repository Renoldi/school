<?php 
require("../../vendor/autoload.php");
$openapi = \OpenApi\Generator::scan([
    '../../app/Controllers',
    '../../app/Entities',
    '../../app/Models',
]);
header('Content-Type: application/x-yaml');
echo $openapi->toYaml();