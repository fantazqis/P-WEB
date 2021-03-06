<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*
Route::get('/', function () {
    return view('welcome');
});


Route::get('/user/{id}/{name}', function($id, $name){
    return 'This is user: ' .$name. ' with ID: '.$id;
});

Route::get('/hello', function(){
    return 'Hello World';
});


*/

Route::get('/', 'PagesController@index');
Route::get('/about', 'PagesController@about');
Route::get('/services', 'PagesController@services');
Auth::routes();
//Route::resource('posts','PostsController');
//Auth::routes();
/*Route::resources([
    'wisatas','WisatasController',
    'posts' => 'PostController'
]); */
Route::resource('wisatas','WisatasController');
//Route::resource(['wisatas'=>'WisatasController',
//'events'=>'EventsController'    
//]);

Route::resource('events','EventsController');

Route::resource('reviews','ReviewsController');

Route::get('/dashboard', 'DashboardController@index');
Route::get('/dashboardadmin', 'AdminController@index');
Route::get('/datawisata', 'AdminController@datatable');
Route::get('/dataevent', 'AdminController@datatable');
Route::get('/datareview', 'AdminController@datatable');