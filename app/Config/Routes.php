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
    $routes->get('ReportStudent', 'ReportStudent::index');
    $routes->get('ReportStudent/report/(:num)/(:num)/(:num)/(:num)/(:num)', 'ReportStudent::report/$1/$2/$3/$4/$5');
    $routes->get('Teacher/countDuration', 'Teacher::countDuration');
    $routes->post('Teacher/login', 'Teacher::login');
    $routes->post('Student/login', 'Student::login');
});

$routes->group('api', ['filter' => 'Auth'], function ($routes) {
    $routes->get('Exam/getExam/(:num)/(:num)/(:num)/(:num)/(:num)', 'Exam::getExam/$1/$2/$3/$4/$5', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->get('Exam/getExamStudent/(:num)/(:num)/(:num)', 'Exam::getExamStudent/$1/$2/$3', ['filter' => ['Role:student']]);
    $routes->get('Resultexam/myExam/(:any)/(:any)', 'Resultexam::myExam/$1/$2', ['filter' => ['Role:student']]);
    $routes->get('Resultexam/exam/(:any)/(:any)/(:num)/(:num)/(:num)', 'Resultexam::exam/$1/$2/$3/$4/$5', ['filter' => ['Role:superadmin,admin,editor']]);

    // paging
    $routes->get('Employee/paging/(:any)/(:num)/(:num)', 'Employee::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Classs/paging/(:any)/(:num)/(:num)', 'Classs::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Department/paging/(:any)/(:num)/(:num)', 'Department::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('EducationLevel/paging/(:any)/(:num)/(:num)', 'EducationLevel::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Exam/paging/(:any)/(:num)/(:num)', 'Exam::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Group/paging/(:any)/(:num)/(:num)', 'Group::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Hoomroom/paging/(:any)/(:num)/(:num)', 'Hoomroom::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Major/paging/(:any)/(:num)/(:num)', 'Major::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Privilege/paging/(:any)/(:num)/(:num)', 'Privilege::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Rank/paging/(:any)/(:num)/(:num)', 'Rank::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Resultexam/paging/(:any)/(:num)/(:num)', 'Resultexam::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Room/paging/(:any)/(:num)/(:num)', 'Room::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Scheduleexam/paging/(:any)/(:num)/(:num)', 'Scheduleexam::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('School/paging/(:any)/(:num)/(:num)', 'School::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('SubjectDepartement/paging/(:any)/(:num)', 'SubjectDepartement::paging/$1/$2', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Subject/paging/(:any)/(:num)/(:num)', 'Subject::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('SubjectTeacher/paging/(:any)/(:num)', 'SubjectTeacher::paging/$1/$2', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Task/paging/(:any)/(:num)/(:num)', 'Task::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Teacher/paging/(:any)/(:num)/(:num)', 'Teacher::paging/$1/$2/$3', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('TeacherTask/paging/(:any)/(:num)', 'TeacherTask::paging/$1/$2', ['filter' => ['Role:superadmin,admin']]);
    $routes->get('Student/paging/(:any)/(:num)/(:num)/(:num)/(:num)', 'Student::paging/$1/$2/$3/$4/$5', ['filter' => ['Role:superadmin,admin,editor']]);

    // count
    $routes->post('Employee/count', 'Employee::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Classs/count', 'Classs::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Department/count', 'Department::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('EducationLevel/count', 'EducationLevel::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Exam/count', 'Exam::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Group/count', 'Group::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Hoomroom/count', 'Hoomroom::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Major/count', 'Major::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Privilege/count', 'Privilege::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Rank/count', 'Rank::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Resultexam/count', 'Resultexam::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Room/count', 'Room::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Scheduleexam/count', 'Scheduleexam::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('School/count', 'School::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Student/count', 'Student::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('SubjectDepartement/count', 'SubjectDepartement::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Subject/count', 'Subject::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('SubjectTeacher/count', 'SubjectTeacher::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Task/count', 'Task::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Teacher/count', 'Teacher::count', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('TeacherTask/count', 'TeacherTask::count', ['filter' => ['Role:superadmin,admin']]);

    // upload excel
    // $routes->post('Status/fromFile', 'Status::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Classs/fromFile', 'Classs::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Department/fromFile', 'Department::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('EducationLevel/fromFile', 'EducationLevel::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Exam/fromFile', 'Exam::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Group/fromFile', 'Group::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Hoomroom/fromFile', 'Hoomroom::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Major/fromFile', 'Major::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Privilege/fromFile', 'Privilege::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Rank/fromFile', 'Rank::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Resultexam/fromFile', 'Resultexam::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Room/fromFile', 'Room::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Scheduleexam/fromFile', 'Scheduleexam::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('School/fromFile', 'School::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Student/fromFile', 'Student::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('SubjectDepartement/fromFile', 'SubjectDepartement::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Subject/fromFile', 'Subject::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('SubjectTeacher/fromFile', 'SubjectTeacher::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Task/fromFile', 'Task::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('Teacher/fromFile', 'Teacher::fromFile', ['filter' => ['Role:superadmin,admin']]);
    $routes->post('TeacherTask/fromFile', 'TeacherTask::fromFile', ['filter' => ['Role:superadmin,admin']]);

    $routes->get('Teacher/details', 'Teacher::details', ['filter' => ['Role:superadmin,admin,teacher,editor']]);
    $routes->get('Student/details', 'Student::details', ['filter' => ['Role:superadmin,admin,editor,student']]);

    // delete
    // $routes->delete('Status/(:num)', 'Status::delete/$1', ['filter' => ['Role:superadmin']]);
    $routes->delete('Classs/(:num)', 'Classs::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Department/(:num)', 'Department::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('EducationLevel/(:num)', 'EducationLevel::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Exam/(:num)', 'Exam::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Group/(:num)', 'Group::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Hoomroom/(:num)', 'Hoomroom::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Major/(:num)', 'Major::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Privilege/(:num)', 'Privilege::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Rank/(:num)', 'Rank::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Resultexam/(:num)', 'Resultexam::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Room/(:num)', 'Room::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Scheduleexam/(:num)', 'Scheduleexam::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('School/(:num)', 'School::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Student/(:num)', 'Student::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('SubjectDepartement/(:num)', 'SubjectDepartement::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Subject/(:num)', 'Subject::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('SubjectTeacher/(:num)', 'SubjectTeacher::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Task/(:num)', 'Task::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('Teacher/(:num)', 'Teacher::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);
    $routes->delete('TeacherTask/(:num)', 'TeacherTask::delete/$1', ['filter' => ['Role:superadmin,admin,editor']]);

    // resource
    $routes->resource('Classs', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Department', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('EducationLevel', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Exam', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Group', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Hoomroom', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Major', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Rank', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Resultexam', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Room', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Scheduleexam', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('School', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Student', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('SubjectDepartement', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Subject', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('SubjectTeacher', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Task', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Teacher', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('TeacherTask', ['filter' => ['Role:superadmin,admin,editor'], 'except' => 'index,delete,new']);
    $routes->resource('Employee', ['filter' => ['Role:superadmin'], 'except' => 'index,delete,new']);

    $routes->resource('Privilege', ['filter' => ['Role:superadmin'], 'only' => 'index,create,show']);
    $routes->resource('Status', ['filter' => ['Role:superadmin'], 'only' => 'index,create,show']);
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
