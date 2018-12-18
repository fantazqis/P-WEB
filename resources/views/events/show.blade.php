@extends('layouts.app')

@section('content')
    <a href="/events" class="btn btn-default">Go back</a>
    <h1>{{$event->title}}</h1>
    <div>
        {!!$event->detail!!}
    </div>
    <hr>
    <small>Written on {{$event->created_at}}</small>
    <hr>
    @if(!Auth::guest())
<<<<<<< HEAD
        @if(Auth::user()->bool !== 0 )
=======
        @if(Auth::user()->bool !== 1 )
>>>>>>> 95803e515ab4cb553beb93bb8e4f5af0432262e1
    <a href="/events/{{$event->id}}/edit" class="btn btn-default">Edit</a>
    {!!Form::open(['action'=>['EventsController@destroy',$event->id],'method' =>'POST','class' => 'pull-right'])!!}
        {{Form::hidden('_method','DELETE')}}
        {{Form::submit('Delete',['class'=>'btn btn-danger'])}}
    {!!Form::close()!!}
        @endif
    @endif
@endsection