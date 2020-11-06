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
        $grid->column('EN', __('英文名'));
        $grid->column('CH', __('中文名'));
        $grid->column('HY', __('合约数量'));
        $grid->column('DC', __('预付款对冲'));
        $grid->column('JJ', __('计价模式'));
        $grid->column('buyInventoryFee', __('买入库存费'));
        $grid->column('SellInventoryFee', __('卖出库存费'));
        $grid->column('untilOrder', __('挂单取消时间'));
        $grid->column('InventoryFeeType', __('库存费类型'));
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
        $show->field('type', __('分类'));
        $show->field('FS', __('品种代码'));
        $show->field('S', __('唯一完整编码 =M+S+C'));
        $show->field('N', __('中文名'));
        $show->field('H', __('当天最高价'));
        $show->field('L', __('当天最低价'));
        $show->field('O', __('开盘价'));
        $show->field('P', __('最新价'));
        $show->field('V', __('当天交易量'));
        $show->field('NV', __('最新成交量'));
        $show->field('B1', __('买一价'));
        $show->field('S1', __('卖一价'));
        $show->field('EN', __('英文名'));
        $show->field('CH', __('中文名'));
        $show->field('HY', __('合约数量'));
        $show->field('DC', __('预付款对冲'));
        $show->field('JJ', __('计价模式'));
        $show->field('buyInventoryFee', __('买入库存费'));
        $show->field('SellInventoryFee', __('卖出库存费'));
        $show->field('untilOrder', __('挂单取消时间'));
        $show->field('InventoryFeeType', __('库存费类型'));
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
        $form = new Form(new ForeignExchangeList());

        $form->select('type', __('分类'))->options(['Forex1' => '直接盘', 'Forex2' => '交叉盘'])->default('Forex1');
        $form->text('FS', __('品种名称'));
        $form->text('EN', __('英文名'));
        $form->text('CH', __('中文名'));
        $form->text('HY', __('合约数量'))->default('100000');
        $form->text('DC', __('预付款对冲'))->default('50000');
        $form->text('JJ', __('计价模式'))->default('Forex');
        $form->text('buyInventoryFee', __('买入库存费'))->default('0.00');
        $form->text('SellInventoryFee', __('卖出库存费'))->default('0.00');
        $form->text('untilOrder', __('挂单取消时间'))->default('0.00');
        $form->text('InventoryFeeType', __('库存费类型'))->default('点模式');

        return $form;
    }
}
