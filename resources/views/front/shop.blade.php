@extends('front.layout.app')
@section('content')
    <!-- breadcrumb start -->
    <div class="breadcrumb-main ">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="breadcrumb-contain">
                        <div>
                            <h2>category</h2>
                            <ul>
                                <li><a href="#">home</a></li>
                                <li><i class="fa fa-angle-double-right"></i></li>
                                <li><a href="#">category</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb End -->

    <!-- section start -->
    <section class="section-big-pt-space ratio_asos bg-light">
        <div class="collection-wrapper">
            <div class="custom-container">
                <div class="row">
                    <div class="col-sm-3 collection-filter category-page-side">
                        <!-- side-bar colleps block stat -->
                        <div class="collection-filter-block creative-card creative-inner category-side">
                            <!-- brand filter start -->
                            <div class="collection-mobile-back"><span class="filter-back"><i class="fa fa-angle-left" aria-hidden="true"></i> back</span></div>
                            <div class="collection-collapse-block open">
                                <h3 class="collapse-block-title mt-0">brand</h3>
                                <div class="collection-collapse-block-content">
                                    @forelse ($category as $cat)
                                        <div class="collection-brand-filter shop-cat">
                                            <div class="collection-collapse-block {{ (($categoryId == $cat->id) ? 'open': '')}}">
                                                <a href="javascript:void(0);" class="collapse-block-title mt-0 shop-subcat">{{$cat->name}}</a>
                                                <div class="collection-collapse-block-content" style="display: {{ (($categoryId == $cat->id) ? 'block': 'none')}};">
                                                    <div class="collection-brand-filter">
                                                        <ul class="list-group">
                                                            @foreach($sub_category as $scat)
                                                                @if ($scat->category_id === $cat->id)
                                                                    <li class="list-group-item"><a href="{{route('product.index',['category'=>$scat->slug])}}">{{$scat->name}}</a></li>
                                                                @endif
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @empty
                                        <p>No Category Found</p>
                                    @endforelse
                                </div>
                            </div>

                            <!-- price filter start here -->
                            @php $temp = []; @endphp
                            @if ($variants)
                                @foreach ($variants as $variant)
                                    @if (!in_array($variant->aid,$temp))
                                        @php
                                            array_push($temp,$variant->aid);
                                        @endphp
                                        <div class="collection-collapse-block border-0 open price-prices">
                                            <h3 class="collapse-block-title">{{$variant->aname ?? ''}}</h3>
                                            <div class="collection-collapse-block-content">
                                                <div class="collection-brand-filter">
                                                    <ul class="list-group">
                                                        @foreach ($variants as $varis)
                                                            @if ($varis->aid == $variant->aid)
                                                                <li class="list-group-item"><a href="{{ route('product.index',['category' => request()->category, 'variant' => $varis->vid]) }}">{{$varis->vname}}</a></li>
                                                            @endif
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach
                            @endif
                        </div>
                        <!-- silde-bar colleps block end here -->
                        <!-- side-bar single product slider start -->
                        <div class="theme-card creative-card creative-inner">
                            <h5 class="title-border">new product</h5>
                            <div class="offer-slider slide-1">
                                @if ($new)
                                    <div>
                                        @for($i = 0; $i < 3; $i++)
                                            @if (isset($new[$i]->image))
                                                @php
                                                    $price_reg = (($new[$i]->price_dis > 0 && $new[$i]->price_dis_end >= date("Y-m-d") && $new[$i]->price_dis_start <= date("Y-m-d") && $new[$i]->status == true)) ? \Session()->get('languageCurrency').' '.number_format($new[$i]->price_dis,2) : \Session()->get('languageCurrency').' '.number_format($new[$i]->price_reg,2);
                                                    $price_dis = (($new[$i]->price_dis > 0 && $new[$i]->price_dis_end >= date("Y-m-d") && $new[$i]->price_dis_start <= date("Y-m-d") && $new[$i]->status == true)) ? \Session()->get('languageCurrency').' '.number_format($new[$i]->price_reg,2) : '';
                                                @endphp
                                                <div class="media">
                                                    <a href="{{route('product.show',['product'=>$new[$i]->slug])}}"><img class="img-fluid " src="{{asset($new[$i]->image)}}" alt=""></a>
                                                    <div class="media-body align-self-center">
                                                        <a href="{{route('product.show',['product'=>$new[$i]->slug])}}"><h6>{{$new[$i]->name}}</h6></a>
                                                        <del>{{$price_dis}}</del>
                                                        <h4>{{$price_reg}}</h4></div>
                                                </div>
                                            @endif
                                        @endfor
                                    </div>
                                    <div>
                                        @for($i = 3; $i < 6; $i++)
                                            @if (isset($new[$i]->image))
                                                @php
                                                    $price_reg = (($new[$i]->price_dis > 0 && $new[$i]->price_dis_end >= date("Y-m-d") && $new[$i]->price_dis_start <= date("Y-m-d") && $new[$i]->status == true)) ? \Session()->get('languageCurrency').' '.number_format($new[$i]->price_dis,2) : \Session()->get('languageCurrency').' '.number_format($new[$i]->price_reg,2);
                                                    $price_dis = (($new[$i]->price_dis > 0 && $new[$i]->price_dis_end >= date("Y-m-d") && $new[$i]->price_dis_start <= date("Y-m-d") && $new[$i]->status == true)) ? \Session()->get('languageCurrency').' '.number_format($new[$i]->price_reg,2) : '';
                                                @endphp
                                                <div class="media">
                                                    <a href="{{route('product.show',['product'=>$new[$i]->slug])}}"><img class="img-fluid " src="{{asset($new[$i]->image)}}" alt=""></a>
                                                    <div class="media-body align-self-center">
                                                        <a href="{{route('product.show',['product'=>$new[$i]->slug])}}"><h6>{{$new[$i]->name}}</h6></a>
                                                        <del>{{$price_dis}}</del>
                                                        <h4>{{$price_reg}}</h4></div>
                                                </div>
                                            @endif
                                        @endfor
                                    </div>
                                @endif
                            </div>
                        </div>
                        <!-- side-bar single product slider end -->
                        <!-- side-bar banner start here -->
                        <div class="collection-sidebar-banner">
                            <a href="#"><img src="{{asset('assets/front/images/')}}/category/side-banner.png" class="img-fluid " alt=""></a>
                        </div>
                        <!-- side-bar banner end here -->

                    </div>
                    <div class="collection-content col">
                        <div class="page-main-content">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="top-banner-wrapper">
                                        <a href="#"><img src="{{asset('assets/front/images/')}}/category/1.jpg" class="img-fluid " alt=""></a>
                                        <div class="top-banner-content small-section">
                                            <h4>fashion</h4>
                                            <h5>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</h5>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                        </div>
                                    </div>
                                    <div class="collection-product-wrapper">
                                        <div class="product-top-filter">
                                            <div class="row">
                                                <div class="col-xl-12">
                                                    <div class="filter-main-btn"><span class="filter-btn  "><i class="fa fa-filter" aria-hidden="true"></i> Filter</span></div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="product-filter-content">
                                                        <div class="search-count">
                                                            <h5>Showing Products {{$products->firstItem()}} to {{$products->lastItem()}} of {{$products->total()}}</h5></div>
                                                        <div class="collection-view">
                                                            <ul>
                                                                <li><i class="fa fa-th grid-layout-view"></i></li>
                                                                <li><i class="fa fa-list-ul list-layout-view"></i></li>
                                                            </ul>
                                                        </div>
                                                        <div class="collection-grid-view">
                                                            <ul>
                                                                <li><img src="{{asset('assets/front/images/')}}/category/icon/2.png" alt="" class="product-2-layout-view"></li>
                                                                <li><img src="{{asset('assets/front/images/')}}/category/icon/3.png" alt="" class="product-3-layout-view"></li>
                                                                <li><img src="{{asset('assets/front/images/')}}/category/icon/4.png" alt="" class="product-4-layout-view"></li>
                                                                <li><img src="{{asset('assets/front/images/')}}/category/icon/6.png" alt="" class="product-6-layout-view"></li>
                                                            </ul>
                                                        </div>

                                                        <div class="product-page-filter">
                                                            <select>
                                                                <option value="High to low">Sorting items</option>
                                                                <option value="Low to High">50 Products</option>
                                                                <option value="Low to High">100 Products</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-wrapper-grid">
                                            <div class="row" id="shopView">
                                            @if ($products)
                                                @forelse ($products as $product)
                                                    @php
                                                        $price_reg = (($product->price_dis > 0 && $product->price_dis_end >= date('Y-m-d') && $product->price_dis_start <= date('Y-m-d') && $product->status === true)) ? session()->get('languageCurrency') . ' ' . number_format($product->price_dis, 2) : session()->get('languageCurrency') . ' ' . number_format($product->price_reg, 2);
                                                        $price_dis = (($product->price_dis > 0 && $product->price_dis_end >= date('Y-m-d') && $product->price_dis_start <= date('Y-m-d') && $product->status === true)) ? session()->get('languageCurrency') . ' ' . number_format($product->price_reg, 2) : '';
                                                    @endphp

                                                    <!-- Quick-view modal popup start-->
                                                        <div class="modal fade bd-example-modal-lg theme-modal" id="quick-view{{$product->id}}" tabindex="-1" role="dialog" aria-hidden="true">
                                                            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                                                <div class="modal-content quick-view-modal">
                                                                    <div class="modal-body">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                                        <div class="row">
                                                                            <div class="col-lg-6 col-xs-12">
                                                                                <div class="quick-view-img"><img src="{{asset($product->image)}}" alt="{{$product->name}}" class="img-fluid "></div>
                                                                            </div>
                                                                            <div class="col-lg-6 rtl-text">
                                                                                <div class="product-right">
                                                                                    <h2>{{$product->name}}</h2>
                                                                                    <div id="atrrVar">
                                                                                        <h4>
                                                                                            <del>{{$price_dis}}</del>
                                                                                        </h4>
                                                                                        <h3>{{$price_reg}}</h3>
                                                                                    </div>
                                                                                    @php $temp = [];
                                                                                        $pro = new App\models\product;
                                                                                        $productVariants = $pro->getVariant($product->slug);
                                                                                    @endphp
                                                                                    @if ($productVariants)
                                                                                        @foreach ($productVariants as $variant)
                                                                                            @php
                                                                                                if (!in_array($variant->aid,$temp)):
                                                                                                    array_push($temp,$variant->aid);
                                                                                            @endphp
                                                                                            <h6 class="product-title size-text">{{$variant->aname}}</h6>
                                                                                            <div class="size-box select-size">
                                                                                                <div class="form-group">
                                                                                                    <select class="form-control attrVar" data-id="{{ $product->id}}" name="variant[{{$variant->aid}}]">
                                                                                                        <option value="" selected disabled>Please select</option>
                                                                                                        @foreach ($productVariants as $vari)
                                                                                                            @if ($vari->aid == $variant->aid)
                                                                                                                <option value="{{$vari->vid}}">{{$vari->vname. (!empty($vari->variant_price) ? ' - (' . (\Session()->get('languageCurrency'). ' ' .$vari->variant_price) : '') }})</option>
                                                                                                            @endif
                                                                                                        @endforeach
                                                                                                    </select>
                                                                                                </div>
                                                                                            </div>
                                                                                            @php
                                                                                                endif
                                                                                            @endphp
                                                                                        @endforeach
                                                                                    @endif
                                                                                    <div class="border-product">
                                                                                        <h6 class="product-title">product details</h6>
                                                                                        {!! $product->short_description !!}
                                                                                    </div>
                                                                                    <div class="product-description border-product">
                                                                                        <h6 class="product-title">quantity</h6>
                                                                                        <div class="qty-box">
                                                                                            <div class="input-group"><span class="input-group-prepend"><button type="button" class="btn quantity-left-minus" data-type="minus" data-field=""><i class="ti-angle-left"></i></button> </span>
                                                                                                <input type="text" name="quantity" class="form-control input-number" value="1"> <span class="input-group-prepend"><button type="button" class="btn quantity-right-plus" data-type="plus" data-field=""><i class="ti-angle-right"></i></button></span></div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="product-buttons">
                                                                                        <a href="#" class="btn btn-normal">add to cart</a>
                                                                                        <a href="#" class="btn btn-normal">view detail</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- Quick-view modal popup end-->

                                                        <div class="col-xl-3 col-md-4 col-6  col-grid-box">
                                                            <div class="product">
                                                                <div class="product-box">
                                                                    <div class="product-imgbox">
                                                                        <div class="product-front">
                                                                            <a href="{{route('product.show',['product'=>$product->slug])}}">
                                                                                <img src="{{asset($product->image)}}" class="img-fluid  " alt="product">
                                                                            </a>
                                                                        </div>
                                                                        <div class="product-back">
                                                                            <a href="{{route('product.show',['product'=>$product->slug])}}">
                                                                                <img src="{{asset($product->hover_image??'')}}" class="img-fluid  " alt="product">
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-detail detail-center ">
                                                                        <div class="detail-title">
                                                                            <div class="detail-left">
                                                                                <a href="#">
                                                                                    <h6 class="price-title">
                                                                                        {{$product->name??''}}
                                                                                    </h6>
                                                                                </a>
                                                                            </div>
                                                                            <div class="detail-right">
                                                                                <div class="check-price">
                                                                                    {{$price_dis??''}}
                                                                                </div>
                                                                                <div class="price">
                                                                                    <div class="price">
                                                                                        {{$price_reg??'2'}}
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="icon-detail">
                                                                            <button type="button" data-toggle="modal" data-product-id="{{ $product->id }}" data-target="#addtocart" id="addToCart" title="Add to cart">
                                                                                <i class="fa fa-shopping-bag"></i>
                                                                            </button>
                                                                            <button title="Add to Wishlist">
                                                                                <i class="fa fa-heart" aria-hidden="true"></i>
                                                                            </button>
                                                                            <button data-toggle="modal" data-target="#quick-view{{$product->id}}" title="Quick View">
                                                                                <i class="fa fa-search" aria-hidden="true"></i>
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    @empty
                                                        <div align="center"><h2>No Product Found</h2></div>
                                                    @endforelse
                                                @endif

                                            </div>
                                        </div>
                                        <div class="product-pagination">
                                            <div class="theme-paggination-block">
                                                <div class="row">
                                                    <div class="col-xl-6 col-md-6 col-sm-12">
                                                        {{$products->appends(request()->input())->links()}}
                                                    </div>
                                                    <div class="col-xl-6 col-md-6 col-sm-12">
                                                        <div class="product-search-count-bottom">
                                                            <h5>Showing Products {{$products->firstItem()}} to {{$products->lastItem()}} of {{$products->total()}}</h5></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- section End -->

    <!--contact banner end-->
@endsection
@section('page_js')
    <script src="{{ asset('js/custom_page_js/ajax.js') }}"></script>
    <script src="{{ asset('js/custom_page_js/cart.js') }}"></script>
    <script>
        Array.from(document.querySelectorAll('#addToCart')).forEach(button => {
            button.addEventListener('click', () => {

            });
        });
    </script>
    <script>
        (function(){
            let currency = "{{session()->get('languageCurrency')}}";
            const attrVar = document.querySelectorAll('.attrVar');
            Array.from(attrVar).forEach(function (e){
                e.addEventListener('change',function () {
                    let option = this.options[this.selectedIndex].text.split("- (");
                    let price = option[1].replace(/[^.0-9]/gi, '');
                    document.getElementById('atrrVar').innerHTML = `<h3>${currency} ${price}</h3>`;
                })
            })
        })();
    </script>
@endsection
