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
        $grid->filter(function($filter){
            // 去掉默认的id过滤器
            $filter->disableIdFilter();
            $filter->column(1/2, function ($filter) {
                // 在这里添加字段过滤器
                $filter->like('user.name', '用户名');
                $filter->like('trade_no', '订单号');
                $filter->between('created_at','创建时间')->datetime();
            });
        });
        $grid->model()->orderBy('created_at','desc');
        $grid->column('id', __('Id'));
        $grid->column('trade_no', __('订单号'))->label();
        $grid->column('user.name', __('用户'));
        $grid->column('trouble', __('交易量'))->sortable();
        $grid->column('exchangeList.P', __('最新价格'));
        $grid->column('FS', __('交易品种'));
        $grid->column('type', __('订单类型'));
        $grid->column('status', __('状态'))
            ->using(['0' => '未完成交易', '1' => '交易已持仓','2'=>'交易已平仓','3'=>'已撤单'])
            ->label([
                0 => 'default',
                1 => 'success',
                2 => 'warning',
                3 => 'warning',
            ]);
        $grid->column('create_price', __('建仓价格'));
        $grid->column('create_total_price', __('建仓总价'));
        $grid->column('close_price', __('平仓价格'));
        $grid->column('close_total_price', __('平仓总价'));
        $grid->column('fees', __('手续费'));
        $grid->column('deviation', __('偏差'));
        $grid->column('cancel_time', __('订单自动取消时间'))->display(function ($cancel_time) {
            if($cancel_time==0)
                return '无';
            return "<span style='color:blue'>".date('Y-m-d H:i:s',$cancel_time)."</span>";
        });
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
        $show->field('trouble', __('交易量'));
        $show->field('new_value', __('最新价格'));
        $show->field('code_all', __('交易品种'));
        $show->field('buy_price', __('购买价格'));
        $show->field('buy_total_price', __('购买总价'));
        $show->field('sell_price', __('卖出价格'));
        $show->field('sell_total_price', __('卖出总价'));
        $show->field('stop_loss', __('止损'));
        $show->field('stop_profit', __('盈利'));
        $show->field('type', __('订单类型'));
        $show->field('status', __('订单状态'));
        $show->field('floating', __('允许浮动价格'));
        $show->field('remark', __('备注'));
        $show->field('created_at', __('创建时间'));
        $show->field('updated_at', __('更新时间'));

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

        $form->text('trade_no', __('订单号'));
        $form->text('buy_trade', __('买入订单号'));
        $form->number('user_id', __('用户ID'));
        $form->number('number', __('交易量'));
        $form->text('code_all', __('交易品种'));
        $form->text('buy_price', __('购买价格'));
        $form->text('stop_loss', __('止损'));
        $form->text('stop_profit', __('盈利'));
        $form->switch('type', __('订单类型'));
        $form->switch('status', __('订单状态'));
        $form->text('floating', __('允许浮动价格'));
        $form->text('remark', __('备注'));

        return $form;
    }
}
