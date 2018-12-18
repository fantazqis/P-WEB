@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>
<<<<<<< HEAD
               
=======

>>>>>>> 95803e515ab4cb553beb93bb8e4f5af0432262e1
               <!-- <div class="card-body">
                <a href="/posts/create"class="btn btn-primary">Create Post</a>
                <h3>Your blog post</h3>
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in!
                    @if(count($posts)>0)
                    <table class="table table-striped">
                        <tr>
                            <th>
                            Title
                            </th>
                            <th></th>
                            <th></th>
                        </tr>
                        @foreach($posts as $post)
                        <tr>
                            <td>
                            {{$post->title}}
                            </td>
                            <td><a href="/posts/{{$post->id}}/edit" class="btn btn-default" >Edit</a></td>
                            <td>
                            {!!Form::open(['action'=>['PostsController@destroy',$post->id],'method' =>'POST','class' => 'pull-right'])!!}
                                 {{Form::hidden('_method','DELETE')}}
                                 {{Form::submit('Delete',['class'=>'btn btn-danger'])}}
                          {!!Form::close()!!}
                            </td>
                        </tr>
                        @endforeach
                    </table>
                    @else 
                    <p>You have no post</p>
                    @endif -->
                    
                    <div class="card-body">
                <a href="/posts/create"class="btn btn-primary">Create Wisata</a>
<<<<<<< HEAD
               <!-- <h3>Your wisata post</h3>
=======
                <h3>Your wisata post</h3>
>>>>>>> 95803e515ab4cb553beb93bb8e4f5af0432262e1
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
<<<<<<< HEAD
                    asd
=======

>>>>>>> 95803e515ab4cb553beb93bb8e4f5af0432262e1
                    You are logged in!
                    @if(count($wisatas)>0)
                    <table class="table table-striped">
                        <tr>
                            <th>
                            Title
                            </th>
                            <th></th>
                            <th></th>
                        </tr>
                        @foreach($wisatas as $wisata)
                        <tr>
                            <td>
                            {{$post->title}}
                            </td>
                            @if(!Auth::guest())
        @if(Auth::user()->bool !== 1 )
                            <td><a href="/wisatas/{{$wisata->id}}/edit" class="btn btn-default" >Edit</a></td>
                            <td>
                            {!!Form::open(['action'=>['PostsController@destroy',$post->id],'method' =>'POST','class' => 'pull-right'])!!}
                                 {{Form::hidden('_method','DELETE')}}
                                 {{Form::submit('Delete',['class'=>'btn btn-danger'])}}
                          {!!Form::close()!!}
                          @endif
                          @endif
                            </td>
                        </tr>
                        @endforeach
                    </table>
                    @else 
                    <p>You have no post</p>
                    @endif
                    <a href="/wisatas/create"class="btn btn-primary">Create Wisata</a>
                -->
                    

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
