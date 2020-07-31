<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAddColumnToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->integer('balance')->default(0)->comment("余额")->after("password");
            $table->tinyInteger('status')->unsigned()->default(0)->comment("状态 0 正常 1 冻结")->after("balance");
            $table->tinyInteger('level')->unsigned()->default(0)->comment("等级 0 普通会员 1 超级会员")->after("status");
            $table->timestamp('end_time')->comment("到期时间")->after("level");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('balance');
            $table->dropColumn('status');
            $table->dropColumn('end_time');
            $table->dropColumn('level');
        });
    }
}
