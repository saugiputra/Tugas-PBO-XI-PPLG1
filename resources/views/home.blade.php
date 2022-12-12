@extends('template.user')

@section('title')
    Profile
@endsection

@section('style')
  <link rel="stylesheet" href="{{asset('css/home.css')}}">
@endsection

@section('content')
<div class="container">
  <!-- Success Message -->
  
<div class="row justify-content-center">
  <div class="col-md-4">
      <img class="img-profile" src="" alt="no-image">
  </div>
  <div class="offset-md-2 col-md-6">
      <div class="content">
        <!-- Data User -->
      <label for="">Name : {{Auth::user()->name }}</label>
      <p></p>
      <label for="">Email : {{Auth::user()->email }}</label>~
      <p></p>
      <label for="">Address : {{Auth::user()->address }}</label>
      <p></p>
      <label for="">Phone Number : {{Auth::user()->phone }}</label>
    
      <!-- TopUp -->
      {{-- @if($topup == null)
      <p style="color:red">Havent top up yet</p>
      @else
      <p style="color:green">Rp{{number_format($topup->amount)}}</p>
      @endif --}}
          </div>
      </div>
</div>
</div>
@endsection
