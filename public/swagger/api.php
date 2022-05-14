<?php 
// ini_set('display_errors', '1');
// ini_set('display_startup_errors', '1');
// error_reporting(E_ALL);
define('FCPATH', __DIR__ . DIRECTORY_SEPARATOR);
 
chdir(__DIR__); 
$pathsConfig = FCPATH . '../../'; 

require realpath($pathsConfig."vendor/autoload.php") ?: $pathsConfig."vendor/autoload.php";
  
$openapi = \OpenApi\Generator::scan([
    $pathsConfig.'app/Controllers',
    $pathsConfig.'app/Entities',
    $pathsConfig.'app/Models',
]);
header('Content-Type: application/x-yaml');
echo $openapi->toYaml();