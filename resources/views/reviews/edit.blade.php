@extends('layouts.app')

@section('content')
<h1>Edit Review</h1>
<<<<<<< HEAD
{!! Form::open(['action'=>['ReviewsController@update',$wisata->id],'method'=>'POST']) !!}
=======
{!! Form::open(['action'=>['ReviewsController@update',$review->id],'method'=>'POST']) !!}
>>>>>>> 95803e515ab4cb553beb93bb8e4f5af0432262e1
    
    <!--{{ Form::model($wisata, array('route' => array('wisatas.update', $wisata->id), 'method' => 'PUT')) }}
    -->
    <div class="form-group">
        {{form::label('title','Title')}}
<<<<<<< HEAD
        {{form::text('title',$wisata->title,['class' =>'form-control','placeholder' => 'title'])}}
    </div>
    <div class="form-group">
        {{form::label('name','Name')}}
        {{form::text('name',$wisata->name,['class' =>'form-control','placeholder' => 'name'])}}
    </div>
    <div class="form-group">
        {{form::label('detail','Detail')}}
        {{form::textarea('detail',$wisata->detail,['id'=>'article-ckeditor','class' =>'form-control','placeholder' => 'Detail Text'])}}
=======
        {{form::text('title',$review->title,['class' =>'form-control','placeholder' => 'title'])}}
    </div>
    <div class="form-group">
        {{form::label('name','Name')}}
        {{form::text('name',$review->name,['class' =>'form-control','placeholder' => 'name'])}}
    </div>
    <div class="form-group">
        {{form::label('detail','Detail')}}
        {{form::textarea('detail',$review->detail,['id'=>'article-ckeditor','class' =>'form-control','placeholder' => 'Detail Text'])}}
>>>>>>> 95803e515ab4cb553beb93bb8e4f5af0432262e1
    </div>
 
    {{form::hidden('_method','PUT')}}
    {{form::submit('Submit',['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}   
@endsection