<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\DeviceToken;
use Auth;
class DeviceRegistration
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $DeviceToken = DeviceToken::where('token',$request->cookie('device_token'))->first();
        if($DeviceToken){
            return $next($request);
        }else{
            Auth::logout();
            return back()->with('error','This device is not register. Please contact admin');
        }
        return $next($request);
    }
}
