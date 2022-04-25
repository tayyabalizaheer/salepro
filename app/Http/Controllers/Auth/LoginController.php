<?php



namespace App\Http\Controllers\Auth;



use App\Http\Controllers\Controller;

use Illuminate\Foundation\Auth\AuthenticatesUsers;

use Illuminate\Http\Request;

use App\DeviceToken;
use Auth;

class LoginController extends Controller

{



    use AuthenticatesUsers;



    protected $redirectTo = '/';

    /**

     * Create a new controller instance.

     *

     * @return void

     */

    public function __construct()

    {

        $this->middleware('guest')->except('logout');

    }



    /**

     * Create a new controller instance.

     *

     * @return void

     */

    public function login(Request $request)
    {

        $input = $request->all();

        $this->validate($request, [
            'name' => 'required',
            'password' => 'required',
        ]);

        $fieldType = filter_var($request->name, FILTER_VALIDATE_EMAIL) ? 'email' : 'name';

        if(auth()->attempt(array($fieldType => $input['name'], 'password' => $input['password'])))
        {
            $DeviceToken = DeviceToken::where('token',$request->cookie('device_token'))->first();
            if($DeviceToken){
                return redirect('/');
            }else{
                Auth::logout();
                return back()->with('error','This device is not register. Please contact admin');
            }
            // dd($request->cookie('device_token'));
        }
        else {
            return redirect()->route('login')->with('error','Username And Password Are Wrong.');
        }
    }
}
