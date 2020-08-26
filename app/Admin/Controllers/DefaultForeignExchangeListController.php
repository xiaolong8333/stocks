<?php

namespace App\Admin\Controllers;

use App\Models\DefaultForeignExchangeList;
use App\Models\ForeignExchangeList;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class DefaultForeignExchangeListController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '用户名默认外汇';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new DefaultForeignExchangeList());

        $grid->column('id', __('Id'));
        $grid->column('FS', __('品种名称'));
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
        $show = new Show(DefaultForeignExchangeList::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('FS', __('FS'));
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
        $directors = ForeignExchangeList::select(['id','FS'])->get()->toArray();
        $option=[];
        foreach($directors as $key=>$value){
            $option[$value['FS']] = $value['FS'];
        }
        $form = new Form(new DefaultForeignExchangeList());

        $form->select('FS', '品种名称')->options($option);

        return $form;
    }
}
