<!DOCTYPE html>
<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <title>Adulisbuy</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="Adulisbuy">
    <meta name="keywords" content="Adulisbuy">
    <meta name="author" content="Adulisbuy">
    <link rel="icon" href="{{asset('assets/front/images/')}}/layout-1/logo/fav.png">

    <!--Google font-->
    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway&amp;display=swap" rel="stylesheet">

    <!--icon css-->
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/front/css/slick.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/front/css/slick-theme.css')}}">

    <!--Animate css-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/front/css/animate.css')}}">

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/front/css/color1.css')}}" media="screen" id="color">
    <!-- Style css -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}">
    
    <style>
        .shop-subcat {
    text-transform: uppercase !important;
    cursor: pointer !important;
    color: #777 !important;
    font-weight: 600 !important;
    letter-spacing: 0.5px !important;
    padding-left: 20px;
}


 .shop-subcat::after {
     content: unset !important;
 }
 
 
.shop-cat .collection-collapse-block-content ul {
    margin: 6px 0 10px 0;
    padding: 0;
    border: none;
}

.shop-cat .collection-collapse-block-content ul li {
    position: relative;
    left: 35px;
    border: none;
    padding: 0;
    margin: 0;
    text-decoration: underline;
    color: #000 !important;
}

.shop-cat .collection-collapse-block-content ul li > a{
    text-decoration: underline;
    color: #000 !important;
}


.price-prices ul {
    margin: 0;
    padding: 0;
    border: none;
}


.price-prices ul > li {
    margin: 4px 0;
    padding: 0;
    border: none;
}


.collection-brand-filter.shop-cat {
    margin: 12px 0;
}


.price-prices ul > li a{
    cursor: pointer !important;
    color: #777 !important;
    font-weight: 600 !important;
    letter-spacing: 0.5px !important;
    padding-left: 20px;
}
.price-prices ul > li a:hover{
    text-decoration: underline !important;
}

.select-size select{
width: 40%;
    border-radius: 0px;
    /* border-top: none; */
    /* border-left: none; */
    /* border-right: none; */
    background: transparent;
}
.select-size select:focus{
    box-shadow: none !important;
    border-color: none !important;
    background-color: transparent !important;
}


    </style>

</head>
<body class="bg-light ">

