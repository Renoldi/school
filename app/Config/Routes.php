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
});

$routes->group('api', ['filter' => 'Auth'], function ($routes) {
    $routes->get('Students/paging/(:any)/(:num)/(:num)', 'Students::paging/$1/$2/$3', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->get('Exams/getExams/(:num)/(:num)/(:num)/(:num)/(:num)', 'Exams::getExams/$1/$2/$3/$4/$5', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->get('Exams/getExamsStudent/(:num)/(:num)/(:num)', 'Exams::getExamsStudent/$1/$2/$3', ['filter' => 'Role:student']);
    $routes->get('Resultexams/myExam/(:any)/(:any)', 'Resultexams::myExam/$1/$2', ['filter' => 'Role:student']);
    $routes->get('Resultexams/exam/(:any)/(:any)/(:num)/(:num)/(:num)', 'Resultexams::exam/$1/$2/$3/$4/$5', ['filter' => 'Role:superadmin,admin,editor']);

    $routes->post('SubjectDepartements/fromXl', 'SubjectDepartements::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Classes/fromXl', 'Classes::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Exams/fromXl', 'Exams::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Hoomrooms/fromXl', 'Hoomrooms::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Departments/fromXl', 'Departments::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Privileges/fromXl', 'Privileges::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Resultexams/fromXl', 'Resultexams::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Rooms/fromXl', 'Rooms::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Scheduleexams/fromXl', 'Scheduleexams::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Students/fromXl', 'Students::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Subjects/fromXl', 'Subjects::fromXl', ['filter' => 'Role:superadmin,admin']);
    $routes->post('Teachers/fromXl', 'Teachers::fromXl', ['filter' => 'Role:superadmin,admin']);

    $routes->get('Teachers/details', 'Teachers::details', ['filter' => 'Role:superadmin,admin,teacher,editor']);
    $routes->get('Students/details', 'Students::details', ['filter' => ['Auth','Role:superadmin,admin,editor,student']]);

    $routes->delete('Classes/(:num)', 'Classes::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('SubjectDepartements/(:num)', 'SubjectDepartements::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Departments/(:num)', 'Departments::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Exams/(:num)', 'Exams::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Hoomrooms/(:num)', 'Hoomrooms::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Resultexams/(:num)', 'Resultexams::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Rooms/(:num)', 'Rooms::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Scheduleexams/(:num)', 'Scheduleexams::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Students/(:num)', 'Students::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Subjects/(:num)', 'Subjects::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);
    $routes->delete('Teachers/(:num)', 'Teachers::delete/$1', ['filter' => 'Role:superadmin,admin,editor']);

    $routes->resource('Classes', ['filter' => 'Role:superadmin,admin,editor', 'except' => 'delete,new'],);
    $routes->resource('SubjectDepartements', ['filter' => 'Role:superadmin,admin,editor', 'except' => 'delete,new'],);
    $routes->resource('Departments', ['filter' => 'Role:superadmin,admin,editor', 'except' => 'delete,new'],);
    $routes->resource('Exams', ['filter' => 'Role:superadmin,admin,editor', 'except' => 'delete,new']);
    $routes->resource('Hoomrooms', ['filter' => 'Role:superadmin,admin,editor', 'except' => 'delete,new']);
    $routes->resource('Resultexams', ['filter' => 'Role:superadmin,admin,editor', 'except' => 'delete,new']);
    $routes->resource('Rooms', ['filter' => 'Role:superadmin,admin,editor', 'except' => 'delete,new']);
    $routes->resource('Scheduleexams', ['filter' => 'Role:superadmin,admin,editor', 'except' => 'delete,new']);
    $routes->resource('Students', ['filter' => 'Role:superadmin,admin,editor', 'except' => 'delete,new']);
    $routes->resource('Subjects', ['filter' => 'Role:superadmin,admin,editor', 'except' => 'delete,new']);
    $routes->resource('Teachers', ['filter' => 'Role:superadmin,admin,editor', 'except' => 'delete,new']);

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
