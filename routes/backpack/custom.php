<?php

// --------------------------
// Custom Backpack Routes
// --------------------------
// This route file is loaded automatically by Backpack\Base.
// Routes you generate using Backpack\Generators will be placed here.

use Illuminate\Support\Facades\Route;

Route::group([
    'prefix'     => config('backpack.base.route_prefix', 'admin'),
    'middleware' => array_merge(
        (array) config('backpack.base.web_middleware', 'web'),
        (array) config('backpack.base.middleware_key', 'admin')
    ),
    'namespace'  => 'App\Http\Controllers\Admin',
], function () { // custom admin routes

    Route::get('test/ajax-category-options', 'SchoolCrudController@categoryOptions');
    Route::crud('/school', 'SchoolCrudController');
    Route::crud('/school/sclass', 'SclassCrudController');
    Route::crud('/school-{school_id}/class_list','SclassCrudController');
    Route::crud('/school/sclass/student', 'StudentCrudController');
    Route::crud('/school-{school_id}/class-{class_id}/student_list','StudentCrudController');

}); // this should be the absolute last line of this file