<header>
    <div class="mobile-fix-option"></div>
    <div class="top-header">
        <div class="custom-container">
            <div class="row">
                <div class="col-xl-5 col-md-7 col-sm-6">
                    <div class="top-header-left">
                        <div class="shpping-order">
                            <h6>free shipping on order over $99 </h6>
                        </div>
                        <div class="app-link">
                            <h6>
                                Download aap
                            </h6>
                            <ul>
                                <li><a><i class="fa fa-apple"></i></a></li>
                                <li><a><i class="fa fa-android"></i></a></li>
                                <li><a><i class="fa fa-windows"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-7 col-md-5 col-sm-6">
                    <div class="top-header-right">
                        <div class="language-block">
                                <select id="changeLanguage" class="form-control lang-dropdown">
                                    @if ($language)
                                        @foreach ($language as $lang)
                                            <option value="{{$lang->id??''}}" {{(\Session()->get('languageId') == $lang->id)?'selected':''}}>{{$lang->name??''}}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="layout-header1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-menu-block">
                        <div class="menu-left">
                            <div class="sm-nav-block">
                                <span class="sm-nav-btn"><i class="fa fa-bars"></i></span>
                                <ul class="nav-slide">
                                    <li>
                                        <div class="nav-sm-back">
                                            back <i class="fa fa-angle-right pl-2"></i>
                                        </div>
                                    </li>
                                    @if ($category)
                                        @foreach ($category as $cats)
                                            <li><a href="as">{{$cats->name}}</a></li>
                                        @endforeach
                                    @endif
                                </ul>
                            </div>
                            <div class="brand-logo">
                                <a href="{{url('/')}}">
                                    <img src="{{asset('assets/front/images/')}}/layout-1/logo/logo.png" class="img-fluid  " alt="logo-header">
                                </a>
                            </div>
                        </div>
                        <div class="menu-right">
                            <div class="toggle-block">
                                <nav id="main-nav">
                                    <div class="toggle-nav"><i class="fa fa-bars sidebar-bar"></i></div>
                                    <ul id="main-menu" class="sm pixelstrap sm-horizontal">
                                        <li>
                                            <div class="mobile-back text-right">Back<i class="fa fa-angle-right pl-2" aria-hidden="true"></i></div>
                                        </li>
                                        <li>
                                            <a href="index.php">Home</a>
                                        </li>

                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Products
                                            </a>
                                            <div class="dropdown-menu dropdown-megamenu" aria-labelledby="navbarDropdown">
                                                <div class="container">
                                                    <div class="row">
                                                        @if (!empty($category))
                                                            @foreach($category as $cat)
                                                                <div class="col-md-3 m-tb-15">
                                                                    <p>{{$cat->name}}</p>
                                                                    <div class="dropdown-divider"></div>
                                                                    <div class="cat-sub">
                                                                        @foreach($sub_category as $scat)
                                                                            @if ($scat->category_id === $cat->id)
                                                                                <a class="dropdown-item" href="{{route('product.index',['category'=>$scat->slug])}}">{{$scat->name}}</a>
                                                                            @endif
                                                                        @endforeach
                                                                    </div>
                                                                </div>
                                                            @endforeach
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <!--product-meu end-->

                                        <!--mega-meu start-->
                                        <li class="mega">
                                            <a href="about-us.php">About Us</a>

                                        </li>
                                        <!--mega-meu end-->


                                        <!--blog-meu end-->
                                        <!--pages-meu start-->
                                        <li><a href="contact-us.php">Contact Us</a>

                                        </li>
                                        <!--product-end end-->
                                    </ul>
                                </nav>
                            </div>
                            <div>
                                <div class="icon-nav">
                                    <ul>
                                        <li class="mobile-user onhover-dropdown" onclick="openAccount()"><a href="#"><i class="fa fa-user"></i></a>
                                        </li>
                                        <li class="mobile-wishlist" onclick="openWishlist()">
                                            <a href="#">
                                                <i class="fa fa-heart"></i>
                                                <div class="cart-item">
                                                    <div>0 item<span>wishlist</span></div>
                                                </div>
                                            </a></li>
                                        <li class="mobile-search"><a href="#"><i class="icon-search"></i></a>
                                            <div class="search-overlay">
                                                <div>
                                                    <span class="close-mobile-search">×</span>
                                                    <div class="overlay-content">
                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-xl-12">
                                                                    <form>
                                                                        <div class="form-group"><input type="text" class="form-control" id="exampleInputPassword1" placeholder="Search a Product"></div>
                                                                        <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mobile-setting mobile-setting-hover" onclick="openSetting()"><a href="#"><i class="icon-settings"></i></a>
                                        </li>
                                    </ul>
                                    <div class="cart-block mobile-cart cart-hover-div" onclick="openCart()">
                                        <a href="#"><span class="cart-product">0</span><i class="fa fa-shopping-cart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="category-header">
        <div class="custom-container">
            <div class="row">
                <div class="col">
                    <div class="navbar-menu">
                        <div class="category-left">
                            <div class=" nav-block">
                                <div class="nav-left">
                                    <nav class="navbar" data-toggle="collapse" data-target="#navbarToggleExternalContent">
                                        <button class="navbar-toggler" type="button">
                                            <span class="navbar-icon"><i class="fa fa-arrow-down"></i></span>
                                        </button>
                                        <h5 class="mb-0 ml-3 text-white title-font">Shop by category</h5>
                                    </nav>
                                    <div class="collapse nav-desk" id="navbarToggleExternalContent">
                                        <ul class="nav-cat title-font">
                                            @if ($category)
                                                @foreach ($category as $cats)
                                                    <li><img src="{{asset($cats->image)}}" alt="{{$cats->name}}"> <a href="{{route('product.index',['category'=>$cats->slug])}}">{{$cats->name}}</a></li>
                                                @endforeach
                                            @endif
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="input-block">
                                <div class="input-box">
                                    <form class="big-deal-form">
                                        <div class="input-group ">
                                            <div class="input-group-prepend">
                                                <span class="search"><i class="fa fa-search"></i></span>
                                            </div>
                                            <input type="text" class="form-control" placeholder="Search a Product">
                                            <div class="input-group-prepend">
                                                <select>
                                                    <option>All Category</option>
                                                    <option>indurstrial</option>
                                                    <option>sports</option>
                                                </select>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="category-right">
                            <div class="contact-block">
                                <div>
                                    <i class="fa fa-volume-control-phone"></i>
                                    <span>call us<span>123-456-76890</span></span>
                                </div>
                            </div>
                            <div class="btn-group">
                                <div class="gift-block" data-toggle="dropdown">
                                    <div class="grif-icon">
                                        <i class="fa fa-gift"></i>
                                    </div>
                                    <div class="gift-offer">
                                        <p>gift box</p>
                                        <span>Festivel Offer</span>
                                    </div>
                                </div>
                                <div class="dropdown-menu gift-dropdown">
                                    <div class="media">
                                        <div class="mr-3">
                                            <img src="{{asset('assets/front/images/')}}/icon/1.png" alt="Generic placeholder image">
                                        </div>
                                        <div class="media-body">
                                            <h5 class="mt-0">Billion Days</h5>
                                            <p><img src="{{asset('assets/front/images/')}}/icon/currency.png" class="cash" alt="gift-block"> Flat Rs. 270 Rewards</p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="mr-3">
                                            <img src="{{asset('assets/front/images/')}}/icon/2.png" alt="Generic placeholder image">
                                        </div>
                                        <div class="media-body">
                                            <h5 class="mt-0">Fashion Discount</h5>
                                            <p><img src="{{asset('assets/front/images/')}}/icon/fire.png" class="fire" alt="gift-block">Extra 10% off (upto Rs. 10,000*) </p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="mr-3">
                                            <img src="{{asset('assets/front/images/')}}/icon/3.png" alt="Generic placeholder image">
                                        </div>
                                        <div class="media-body">
                                            <h5 class="mt-0">75% off Store</h5>
                                            <p>No coupon code is required.</p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="mr-3">
                                            <img src="{{asset('assets/front/images/')}}/icon/6.png" alt="Generic placeholder image">
                                        </div>
                                        <div class="media-body">
                                            <h5 class="mt-0">Upto 50% off</h5>
                                            <p>Buy popular phones under Rs.20.</p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="mr-3">
                                            <img src="{{asset('assets/front/images/')}}/icon/5.png" alt="Generic placeholder image">
                                        </div>
                                        <div class="media-body">
                                            <h5 class="mt-0">Beauty store</h5>
                                            <p><img src="{{asset('assets/front/images/')}}/icon/currency.png" class="cash" alt="curancy"> Flat Rs. 270 Rewards</p>
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
</header>
<!--header end-->


