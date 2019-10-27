<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\banner;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;
use Session;

class bannerController extends Controller
{
    public function index(){
        return view('admin.banner.index');
    }

    public function add(Request $request){
        $slug = 'banner'.uniqid(20);
        $insert = banner::insert([
            'heading'=>$_POST['heading'],
            'subheading'=>$_POST['subheading'],
            'button_name'=>$_POST['button_name'],
            'button_url'=>$_POST['button_url'],
            'slug'=>$slug,
            'created_at'=>Carbon::now()->toDateTimeString()
        ]);

        if($request->hasFile('banner_img')){
            $file=$request->file('banner_img');
            $path=Storage::putFile('uploads/banner',$file);
            banner::where('slug',$slug)->update([
                'banner_img'=>$path
            ]);
        }

        if($insert){
            Session::flash('success','value');
            return redirect()->route('banner');
        }
    }
}
