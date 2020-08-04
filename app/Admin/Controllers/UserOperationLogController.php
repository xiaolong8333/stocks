<?php

namespace App\Admin\Controllers;

use App\Models\UserOperationLog;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class UserOperationLogController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '用户日志';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new UserOperationLog());
        $grid->disableActions();
        $grid->disableBatchActions();
        $grid->disableCreateButton();
        $grid->column('id', __('Id'));
        $grid->column('user_id', __('用户ID'));
        $grid->column('user_name', __('用户名'));
        $grid->column('content', __('内容'));
        $grid->column('login_ip', __('操作IP'));
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
        $show = new Show(UserOperationLog::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('user_id', __('User id'));
        $show->field('user_name', __('User name'));
        $show->field('content', __('Content'));
        $show->field('login_ip', __('Login ip'));
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
        $form = new Form(new UserOperationLog());

        $form->number('user_id', __('User id'));
        $form->text('user_name', __('User name'));
        $form->text('content', __('Content'));
        $form->text('login_ip', __('Login ip'));

        return $form;
    }
}