@yield('content')


<!--footer start-->
<footer>
    <div class="app-link-block">
        <div class="container">
            <div class="row">
                <div class="app-link-bloc-contain">
                    <div class="app-item-group">
                        <div class="app-item">
                            <img src="{{asset('assets/front/images/')}}/layout-1/app/1.png" class="img-fluid  " alt="app-banner">
                        </div>
                        <div class="app-item">
                            <img src="{{asset('assets/front/images/')}}/layout-1/app/2.png" class="img-fluid  " alt="app-banner">
                        </div>
                    </div>
                    <div class="app-item-group ">
                        <div class="sosiyal-block">
                            <h6>follow us</h6>
                            <ul class="sosiyal">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-1 section-mb-space">
        <div class="container">
            <div class="logo-contain">
                <div class="row">
                    <div class="col-lg-3 col-md-12 ">
                        <div class="logo-block">
                            <a href="index.php"><img src="{{asset('assets/front/images/')}}/layout-1/logo/logo.png" class="img-fluid  " alt="logo"></a>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-12 pr-lg-0">
                        <div class="logo-detail">
                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-1 section-mb-space">
        <div class="container">
            <div class="footer-box">
                <div class="row">
                    <div class="col-md-8 pr-md-0">
                        <div class="footer-link">
                            <div class="row">
                                <div class="col-md-12 ">
                                    <div class="footer-sub-box account">
                                        <div class="footer-title">
                                            <h5>my account</h5>
                                        </div>
                                        <div class="footer-contant">
                                            <ul>
                                                <li><a href="about-us.php">About Us</a></li>
                                                <li><a href="buyer_protection.php">Buyer Protection</a></li>
                                                <li><a href="terms_condition.php">Terms & Conditions</a></li>
                                                <li><a href="privacy_policy.php">Privacy Policy</a></li>
                                                <li><a href="customer_service.php">Customer Service</a></li>
                                                <li><a href="help_center.php">Help Center</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!--<div class="col-md-12">-->
                                <!--    <div class="footer-sub-box">-->
                                <!--        <div class="footer-title">-->
                                <!--            <h5>quick link</h5>-->
                                <!--        </div>-->
                                <!--        <div class="footer-contant">-->
                                <!--            <ul>-->
                                <!--                <li><a href="#">store location</a></li>-->
                                <!--                <li><a href="#"> my account</a></li>-->
                                <!--                <li><a href="#"> orders tracking</a></li>-->
                                <!--                <li><a href="#"> size guide</a></li>-->
                                <!--                <li><a href="#">FAQ </a></li>-->
                                <!--                <li><a href="#">new products</a></li>-->
                                <!--            </ul>-->
                                <!--        </div>-->
                                <!--    </div>-->
                                <!--</div>-->
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4  pl-md-0">
                        <div class="footer-sub-box footer-contant-box">
                            <div>
                                <div class="footer-title">
                                    <h5>contact us</h5>
                                </div>
                                <div class="footer-contant">
                                    <ul class="contact-list">
                                        <li><i class="fa fa-map-marker"></i>Adulisbuy <br> USA-<span>3654123</span></li>
                                        <li><i class="fa fa-phone"></i>call us: <span>123-456-7898</span></li>
                                        <li><i class="fa fa-envelope-o"></i>email us: support@adulisbuy.com</li>
                                        <li><i class="fa fa-fax"></i>fax <span>123456</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-1 section-mb-space">
        <div class="sub-footer">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-md-8 col-sm-12">
                        <div class="footer-end">
                            <p><span>2019 COPY RIGHT</span> ADULISBUY ALL RIGHTS RESERVED</p>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-4 col-sm-12">
                        <div class="payment-card-bottom">
                            <ul>
                                <li><a href="#"><img src="{{asset('assets/front/images/')}}/layout-1/pay/1.png" class="img-fluid" alt="pay"></a></li>
                                <li><a href="#"><img src="{{asset('assets/front/images/')}}/layout-1/pay/2.png" class="img-fluid" alt="pay"></a></li>
                                <li><a href="#"><img src="{{asset('assets/front/images/')}}/layout-1/pay/3.png" class="img-fluid" alt="pay"></a></li>
                                <li><a href="#"><img src="{{asset('assets/front/images/')}}/layout-1/pay/4.png" class="img-fluid" alt="pay"></a></li>
                                <li><a href="#"><img src="{{asset('assets/front/images/')}}/layout-1/pay/5.png" class="img-fluid" alt="pay"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--footer end-->

