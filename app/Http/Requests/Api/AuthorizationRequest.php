<?php

namespace App\Http\Requests\Api;


class AuthorizationRequest extends FormRequest
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        switch($this->method()){
            case "POST":
            return [
                'username' => 'required|string',
                'password' => 'required|alpha_dash|min:6',
            ];
            break;
            case "PATCH":
                return [
                    'oldpass' => 'required|alpha_dash|min:6',
                    'password' => 'required|alpha_dash|min:6',
                    'repassword' => 'required|alpha_dash|min:6'
                ];
                break;

        }
    }

    public function attributes()
    {
        return [
            'oldpass' => '原密码',
            'repassword' => '重复密码'
        ];
    }
}
