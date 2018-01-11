<?php

/* ================== Homepage ================== */
Route::get('/', 'HomeController@index');
Route::get('/home', 'HomeController@index');
Route::auth();

/* ================== Access Uploaded Files ================== */
Route::get('files/{hash}/{name}', 'LA\UploadsController@get_file');

/*
|--------------------------------------------------------------------------
| Admin Application Routes
|--------------------------------------------------------------------------
*/

$as = "";
if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() == 5.3) {
	$as = config('laraadmin.adminRoute').'.';
	
	// Routes for Laravel 5.3
	Route::get('/logout', 'Auth\LoginController@logout');
}

Route::group(['as' => $as, 'middleware' => ['auth', 'permission:ADMIN_PANEL']], function () {
	
	/* ================== Dashboard ================== */
	
	Route::get(config('laraadmin.adminRoute'), 'LA\DashboardController@index');
	Route::get(config('laraadmin.adminRoute'). '/dashboard', 'LA\DashboardController@index');
	
	/* ================== Users ================== */
	Route::resource(config('laraadmin.adminRoute') . '/users', 'LA\UsersController');
	Route::get(config('laraadmin.adminRoute') . '/user_dt_ajax', 'LA\UsersController@dtajax');
	
	/* ================== Uploads ================== */
	Route::resource(config('laraadmin.adminRoute') . '/uploads', 'LA\UploadsController');
	Route::post(config('laraadmin.adminRoute') . '/upload_files', 'LA\UploadsController@upload_files');
	Route::get(config('laraadmin.adminRoute') . '/uploaded_files', 'LA\UploadsController@uploaded_files');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_caption', 'LA\UploadsController@update_caption');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_filename', 'LA\UploadsController@update_filename');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_public', 'LA\UploadsController@update_public');
	Route::post(config('laraadmin.adminRoute') . '/uploads_delete_file', 'LA\UploadsController@delete_file');
	
	/* ================== Roles ================== */
	Route::resource(config('laraadmin.adminRoute') . '/roles', 'LA\RolesController');
	Route::get(config('laraadmin.adminRoute') . '/role_dt_ajax', 'LA\RolesController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/save_module_role_permissions/{id}', 'LA\RolesController@save_module_role_permissions');
	
	/* ================== Permissions ================== */
	Route::resource(config('laraadmin.adminRoute') . '/permissions', 'LA\PermissionsController');
	Route::get(config('laraadmin.adminRoute') . '/permission_dt_ajax', 'LA\PermissionsController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/save_permissions/{id}', 'LA\PermissionsController@save_permissions');
	
	/* ================== Departments ================== */
	Route::resource(config('laraadmin.adminRoute') . '/departments', 'LA\DepartmentsController');
	Route::get(config('laraadmin.adminRoute') . '/department_dt_ajax', 'LA\DepartmentsController@dtajax');
	
	/* ================== Employees ================== */
	Route::resource(config('laraadmin.adminRoute') . '/employees', 'LA\EmployeesController');
	Route::get(config('laraadmin.adminRoute') . '/employee_dt_ajax', 'LA\EmployeesController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/change_password/{id}', 'LA\EmployeesController@change_password');
	

	/* ================== Backups ================== */
	Route::resource(config('laraadmin.adminRoute') . '/backups', 'LA\BackupsController');
	Route::get(config('laraadmin.adminRoute') . '/backup_dt_ajax', 'LA\BackupsController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/create_backup_ajax', 'LA\BackupsController@create_backup_ajax');
	Route::get(config('laraadmin.adminRoute') . '/downloadBackup/{id}', 'LA\BackupsController@downloadBackup');



	/* ================== Patients ================== */
	Route::resource(config('laraadmin.adminRoute') . '/patients', 'LA\PatientsController');
	Route::get(config('laraadmin.adminRoute') . '/patient_dt_ajax', 'LA\PatientsController@dtajax');
	/* ================== Sections ================== */
	Route::resource(config('laraadmin.adminRoute') . '/sections', 'LA\SectionsController');
	Route::get(config('laraadmin.adminRoute') . '/section_dt_ajax', 'LA\Sections@dtajax');

	/* ================== Documents ================== */
	Route::resource(config('laraadmin.adminRoute') . '/documents', 'LA\DocumentsController');
	Route::get(config('laraadmin.adminRoute') . '/document_dt_ajax', 'LA\DocumentsController@dtajax');

	/* ================== Documents ================== */
	Route::resource(config('laraadmin.adminRoute') . '/documents', 'LA\DocumentsController');
	Route::get(config('laraadmin.adminRoute') . '/document_dt_ajax', 'LA\DocumentsController@dtajax');

/* ================== Doctors ================== */
	Route::resource(config('laraadmin.adminRoute') . '/doctors', 'LA\DoctorsController');
	Route::get(config('laraadmin.adminRoute') . '/doctor_dt_ajax', 'LA\DoctorsController@dtajax');


	/* ================== Schedules ================== */
	Route::resource(config('laraadmin.adminRoute') . '/schedules', 'LA\SchedulesController');
	Route::get(config('laraadmin.adminRoute') . '/schedule_dt_ajax', 'LA\SchedulesController@dtajax');

	/* ================== Appointments ================== */
	Route::resource(config('laraadmin.adminRoute') . '/appointments', 'LA\AppointmentsController');
	Route::get(config('laraadmin.adminRoute') . '/appointment_dt_ajax', 'LA\AppointmentsController@dtajax');

	/* ================== Insurances ================== */
	Route::resource(config('laraadmin.adminRoute') . '/insurances', 'LA\InsurancesController');
	Route::get(config('laraadmin.adminRoute') . '/insurance_dt_ajax', 'LA\InsurancesController@dtajax');

	/* ================== Patient_Case_Studies ================== */
	Route::resource(config('laraadmin.adminRoute') . '/patient_case_studies', 'LA\Patient_Case_StudiesController');
	Route::get(config('laraadmin.adminRoute') . '/patient_case_study_dt_ajax', 'LA\Patient_Case_StudiesController@dtajax');

	/* ================== Patient_Case_Studies ================== */
	Route::resource(config('laraadmin.adminRoute') . '/patient_case_studies', 'LA\Patient_Case_StudiesController');
	Route::get(config('laraadmin.adminRoute') . '/patient_case_study_dt_ajax', 'LA\Patient_Case_StudiesController@dtajax');

	/* ================== Patient_Case_Studies ================== */
	Route::resource(config('laraadmin.adminRoute') . '/patient_case_studies', 'LA\Patient_Case_StudiesController');
	Route::get(config('laraadmin.adminRoute') . '/patient_case_study_dt_ajax', 'LA\Patient_Case_StudiesController@dtajax');



	/* ================== Beds ================== */
	Route::resource(config('laraadmin.adminRoute') . '/beds', 'LA\BedsController');
	Route::get(config('laraadmin.adminRoute') . '/bed_dt_ajax', 'LA\BedsController@dtajax');

	/* ================== Bed_Assigns ================== */
	Route::resource(config('laraadmin.adminRoute') . '/bed_assigns', 'LA\Bed_AssignsController');
	Route::get(config('laraadmin.adminRoute') . '/bed_assign_dt_ajax', 'LA\Bed_AssignsController@dtajax');


	/* ================== Noticeboards ================== */
	Route::resource(config('laraadmin.adminRoute') . '/noticeboards', 'LA\NoticeboardsController');
	Route::get(config('laraadmin.adminRoute') . '/noticeboard_dt_ajax', 'LA\NoticeboardsController@dtajax');

	/* ================== Birth_Reports ================== */
	Route::resource(config('laraadmin.adminRoute') . '/birth_reports', 'LA\Birth_ReportsController');
	Route::get(config('laraadmin.adminRoute') . '/birth_report_dt_ajax', 'LA\Birth_ReportsController@dtajax');

	/* ================== Death_Reports ================== */
	Route::resource(config('laraadmin.adminRoute') . '/death_reports', 'LA\Death_ReportsController');
	Route::get(config('laraadmin.adminRoute') . '/death_report_dt_ajax', 'LA\Death_ReportsController@dtajax');

	/* ================== Operation_Reports ================== */
	Route::resource(config('laraadmin.adminRoute') . '/operation_reports', 'LA\Operation_ReportsController');
	Route::get(config('laraadmin.adminRoute') . '/operation_report_dt_ajax', 'LA\Operation_ReportsController@dtajax');
});
