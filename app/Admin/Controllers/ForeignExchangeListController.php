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
        $grid->column('EN', __('EN'));
        $grid->column('CH', __('CH'));
        $grid->column('HY', __('HY'));
        $grid->column('DC', __('DC'));
        $grid->column('JJ', __('JJ'));
        $grid->column('buyInventoryFee', __('BuyInventoryFee'));
        $grid->column('SellInventoryFee', __('SellInventoryFee'));
        $grid->column('untilOrder', __('UntilOrder'));
        $grid->column('InventoryFeeType', __('InventoryFeeType'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show->field('type', __('Type'));
        $show->field('FS', __('FS'));
        $show->field('S', __('S'));
        $show->field('N', __('N'));
        $show->field('H', __('H'));
        $show->field('L', __('L'));
        $show->field('O', __('O'));
        $show->field('P', __('P'));
        $show->field('V', __('V'));
        $show->field('NV', __('NV'));
        $show->field('B1', __('B1'));
        $show->field('S1', __('S1'));
        $show->field('EN', __('EN'));
        $show->field('CH', __('CH'));
        $show->field('HY', __('HY'));
        $show->field('DC', __('DC'));
        $show->field('JJ', __('JJ'));
        $show->field('buyInventoryFee', __('BuyInventoryFee'));
        $show->field('SellInventoryFee', __('SellInventoryFee'));
        $show->field('untilOrder', __('UntilOrder'));
        $show->field('InventoryFeeType', __('InventoryFeeType'));
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
        $form = new Form(new ForeignExchangeList());

        $form->select('type', __('分类'))->options(['Forex1' => '直接盘', 'Forex2' => '交叉盘'])->default('Forex1');
        $form->text('FS', __('品种名称'));
        $form->text('EN', __('英文名'));
        $form->text('CH', __('中文名'));
        $form->text('HY', __('合约数量'))->default('100000');
        $form->text('DC', __('预付款对冲'))->default('50000');
        $form->text('JJ', __('计价模式'))->default('Forex');
        $form->text('buyInventoryFee', __('BuyInventoryFee'))->default('0.00');
        $form->text('SellInventoryFee', __('SellInventoryFee'))->default('0.00');
        $form->text('untilOrder', __('UntilOrder'))->default('0.00');
        $form->text('InventoryFeeType', __('InventoryFeeType'))->default('点模式');

        return $form;
    }
}