<!-- tap to top -->
<div class="tap-top">
    <div>
        <i class="fa fa-angle-double-up"></i>
    </div>
</div>
<!-- tap to top End -->

<!-- Add to cart bar -->
<div id="cart_side" class=" add_to_cart bottom ">
    <a href="javascript:void(0)" class="overlay" onclick="closeCart()"></a>
    <div class="cart-inner">
        <div class="cart_top">
            <h3>my cart</h3>
            <div class="close-cart">
                <a href="javascript:void(0)" onclick="closeCart()">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </a>
            </div>
        </div>
        <div class="cart_media">
            <ul class="cart_product">
                <li>
                    <div class="media">
                        <a href="#">
                            <img alt="" class="mr-3" src="{{asset('assets/front/images/')}}/layout-1/product/1.jpg">
                        </a>
                        <div class="media-body">
                            <a href="#">
                                <h4>item name</h4>
                            </a>
                            <h4>
                                <span>1 x $ 299.00</span>
                            </h4>
                        </div>
                    </div>
                    <div class="close-circle">
                        <a href="#">
                            <i class="ti-trash" aria-hidden="true"></i>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="media">
                        <a href="#">
                            <img alt="" class="mr-3" src="{{asset('assets/front/images/')}}/layout-1/product/2.jpg">
                        </a>
                        <div class="media-body">
                            <a href="#">
                                <h4>item name</h4>
                            </a>
                            <h4>
                                <span>1 x $ 299.00</span>
                            </h4>
                        </div>
                    </div>
                    <div class="close-circle">
                        <a href="#">
                            <i class="ti-trash" aria-hidden="true"></i>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="media">
                        <a href="#"><img alt="" class="mr-3" src="{{asset('assets/front/images/')}}/layout-1/product/3.jpg"></a>
                        <div class="media-body">
                            <a href="#">
                                <h4>item name</h4>
                            </a>
                            <h4><span>1 x $ 299.00</span></h4>
                        </div>
                    </div>
                    <div class="close-circle">
                        <a href="#">
                            <i class="ti-trash" aria-hidden="true"></i>
                        </a>
                    </div>
                </li>
            </ul>
            <ul class="cart_total">
                <li>
                    <div class="total">
                        <h5>subtotal : <span>$299.00</span></h5>
                    </div>
                </li>
                <li>
                    <div class="buttons">
                        <a href="cart.html" class="btn btn-normal btn-xs view-cart">view cart</a>
                        <a href="#" class="btn btn-normal btn-xs checkout">checkout</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- Add to cart bar end-->





