<?php

namespace App\Admin\Controllers;

use App\Models\Announcement;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AnnouncementController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '消息';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Announcement());

        $grid->column('id', __('Id'));
        $grid->column('title', __('标题'));
        $grid->column('content', __('类容'));
        $grid->column('if_cancel', __('是否撤销'));
        $grid->column('user.name', __('用户名'));
        $grid->column('cancel_time', __('撤销时间'));
        $grid->column('priority', __('优先级'));
        $grid->column('cement_type', __('消息类型'));
        $grid->column('user_type', __('用户类型'));
        $grid->column('created_at', __('创建时间'));
        $grid->column('updated_at', __('修改时间'));

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
        $show = new Show(Announcement::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('content', __('Content'));
        $show->field('if_cancel', __('If cancel'));
        $show->field('user_id', __('User id'));
        $show->field('cancel_time', __('Cancel time'));
        $show->field('priority', __('Priority'));
        $show->field('cement_type', __('Cement type'));
        $show->field('user_type', __('User type'));
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
        $form = new Form(new Announcement());

        $form->text('title', __('Title'));
        $form->textarea('content', __('Content'));
        $form->switch('if_cancel', __('If cancel'));
        $form->number('user_id', __('User id'));
        $form->datetime('cancel_time', __('Cancel time'))->default(date('Y-m-d H:i:s'));
        $form->switch('priority', __('Priority'));
        $form->switch('cement_type', __('Cement type'));
        $form->switch('user_type', __('User type'));

        return $form;
    }
}
