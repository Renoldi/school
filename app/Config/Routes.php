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
$routes->setDefaultController('404');
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
});

$routes->group('api', ['filter' => 'Auth'], function ($routes) {
    $routes->get('Students/paging/(:any)/(:num)/(:num)/(:num)/(:num)', 'Students::paging/$1/$2/$3/$4/$5', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->get('Exams/getExams/(:num)/(:num)/(:num)/(:num)/(:num)', 'Exams::getExams/$1/$2/$3/$4/$5', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->get('Exams/getExamsStudent/(:num)/(:num)/(:num)', 'Exams::getExamsStudent/$1/$2/$3', ['filter' => ['Auth', 'Role:student']]);
    $routes->get('Resultexams/myExam/(:any)/(:any)', 'Resultexams::myExam/$1/$2', ['filter' => ['Auth', 'Role:student']]);
    $routes->get('Resultexams/exam/(:any)/(:any)/(:num)/(:num)/(:num)', 'Resultexams::exam/$1/$2/$3/$4/$5', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);

    // count
    $routes->post('Classes/count', 'Classes::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Departments/count', 'Departments::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('EducationLevels/count', 'EducationLevels::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Exams/count', 'Exams::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Groups/count', 'Groups::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Hoomrooms/count', 'Hoomrooms::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Majors/count', 'Majors::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Privileges/count', 'Privileges::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Ranks/count', 'Ranks::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Resultexams/count', 'Resultexams::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Rooms/count', 'Rooms::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Scheduleexams/count', 'Scheduleexams::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Schools/count', 'Schools::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Students/count', 'Students::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('SubjectDepartements/count', 'SubjectDepartements::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Subjects/count', 'Subjects::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('SubjectTeachers/count', 'SubjectTeachers::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Tasks/count', 'Tasks::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Teachers/count', 'Teachers::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('TeacherTasks/count', 'TeacherTasks::count', ['filter' => ['Auth', 'Role:superadmin,admin']]);

    // upload excel
    $routes->post('Classes/fromFile', 'Classes:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Departments/fromFile', 'Departments:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('EducationLevels/fromFile', 'EducationLevels:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Exams/fromFile', 'Exams:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Groups/fromFile', 'Groups:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Hoomrooms/fromFile', 'Hoomrooms:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Majors/fromFile', 'Majors:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Privileges/fromFile', 'Privileges:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Ranks/fromFile', 'Ranks:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Resultexams/fromFile', 'Resultexams:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Rooms/fromFile', 'Rooms:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Scheduleexams/fromFile', 'Scheduleexams:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Schools/fromFile', 'Schools:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Students/fromFile', 'Students:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('SubjectDepartements/fromFile', 'SubjectDepartements:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Subjects/fromFile', 'Subjects:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('SubjectTeachers/fromFile', 'SubjectTeachers:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Tasks/fromFile', 'Tasks:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('Teachers/fromFile', 'Teachers:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);
    $routes->post('TeacherTasks/fromFile', 'TeacherTasks:: fromFile', ['filter' => ['Auth', 'Role:superadmin,admin']]);

    $routes->get('Teachers/details', 'Teachers::details', ['filter' => ['Auth', 'Role:superadmin,admin,teacher,editor']]);
    $routes->get('Students/details', 'Students::details', ['filter' => ['Auth', 'Role:superadmin,admin,editor,student']]);

    // delete
    $routes->delete('Classes/(:num)', 'Classes::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Departments/(:num)', 'Departments::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('EducationLevels/(:num)', 'EducationLevels::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Exams/(:num)', 'Exams::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Groups/(:num)', 'Groups::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Hoomrooms/(:num)', 'Hoomrooms::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Majors/(:num)', 'Majors::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Privileges/(:num)', 'Privileges::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Ranks/(:num)', 'Ranks::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Resultexams/(:num)', 'Resultexams::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Rooms/(:num)', 'Rooms::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Scheduleexams/(:num)', 'Scheduleexams::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Schools/(:num)', 'Schools::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Students/(:num)', 'Students::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('SubjectDepartements/(:num)', 'SubjectDepartements::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Subjects/(:num)', 'Subjects::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('SubjectTeachers/(:num)', 'SubjectTeachers::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Tasks/(:num)', 'Tasks::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('Teachers/(:num)', 'Teachers::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);
    $routes->delete('TeacherTasks/(:num)', 'TeacherTasks::delete/$1', ['filter' => ['Auth', 'Role:superadmin,admin,editor']]);

    // resource
    $routes->resource('Classes', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Departments', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('EducationLevels', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Exams', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Groups', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Hoomrooms', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Majors', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Ranks', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Resultexams', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Rooms', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Scheduleexams', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Schools', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Students', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('SubjectDepartements', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Subjects', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('SubjectTeachers', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Tasks', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('Teachers', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);
    $routes->resource('TeacherTasks', ['filter' => ['Auth', 'Role:superadmin,admin,editor'], 'except' => 'delete,new']);

    $routes->resource('Privileges', ['filter' => ['Auth', 'Role:superadmin,admin']]);
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
