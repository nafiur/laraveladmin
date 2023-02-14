<?php

namespace App\Http\Controllers;

use App\Models\Sector;
use App\Models\Supplier;
use Illuminate\Http\Request;

class SectorController extends Controller
{
    public function SectorShow(){
        // $suppliers = Supplier::all();
        $suppliers = Sector::latest()->get();
        return view('backend.supplier.supplier_all',compact('suppliers'));
    } // End Method 
}
