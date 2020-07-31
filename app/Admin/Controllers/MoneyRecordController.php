<?php

namespace App\Admin\Controllers;

use App\Models\MoneyRecord;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MoneyRecordController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '金流记录';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new MoneyRecord());

        $grid->column('id', __('Id'));
        $grid->column('user.name', __('用户名'));
        $grid->column('type', __('类型'))
            ->using(['0' => '买', '1' => '卖','2' => '委托买', '3' => '委托卖'])
            ->label([
                0 => 'default',
                1 => 'success',
                2 => 'info',
                3 => 'primary',
            ]);
        $grid->column('title', __('内容标题'));
        $grid->column('trade_number', __('订单号'));
        $grid->column('pre_user_money', __('交易前余额'));
        $grid->column('user_money', __('交易后余额'));
        $grid->column('money', __('变动金额'));
        $grid->column('pre_frozen_money', __('交易前冻结金额'));
        $grid->column('after_frozen_money', __('交易后冻结金额额'));
        $grid->column('frozen_money', __('变动冻结金'));
        $grid->column('remark', __('备注'));
        $grid->column('in_out_id', __('In out id'));
        $grid->column('is_show', __('Is show'));
        $grid->column('sx', __('Sx'));
        $grid->column('yh', __('Yh'));
        $grid->column('ghf', __('Ghf'));
        $grid->column('weituo_id', __('Weituo id'));
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
        $show = new Show(MoneyRecord::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('type', __('Type'));
        $show->field('title', __('Title'));
        $show->field('trade_number', __('Trade number'));
        $show->field('pre_user_money', __('Pre user money'));
        $show->field('user_money', __('User money'));
        $show->field('money', __('Money'));
        $show->field('user_id', __('User id'));
        $show->field('remark', __('Remark'));
        $show->field('in_out_id', __('In out id'));
        $show->field('is_show', __('Is show'));
        $show->field('sx', __('Sx'));
        $show->field('yh', __('Yh'));
        $show->field('ghf', __('Ghf'));
        $show->field('weituo_id', __('Weituo id'));
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
        $form = new Form(new MoneyRecord());

        $form->number('type', __('Type'));
        $form->text('title', __('Title'));
        $form->text('trade_number', __('Trade number'));
        $form->decimal('pre_user_money', __('Pre user money'))->default(0.00);
        $form->decimal('user_money', __('User money'))->default(0.00);
        $form->decimal('money', __('Money'))->default(0.00);
        $form->number('user_id', __('User id'));
        $form->text('remark', __('Remark'));
        $form->number('in_out_id', __('In out id'));
        $form->number('is_show', __('Is show'))->default(1);
        $form->decimal('sx', __('Sx'))->default(0.00);
        $form->decimal('yh', __('Yh'))->default(0.00);
        $form->decimal('ghf', __('Ghf'))->default(0.00);
        $form->number('weituo_id', __('Weituo id'));

        return $form;
    }
}
