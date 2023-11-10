<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use DataTables;

class UserController extends Controller
{
    public function index()
    {
        return view('users');
    }

    public function getUsers()
    {
        $users = User::select(['id', 'name', 'email', 'created_at']);

        return DataTables::of($users)
            ->addColumn('action', function ($user) {
                // You can add custom actions here
                return '<button class="btn btn-sm btn-info">View</button>';
            })
            ->toJson();
    }
}
