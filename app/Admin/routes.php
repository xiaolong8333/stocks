<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('foreign-exchange-lists', ForeignExchangeListController::class);
    $router->resource('users', UserController::class);
    $router->resource('orders', OrdersController::class);
    $router->resource('money-records', MoneyRecordController::class);
    $router->resource('configs', ConfigsController::class);

});

