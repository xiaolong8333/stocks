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
/*                    'trouble' => 'required',
                    'FS' => 'required|string|exists:foreign_exchange_lists,FS',
                    'type' => 'required|string',*/
                ];
                break;
            case 'PATCH':
                return [
/*                    'type' => 'required|integer',*/
                ];
                break;
        }

    }

    public function attributes()
    {
        return [
            'trouble' => '交易手数',
            'FS' => '交易品种',
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
        return [
        ];
    }
}
