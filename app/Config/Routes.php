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

$routes->get('/', 'Home::index');

$routes->group('api', function ($routes) {
    $routes->post('Teachers/login', 'Teachers::login');
    $routes->post('Students/login', 'Students::login');
    $routes->get('Subjects', 'Subjects::index');
    $routes->get('Students/paging/(:any)/(:num)/(:num)', 'Students::paging/$1/$2/$3', ['filter' => 'Auth']);
});

$routes->group('api', ['filter' => 'Auth'], function ($routes) {
    $routes->post('Classs/fromXl', 'Classs::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Exams/fromXl', 'Exams::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Hoomrooms/fromXl', 'Hoomrooms::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Privileges/fromXl', 'Privileges::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Resultexams/fromXl', 'Resultexams::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Rooms/fromXl', 'Rooms::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Scheduleexams/fromXl', 'Scheduleexams::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Students/fromXl', 'Students::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Subjects/fromXl', 'Subjects::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Teachers/fromXl', 'Teachers::fromXl', ['filter' => 'Role:superadmin,admin']);
    
    $routes->get('Teachers/details', 'Teachers::details', ['filter' => 'Role:superadmin,admin,teacher,editor']);
    $routes->get('Students/details', 'Students::details', ['filter' => 'Role:superadmin,admin,editor,student']);

    $routes->delete('Classs/(:num)', 'Classs::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Exams/(:num)', 'Exams::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Hoomrooms/(:num)', 'Hoomrooms::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Resultexams/(:num)', 'Resultexams::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Rooms/(:num)', 'Rooms::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Scheduleexams/(:num)', 'Scheduleexams::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Students/(:num)', 'Students::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Subjects/(:num)', 'Subjects::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Teachers/(:num)', 'Teachers::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);

    $routes->resource('Classs', ['except' => 'delete']);
    $routes->resource('Exams', ['except' => 'delete']);
    $routes->resource('Hoomrooms', ['except' => 'delete']);
    $routes->resource('Resultexams', ['except' => 'delete']);
    $routes->resource('Rooms', ['except' => 'delete']);
    $routes->resource('Scheduleexams', ['except' => 'delete']);
    $routes->resource('Students', ['except' => 'delete']);
    $routes->resource('Subjects', ['except' => 'delete']);
    $routes->resource('Teachers', ['except' => 'delete']);

    $routes->resource('Privileges', ['filter' => 'Role:superadmin,admin']);
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
