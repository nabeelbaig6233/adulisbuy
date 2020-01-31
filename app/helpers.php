<?php
if (!function_exists('setAciveCategory')) {
    function setAciveCategory($slug) {
        return request()->category == $slug ? 'active' : '';
    }
}

if (!function_exists('single_image')) {
    function single_image($image,$folder) {
        $image_name = rand().'.'.$image->getClientOriginalExtension();
        $image->move(public_path('assets/uploads/'.$folder),$image_name);
        $image = 'assets/uploads/'.$folder.'/'.$image_name;
        return $image;
    }
}
?>