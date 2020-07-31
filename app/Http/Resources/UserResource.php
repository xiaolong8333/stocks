<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    protected $showSensitveFields = true;
    public function toArray($request)
    {
        if(!$this->showSensitveFields){
            $this->resource->addHidden(['password']);
        }
        $data = parent::toArray($request);

        return $data;
    }

    public function showSensitiveFields()
    {
        $this->showSensitveFields = true;
        return $this;
    }
}
