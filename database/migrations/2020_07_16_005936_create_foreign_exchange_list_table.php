<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateForeignExchangeListTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('foreign_exchange_list', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->char('code_all', 100)->nullable(false)->default('')->comment('代码全称');
            $table->char('code', 100)->nullable(false)->default('')->comment('代码');
            $table->char('name', 100)->nullable(false)->default('')->comment('名称');
            $table->string('icon', 255)->nullable(false)->default('')->comment('图标');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('foreign_exchange_list');
    }
}
