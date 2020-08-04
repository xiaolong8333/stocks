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
        $grid->column('code_all', __('交易品种'));
        $grid->column('name', __('名称'));
        $grid->column('rate', __('最新汇率'));
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

        $form->text('code_all', __('代码全称'));
        //$form->text('name', __('名称'))->default('未命名');

        return $form;
    }
}
