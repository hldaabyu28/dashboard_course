<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\MaterialController;

Route::get('/', function () {
    return view('welcome');
});

Route::resource('courses', CourseController::class);

Route::resource('courses.materials', MaterialController::class)->shallow();
