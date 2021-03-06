<?php

class AdminController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		return View::make('admin.index');
	}

	public function getProducts(){
		$product = Product::paginate(5);
		return View::make('admin.products')->with('product', $product);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function contact(){
		$validator = Validator::make(Input::all(), Contact::$rules);
			if($validator->passes()){
				$contact = new Contact;
				$contact->author    = Input::get('author');
				$contact->email    	= Input::get('email');
				$contact->service	= Input::get('service');
				$contact->contenu   = Input::get('message');
				$contact->save();
				Mail::send('emails.contact', $contact->toArray(), function($message) use($contact) {
		            $message->from('contact@lateliermac.com', 'Client');
		            $message->to('contact@lateliermac.com', 'Contact client')
		                	->subject('Service'.$contact->service);
		        });
			    return Redirect::to('/')->with('message', 'Votre message a bien été envoyé');

			}else{
				return Redirect::to('/')->with('error', 'Veuillez ouvrir le formulaire et corriger vos erreurs');
			}
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function contactProduct(){
		$validator = Validator::make(Input::all(), Product::$rules);
			if($validator->passes()){
				$contact = new Contact;
				$contact->author    = Input::get('author');
				$contact->email    	= Input::get('email');
				$contact->service	= "rachat";
				$contact->contenu   = "Proposition de rachat";
				$contact->save();
				$contact->description = Input::get('description');
				$contact->product = Input::get('name');
				$contact->prix = Input::get('prix');
				Mail::send('emails.contactprod', $contact->toArray(), function($message) use($contact) {
		            $message->from('robin.chalas@gmail.com', 'Client');
		            $message->to('robin.chalas@gmail.com', 'Contact client')
		                	->subject('Service ');
		        });
			    return Redirect::to('/')->with('message', 'Votre message a bien été envoyé');

			}else{
				return Redirect::to('/')->with('error', 'Veuillez ouvrir le formulaire et corriger vos erreurs');
			}
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


}
