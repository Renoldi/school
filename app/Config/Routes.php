<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
//  ['filter' => 'Auth'], 
$routes->get('/', 'Home::index');

$routes->group('api', function ($routes) {
    $routes->post('Teachers/login', 'Teachers::login');
    $routes->post('Students/login', 'Students::login');
    $routes->get('Subjects', 'Subjects::index');
    $routes->get('Students/paging/(:any)/(:num)/(:num)', 'Students::paging/$1/$2/$3',['filter' => 'Auth']);
});
// $routes->group('api', ['filter' => ['Auth','Role:5']], function ($routes) {
$routes->group('api', ['filter' => 'Auth'], function ($routes) {
    $routes->post('Classes/fromXl', 'Classes::fromXl');
    $routes->post('Exams/fromXl', 'Exams::fromXl');
    $routes->post('Hoomrooms/fromXl', 'Hoomrooms::fromXl');
    $routes->post('Privileges/fromXl', 'Privileges::fromXl');
    $routes->post('Resultexams/fromXl', 'Resultexams::fromXl');
    $routes->post('Rooms/fromXl', 'Rooms::fromXl');
    $routes->post('Scheduleexams/fromXl', 'Scheduleexams::fromXl');
    // $routes->get('Students/details', 'Students::details', ['filter' => 'Role:1']);
    $routes->get('Students/details', 'Students::details', ['filter' => 'Role:1']);
    $routes->post('Students/fromXl', 'Students::fromXl');
    $routes->post('Subjects/fromXl', 'Subjects::fromXl');
    $routes->get('Teachers/details', 'Teachers::details');
    $routes->post('Teachers/fromXl', 'Teachers::fromXl');
    $routes->resource('Classes');
    $routes->resource('Exams');
    $routes->resource('Hoomrooms');
    $routes->resource('Privileges');
    $routes->resource('Resultexams');
    $routes->resource('Rooms');
    $routes->resource('Scheduleexams');
    $routes->resource('Students');
    $routes->resource('Subjects');
    $routes->resource('Teachers');
});

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
