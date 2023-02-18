@extends('admin.admin_master')
@section('admin')
@section('title'){{'Add Role'}} @endsection

<div class="page-content">
    <div class="container-fluid">
            <nav aria-label="breadcrumb">
                <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                <li class="breadcrumb-item">
                    <a href="/dashboard">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Add Role</li>
                </ol>
            </nav>
            {{-- <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <a href="{{ route('all.roles') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Back </i></a> <br>  <br>
                                <h4 class="card-title">Add Role </h4><br><br>
                                <div class="row">
                                <form method="post" action="{{ route('roles.store') }}" id="myForm" >
                                    @csrf
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3 form-group">
                                                    <label for="firstname" class="form-label">Role Name</label>
                                                    <input type="text" name="name" class="form-control"   >                                               
                                                </div>
                                                <div class="mb-3 form-group">
                                                    <button type="submit" style="float:right" class="mt-2 btn btn-success waves-effect waves-light float-right"><i class="mdi mdi-content-save"></i> Save</button>                                              
                                                </div>
                                            </div>
                                        </div>
                                            <!-- end row -->
                                </form>
                            </div>
                            </div> <!-- end col -->
                </div> <!-- end row-->
            </div> <!-- container --> --}}
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <a href="{{ route('all.roles') }}" class="btn btn-dark btn-rounded waves-effect waves-light" style="float:right;"><i class="fas fa-plus-circle"> Back </i></a> <br>  <br>
                                <h4 class="card-title">Add Role </h4><br><br>
                                <form method="post" action="{{ route('roles.store') }}" id="myForm" >
                                        @csrf
                                        <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3 form-group">
                                                <label for="firstname" class="form-label">Role Name</label>
                                                <input type="text" name="name" class="form-control"   >                                               
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="submit" class="btn mt-4 btn-info waves-effect waves-light" value="Save Info">
                                            {{-- <button type="submit" class="mt-4 btn btn-success waves-effect waves-light"><i class="mdi mdi-content-save"></i> Save</button> --}}
                                        </div>
                                    </div>
                                    <!-- end row -->
                                </form>
                        </div>
                    </div>
                </div> <!-- end col -->
          </div>
    </div> <!-- content -->
</div>
</div>


<script type="text/javascript">
    $(document).ready(function (){
        $('#myForm').validate({
            rules: {
                name: {
                    required : true,
                }, 
                
                
            },
            messages :{
                name: {
                    required : 'Please Enter Permission Name',
                }, 
                 

            },
            errorElement : 'span', 
            errorPlacement: function (error,element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight : function(element, errorClass, validClass){
                $(element).addClass('is-invalid');
            },
            unhighlight : function(element, errorClass, validClass){
                $(element).removeClass('is-invalid');
            },
        });
    });
    
</script>

 



@endsection