<!-- My account bar start-->
<div id="myAccount" class="add_to_cart right account-bar">
    <a href="javascript:void(0)" class="overlay" onclick="closeAccount()"></a>
    <div class="cart-inner">
        <div class="cart_top">
            <h3>my account</h3>
            <div class="close-cart">
                <a href="javascript:void(0)" onclick="closeAccount()">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </a>
            </div>
        </div>
        <form class="theme-form">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email" placeholder="Email" required="">
            </div>
            <div class="form-group">
                <label for="review">Password</label>
                <input type="password" class="form-control" id="review" placeholder="Enter your password" required="">
            </div>
            <div class="form-group">
                <a href="#" class="btn btn-rounded btn-block ">Login</a>
            </div>
            <div>
                <h5 class="forget-class"><a href="forget-pwd.html" class="d-block">forget password?</a></h5>
                <h6 class="forget-class"><a href="register.html" class="d-block">new to store? Signup now</a></h6>
            </div>
        </form>
    </div>
</div>
<!-- Add to account bar end-->

<!-- Add to wishlist bar -->
<div id="wishlist_side" class="add_to_cart right">
    <a href="javascript:void(0)" class="overlay" onclick="closeWishlist()"></a>
    <div class="cart-inner">
        <div class="cart_top">
            <h3>my wishlist</h3>
            <div class="close-cart">
                <a href="javascript:void(0)" onclick="closeWishlist()">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </a>
            </div>
        </div>
        <div class="cart_media">
            <ul class="cart_product">
                <li>
                    <div class="media">
                        <a href="#">
                            <img alt="" class="mr-3" src="{{asset('assets/front/images/')}}/layout-1/media-banner/1.jpg">
                        </a>
                        <div class="media-body">
                            <a href="#">
                                <h4>item name</h4>
                            </a>
                            <h4>
                                <span>sm</span>
                                <span>, blue</span>
                            </h4>
                            <h4>
                                <span>$ 299.00</span>
                            </h4>
                        </div>
                    </div>
                    <div class="close-circle">
                        <a href="#">
                            <i class="ti-trash" aria-hidden="true"></i>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="media">
                        <a href="#">
                            <img alt="" class="mr-3" src="{{asset('assets/front/images/')}}/layout-1/media-banner/2.jpg">
                        </a>
                        <div class="media-body">
                            <a href="#">
                                <h4>item name</h4>
                            </a>
                            <h4>
                                <span>sm</span>
                                <span>, blue</span>
                            </h4>
                            <h4>
                                <span>$ 299.00</span>
                            </h4>
                        </div>
                    </div>
                    <div class="close-circle">
                        <a href="#">
                            <i class="ti-trash" aria-hidden="true"></i>
                        </a>
                    </div>
                </li>
                <li>
                    <div class="media">
                        <a href="#"><img alt="" class="mr-3" src="{{asset('assets/front/images/')}}/layout-1/media-banner/3.jpg"></a>
                        <div class="media-body">
                            <a href="#"><h4>item name</h4></a>
                            <h4>
                                <span>sm</span>
                                <span>, blue</span>
                            </h4>
                            <h4><span>$ 299.00</span></h4>
                        </div>
                    </div>
                    <div class="close-circle">
                        <a href="#">
                            <i class="ti-trash" aria-hidden="true"></i>
                        </a>
                    </div>
                </li>
            </ul>
            <ul class="cart_total">
                <li>
                    <div class="total">
                        <h5>subtotal : <span>$299.00</span></h5>
                    </div>
                </li>
                <li>
                    <div class="buttons">
                        <a href="wishlist.html" class="btn btn-normal btn-block  view-cart">view wislist</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- Add to wishlist bar end-->

