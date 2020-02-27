<?php 
namespace App\Exceptions;

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpFoundation\Response;

trait ExceptionTrait{
	public function apiException($request,$e){
		// return $request->all();
		// dd($e);
            if ($this->isModel($e) ) {
            		return $this->ModelResponse($e);
            		 }   
        if ($this->isHttp($e) ) {
           return $this->HttpReponse($e);
        }
        return parent::render($request,$exception);

         
      
}
public function ModelResponse($e){
	return response()->json([
            'errors'=>'Product Not Found'
        	],Response::HTTP_NOT_FOUND);
	}
public function HttpReponse ($e) {
      return response()->json([
            'errors'=>'incorrect Route/ Url'
        	],Response::HTTP_NOT_FOUND);
        }
  public function isHttp ($e) {
       return $e instanceof NotFoundHttpException;
        }

public function isModel($e){
        	return $e instanceof ModelNotFoundException;
        }  

}