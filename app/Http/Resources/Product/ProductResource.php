<?php

namespace App\Http\Resources\Product;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
            'name'=>$this->name,
            'description'=>$this->details,
            'description'=>$this->details,
            'price'=>$this->price,
            'discount'=>$this->discount,
            'Total Price'=> $this->discount !=0? round((1-($this->discount/100)) * $this->price,2) : $this->price,
            'stock'=>$this->stock==0 ? 'Out of Stock' : $this->stock,
            'rating' => $this->reviews->count()>0 ? round($this->reviews->sum('star')/$this->reviews->count(),2) : 'No Ratings Yet',
            'href'=>[
                'reviews'=>route('reviews.index',$this->id)
            ]


        ];
    }
}
