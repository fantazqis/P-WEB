@extends('layouts.app')

@section('content')
    <a href="/wisatas" class="btn btn-default">Go back</a>
    <h1>{{$wisata->title}}</h1>
    <div>
        {!!$wisata->detail!!}
    </div>
    <hr>
    <small>Written on {{$wisata->created_at}}</small>
    <hr>
    <a href="/wisatas/{{$wisata->id}}/edit" class="btn btn-default">Edit</a>
    {!!Form::open(['action'=>['WisatasController@destroy',$wisata->id],'method' =>'POST','class' => 'pull-right'])!!}
        {{Form::hidden('_method','DELETE')}}
        {{Form::submit('Delete',['class'=>'btn btn-danger'])}}
    {!!Form::close()!!}
@endsection