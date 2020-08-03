<?php

namespace App\Admin\Controllers;

use App\Models\Order;
use app\user\validate\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class OrdersController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '订单';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Order());


        $grid->column('id', __('Id'));
        $grid->column('trade_no', __('订单号'))->label();
        $grid->column('user.name', __('用户'));
        $grid->column('number', __('交易量'));
        $grid->column('exchangeList.rate', __('最新价格'));
        $grid->column('code_all', __('交易品种'));
        $grid->column('status_type', __('持仓状态'))
            ->using(['0' => '未持仓', '1' => '持仓'])
            ->label([
                0 => 'default',
                1 => 'success',
            ]);
        $grid->column('type', __('订单类型'))
            ->using(['0' => '即时买', '1' => '即时卖','2' => '委托买', '3' => '委托卖'])
            ->label('info');
        $grid->column('status', __('状态'))
            ->using(['0' => '未完成交易', '1' => '完成交易','2'=>'已撤单'])
            ->label([
                0 => 'default',
                1 => 'success',
                2 => 'warning',
            ]);
        $grid->column('floating', __('允许浮动价格'));
        $grid->column('remark', __('备注'));
        $grid->column('created_at', __('创建时间'));
        $grid->column('updated_at', __('更新时间'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Order::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('trade_no', __('订单号'));
        $show->field('buy_trade', __('买入订单号'));
        $show->field('user.name', __('用户名'));
        $show->field('number', __('交易量'));
        $show->field('new_value', __('最新价格'));
        $show->field('code_all', __('交易品种'));
        $show->field('buy_price', __('购买价格'));
        $show->field('buy_total_price', __('购买总价'));
        $show->field('sell_price', __('卖出价格'));
        $show->field('sell_total_price', __('卖出总价'));
        $show->field('stop_loss', __('止损'));
        $show->field('stop_profit', __('盈利'));
        $show->field('type', __('Type'));
        $show->field('status', __('Status'));
        $show->field('floating', __('允许浮动价格'));
        $show->field('remark', __('备注'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Order());

        $form->text('trade_no', __('Trade no'));
        $form->number('user_id', __('User id'));
        $form->number('number', __('Blance'));
        $form->text('new_value', __('New value'));
        $form->text('code_all', __('Code all'));
        $form->text('buy_price', __('Buy price'));
        $form->text('stop_loss', __('Stop loss'));
        $form->text('stop_profit', __('Stop profit'));
        $form->switch('type', __('Type'));
        $form->switch('status', __('Status'));
        $form->text('floating', __('Floating'));
        $form->text('remark', __('Remark'));

        return $form;
    }
}
