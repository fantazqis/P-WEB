@extends('layouts.app')

@section('content')
<h1>Edit Review</h1>
{!! Form::open(['action'=>['ReviewsController@update',$review->id],'method'=>'POST']) !!}
    
    <!--{{ Form::model($wisata, array('route' => array('wisatas.update', $wisata->id), 'method' => 'PUT')) }}
    -->
    <div class="form-group">
        {{form::label('title','Title')}}
        {{form::text('title',$review->title,['class' =>'form-control','placeholder' => 'title'])}}
    </div>
    <div class="form-group">
        {{form::label('name','Name')}}
        {{form::text('name',$review->name,['class' =>'form-control','placeholder' => 'name'])}}
    </div>
    <div class="form-group">
        {{form::label('detail','Detail')}}
        {{form::textarea('detail',$review->detail,['id'=>'article-ckeditor','class' =>'form-control','placeholder' => 'Detail Text'])}}
    </div>
 
    {{form::hidden('_method','PUT')}}
    {{form::submit('Submit',['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}   
@endsection