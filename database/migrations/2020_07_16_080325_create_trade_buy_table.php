<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTradeBuyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('trade_buys', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('trade_no')->nullable(false)->default('')->unique()->comment("订单号");
            $table->integer('user_id')->nullable(false)->default(0)->comment("用户ID");
            $table->integer('blance')->nullable(false)->default(0)->comment("币种数量");
            $table->string('new_value')->nullable(false)->default(0)->comment("当前价值");
            $table->char('code_all', 100)->nullable(false)->default('')->comment('代码全称');
            $table->char('scur', 100)->nullable(false)->default('')->comment('原币种');
            $table->char('tcur', 100)->nullable(false)->default('')->comment('目标币种');
            $table->string('buy_price')->nullable(false)->default('')->comment("购买价格");
            $table->string('stop_loss')->nullable(false)->default('')->comment("止损");
            $table->string('stop_profit')->nullable(false)->default('')->comment("盈利");
            $table->tinyInteger('status')->nullable(false)->default(0)->comment("状态 0=>正常持仓 1=>已卖");
            $table->string('remark')->nullable(true)->default('')->comment("备注");
            $table->index('user_id');
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
        Schema::dropIfExists('trade_buys');
    }
}