<!-- add to  setting bar  start-->
<div id="mySetting" class="add_to_cart right">
    <a href="javascript:void(0)" class="overlay" onclick="closeSetting()"></a>
    <div class="cart-inner">
        <div class="cart_top">
            <h3>my setting</h3>
            <div class="close-cart">
                <a href="javascript:void(0)" onclick="closeSetting()">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </a>
            </div>
        </div>
        <div class="setting-block">
            <div>
                <h5>language</h5>
                <ul>
                    <li><a href="#">english</a></li>
                    <li><a href="#">french</a></li>
                </ul>
                <h5>currency</h5>
                <ul>
                    <li><a href="#">uro</a></li>
                    <li><a href="#">rupees</a></li>
                    <li><a href="#">pound</a></li>
                    <li><a href="#">doller</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Add to setting bar end-->
<script src="{{asset('js/app.js')}}"></script>
@yield('page_js')

<!-- slick js-->
<script src="{{asset('assets/front/js/slick.js')}}"></script>

<!-- popper js-->
<script src="{{asset('assets/front/js/popper.min.js')}}"></script>

<!-- Timer js-->
<script src="{{asset('assets/front/js/menu.js')}}"></script>

<!-- Bootstrap js-->

<!-- Bootstrap js-->
<script src="{{asset('assets/front/js/bootstrap-notify.min.js')}}"></script>

<!-- Theme js-->
<script src="{{asset('assets/front/js/slider-animat-three.js')}}"></script>
<script src="{{asset('assets/front/js/script.js')}}"></script>
<script src="{{asset('assets/front/js/modal.js')}}"></script>

<script>
    $(document).ready(function () {
    //    language ID
        let changeLanguage = document.querySelector('#changeLanguage');
        changeLanguage.addEventListener('change',(e) => {
            let languageId = document.getElementById('changeLanguage').value;
            if (languageId) {
                $.ajax({
                    url: "{{route('language')}}",
                    method: "get",
                    data: {languageId : languageId},
                    dataType: "json",
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: (data) => {
                        if (data.status == "success") {
                            window.location.href = "{{url('/')}}";
                        }
                    }
                })
            }
        })
    })
</script>
</body>

</html>
