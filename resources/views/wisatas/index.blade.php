@extends('layouts.app')

@section('content')
    <h1>Wisata</h1>
    @if(count($wisatas) > 0)
        @foreach($wisatas as $wisata)
            <div class="well">
            <!--{{route('posts.show', $post->id)}}  -->
               <div class="row">
                         <div class="col-md-4 col-sm-4">
                           
                           
                         </div>
                         <div class="col-md-8 col-sm-8">
                         </div>
                </div> 
                <h3><a href="/wisatas/{{$wisata->id}}">{{$wisata->title}}</a></h3>
                <small>Written on {{$wisata->created_at}} by {{$wisata->user->name}}</small>
             </div>
        @endforeach
        {{$wisatas->links()}}
    @else
        <p>No Wisata found</p>
    @endif
@endsection