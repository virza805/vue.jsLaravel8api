<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
// use Hash;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    public function register(Request $request) {
        $request->validate([
            'name'  => ['required'],
            'email'  => ['required', 'email', 'unique:users'],
            'password'  => ['required', 'min:6', 'confirmed'],
            'password_confirmation'  => ['required'],

            'phone'  => ['required'],
            'title'  => ['required'],
            'dec'  => ['required'],
            'img'  => ['required'],

        ]);

        User::create([
            'name'  => $request->name,
            'email'  => $request->email,

            'phone'  => $request->phone,
            'title'  => $request->title,
            'dec'  => $request->dec,
            'img'  => $request->img,
            'password'  => Hash::make($request->password),
        ]);

        return response()->json(['msg' => 'Registered Successfully']);
    }

    public function login(Request $request) {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
            'device_name' => 'required',
        ]);

        $user = User::where('email', $request->email)->first();

        if (! $user || ! Hash::check($request->password, $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect.'],
            ]);
        }

        return $user->createToken($request->device_name)->plainTextToken;
    }
    public function logout(Request $request) {
        $request->user()->currentAccessToken()->delete();
        return response()->json(['msg' => 'Logout Successfull']);
    }
}
