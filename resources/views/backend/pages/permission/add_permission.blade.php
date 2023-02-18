@extends('admin.admin_master')
@section('admin')
@section('title'){{'Add Permission'}} @endsection

 <div class="page-content">
    <div class="container-fluid">
            <nav aria-label="breadcrumb">
                <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Add Permission</li>
                </ol>
            </nav>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <a href="{{ route('all.permission') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Back </i></a> <br>  <br>
                                <h4 class="card-title">Add Permission </h4><br><br>
                                <form method="post" action="{{ route('permission.store') }}" id="myForm" >
                                        @csrf
                                        <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3 form-group">
                                                <label for="firstname" class="form-label">Permission Name</label>
                                                <input type="text" name="name" class="form-control"   >                                               
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3 form-group">
                                                <label for="firstname" class="form-label">Group Name </label>
                                                <select name="group_name" class="form-select" id="example-select">
                                                    <option selected disabled >Select Permission Group  </option>                                                            
                                                    <option value="pos"> Pos</option>
                                                    <option value="employee"> Employee</option>
                                                    <option value="customer"> Customer</option>
                                                    <option value="supplier"> Supplier</option>
                                                    <option value="salary"> Salary </option>
                                                    <option value="attendence"> Attendence </option>
                                                    <option value="category"> Category </option>
                                                    <option value="product"> Product </option>
                                                    <option value="expense"> Expense </option>
                                                    <option value="orders"> Orders</option>
                                                    <option value="stock"> Stock </option>
                                                    <option value="roles"> Roles</option>                                                                 
                                                </select>                                           
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end row -->
                                    <div>
                                        <button type="submit" class="mt-2 btn btn-success waves-effect waves-light float-right"><i class="mdi mdi-content-save"></i> Save</button>
                                    </div>
                                </form>
                        </div>
                    </div>
                </div> <!-- end col -->
          </div>
    </div> <!-- container-fluid -->
</div>
@endsection