<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAddRateToForeignExchangeListTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('foreign_exchange_list', function (Blueprint $table) {
            $table->string('rate')->default('')->comment("汇率")->after("name");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('foreign_exchange_list', function (Blueprint $table) {
            $table->string('rate');
        });
    }
}
