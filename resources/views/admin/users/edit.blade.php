@extends('admin.layout.webapp')
@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Edit {{ !empty($title)?$title:'' }}</h3>
                </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>{{ !empty($title)?$title:'' }} <small>{{ __('Register') }}</small></h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">

                            <form class="form-horizontal form-label-left" method="POST" action="{{ route('register') }}" enctype="multipart/form-data" novalidate>
                                @csrf
                                <div class="item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="language_id">Select Language <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6">
                                        <select name="language_id" id="language_id" class="form-control @error('language_id') is-invalid @enderror" required="required">
                                            <option value="">Select Language</option>
                                            @if (!empty($language))
                                                @foreach($language as $lang)
                                                    <option value="{{$lang->id}}" {{(!empty($record->language_id == $lang->id)?"selected":"")}}>{{$lang->name}}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                        @error('language_id')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="role_id">Select Role <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6">
                                        <select name="role_id" id="role_id" class="form-control @error('role_id') is-invalid @enderror" required="required">
                                            <option value="">Select Role</option>
                                            @if (!empty($role))
                                                @foreach($role as $roles)
                                                    <option value="{{$roles->id}}" {{(!empty($record->role_id == $roles->id)?"selected":"")}}>{{$roles->name}}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                        @error('role_id')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="name">Name <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6">
                                        <input id="name" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $record->name ?? "" }}" data-validate-length-range="6" data-validate-words="2" placeholder="both name(s) e.g Jon Doe" required="required" autocomplete="name" autofocus type="text">
                                        @error('name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="email">{{ __('E-Mail Address') }} <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6">
                                        <input type="email" id="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $record->email ?? "" }}" required="required" autocomplete="email">
                                        @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="email">Confirm Email <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6">
                                        <input type="email" id="email2" name="confirm_email" data-validate-linked="email" required="required" value="{{ $record->email ?? "" }}" class="form-control" autocomplete="email">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="contact_number">{{__('Contact Number')}} <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6">
                                        <input type="number" id="contact_number" name="contact_number" required="required" data-validate-length-range="10,15" value="{{ $record->contact_number ?? "" }}" class="form-control @error('contact_number') is-invalid @enderror">
                                        @error('contact_number')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                </div>



                                <div class="item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="occupation">Occupation <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6">
                                        <input id="occupation" type="text" name="occupation" value="{{ $record->occupation ?? "" }}" data-validate-length-range="5,20" class="optional form-control">
                                    </div>
                                </div>
                                <div class="item form-group @error('password') bad @enderror">
                                    <label for="password" class="col-form-label col-md-3 label-align">{{ __('Password') }}</label>
                                    <div class="col-md-6 col-sm-6">
                                        <input id="password" type="password" name="password" data-validate-length="6,8" class="form-control @error('password') is-invalid @enderror" required="required" autocomplete="new-password">
                                    </div>
                                    @error('password')
                                    <div class="alert">{{$message}}</div>
                                    @enderror
                                </div>
                                <div class="item form-group">
                                    <label for="password-confirm" class="col-form-label col-md-3 col-sm-3 label-align ">Repeat Password</label>
                                    <div class="col-md-6 col-sm-6">
                                        <input id="password-confirm" type="password" name="password_confirmation" data-validate-linked="password" class="form-control" required="required" autocomplete="new-password">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="profile_picture">Profile Picture <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="input-group-btn">
                                            <div class="image-upload">
                                                <img src="{{asset(!empty($record->profile_picture)?$record->profile_picture:'assets/admin/images/placeholder.png')}}" class="img-responsive">
                                                <div class="file-btn">
                                                    <input type="file" id="profile_picture" name="profile_picture" accept=".jpg,.png">
                                                    <input type="text" id="profile_picture" name="profile_picture" value="" hidden="">
                                                    <label class="btn btn-info">Upload</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 offset-md-3">
                                        <button type="submit" class="btn btn-primary">Cancel</button>
                                        <button id="send" type="submit" class="btn btn-success">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('page_js')
    <script src="{{asset('assets/admin/validator/validator.js')}}"></script>
@endsection
