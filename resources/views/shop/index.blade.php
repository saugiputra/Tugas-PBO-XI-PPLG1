@extends('template.user')

@section('title')
    Shop
@endsection

@section('style')
<link rel="stylesheet" href="{{asset('css/shop.css')}}">
@endsection

@section('content')
<div class="content">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="category">
          <h2 id="category-label">Categories</h2>
          <ul class="list-group">
            <li class="list-group-item">All</li>
            @foreach ($categories as $category)
            <li class="list-group-item {{$category->id == $id ? 'active' : ''}}"><a href="/shop/category/{{$category->id}}">{{$category->name}}</a></li>
            @endforeach
          </ul>
        </div>
        <h2 id="category-label" class="text-center mt-5">Search Product</h2>
        <form action="" class="form-inline">
          <input type="text" class="form-control mr-1" name="search">
          <button class="btn btn-primary"><span class="material-symbols-outlined">
            search
            </span></button>
        </form>
      </div>
        <div class="col-lg-8">
          <div class="item-list">
          <h2>Our Products</h2>
          <hr style="margin-bottom: 2em;">
          <div class="row list-product">
            @foreach($products as $product)
            <div class="col-lg-4 item">
              <a href="/shop/detail/{{ $product->id }}">
              <img src="{{asset('storage/images/product.jpg')}}" alt="nopic" height="180" width="180">
              </a>
              <p class="product-name mt-3"><a href="">{{ $product->name }}</a></p>
              <p class="product-price">Rp.{{ $product->price }}</p>
            </div>
              @endforeach
            
          </div>
        </div>
        <div class="pagination mt-3">
          {{$products->links()}}
        </div>
      </div>
    </div>
  </div>
  <!-- Pagination Link -->

</div>
@endsection

@section('script')
<script type="text/javascript" src="{{asset('js/script.js')}}"></script>
@endsection

