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

Route::get('/', function () {
	return view('welcome');
});

// Route::get('Huykhang', function () {
// 	return "Xin chao cac ban";
// });

//Truyen tham so
Route::get('Hoten/{ten}', function ($ten) {
	echo "Ten ban la :" . $ten;
});

Route::get('Ngaythang/{ngay}', function ($ngay) {
	echo "Hom nay ngay :" . $ngay;
})->where(['ngay' => '[0-9a-zA-Z]{5}']);

//Dinh danh
Route::get('route1', ['as' => 'myroute', function () {
	echo "Xin chao cac ban";
}]);

Route::get('route2', function () {
	echo "hello everybody";
})->name('myroute2');

Route::get('goiten', function () {
	return redirect()->route('myroute2');
});

//route group bai 7
Route::get('admin/trangchu', [
	'as' => 'home',
	'uses' => 'UserController@getHome',
]);
//admin
Route::get('Admin', function () {
	return view('admin.layouts.index');
});
Route::get('admin/dangnhap', 'UserController@getDangnhapAdmin');
Route::post('admin/dangnhap', 'UserController@postDangnhapAdmin');
Route::get('admin/logout', 'UserController@getDangxuatAdmin');

Route::group(['prefix' => 'admin', 'middleware' => 'adminLogin'], function () {
	Route::group(['prefix' => 'user', 'middleware' => 'userLogin'], function () {
		//admin/user/danhsach
		Route::get('danhsach', 'UserController@getDanhsach');
		Route::post('danhsach', 'UserController@postDanhsach');
		//admin/user/sua

		//admin/user/them
		Route::get('them', 'UserController@getThem');
		Route::post('them', 'UserController@postThem');
		//admin/user/xoa
		Route::get('xoa/{id}', 'UserController@getXoa');
	});
	Route::get('user/sua/{id}', 'UserController@getSua');
	Route::post('user/sua/{id}', 'UserController@postSua');

	Route::group(['prefix' => 'khachhang'], function () {
		//admin/khachhang/danhsach
		Route::get('danhsach', 'KhachhangController@getDanhsach');
		Route::post('danhsach', 'KhachhangController@postDanhsach');
		//admin/khachhang/sua
		Route::get('sua', 'KhachhangController@getSua');
		Route::post('sua', 'KhachhangController@postSua');
		//admin/khachhang/them
		Route::get('them', 'KhachhangController@getThem');
		Route::post('them', 'KhachhangController@postThem');
		//admin/khachhang/xoa
		Route::get('xoa', 'KhachhangController@getXoa');
	});
});