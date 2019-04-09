@extends('admin.layouts.index')
@section('content')
	<h1 class="page-header">
                        TRANG CHU

                    </h1>
                    <hr>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.html">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Nhân viên</li>
                    </ol>
                    <div class="clearfix"></div>


                    <div class="row">
                        <div class="col-md-12">
                            @if(count($errors)>0)
                            <div class="alert alert-danger">
                              @foreach($errors->all() as $err)
                                {{$err}}<br>
                              @endforeach
                            </div>
                          @endif

                          @if(session('thongbao'))
                            <div class="alert alert-success">
                              {{session('thongbao')}}
                            </div>
                          @endif
                            <div class="col-sm-12" style="background-color: #ffff">


                            </div>
                        </div>
                    </div>
@endsection