<?php

namespace App\Http\Requests\Api;


class OrdersRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function rules()
    {
        switch($this->method()){
            case 'POST':
                return [
                    'number' => 'required|integer',
                    'code_all' => 'required|string|exists:foreign_exchang_lists,code_all',
                    'type' => 'required|integer',
                ];
                break;
            case 'PATCH':
                return [
                    'type' => 'required|integer',
                ];
                break;
        }

    }

    public function attributes()
    {
        return [
            'number' => '交易数量',
            'code_all' => '交易品种',
            'type' => '交易类型',
            'trade_no' => '订单号',
        ];
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function messages()
    {
        return [];
    }
}
