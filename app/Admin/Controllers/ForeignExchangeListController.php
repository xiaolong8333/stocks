<?php

namespace App\Admin\Controllers;

use App\Models\ForeignExchangeList;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ForeignExchangeListController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '外汇';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ForeignExchangeList());

        $grid->column('id', __('Id'));
        $grid->column('FS', __('品种代码'));
        $grid->column('S', __('唯一完整编码 =M+S+C'));
        $grid->column('type', __('分类'));
        $grid->column('N', __('中文名'));
        $grid->column('P', __('最新价'));
        $grid->column('B1', __('买1'));
        $grid->column('S1', __('卖1'));
        $grid->column('L', __('当天最低价'));
        $grid->column('H', __('当天最高价'));
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
        $show = new Show(ForeignExchangeList::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('code_all', __('代码全称'));
        $show->field('name', __('名称'));
        $show->field('created_at', __('创建时间'));
        $show->field('updated_at', __('更改时间'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new ForeignExchangeList());

        $form->text('FS', __('代码全称'));
        $form->select('type', __('分类'))->options(['Forex1' => '直接盘', 'Forex2' => '交叉盘'])->default('Forex1');
        //$form->text('name', __('名称'))->default('未命名');

        return $form;
    }
}
