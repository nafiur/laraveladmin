@extends('admin.admin_master')
@section('admin')
@section('title') {{'Edit Sector'}} @endsection
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="page-content">
<div class="container-fluid">
    <nav aria-label="breadcrumb">
        <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
          <li class="breadcrumb-item">
            <a href="javascript:void(0)">Home</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">Edit Sector Information</li>
        </ol>
      </nav>
<div class="row">
<div class="col-12">
    <div class="card">
        <div class="card-body">

            <h4 class="card-title">Sector Edit</h4><br><br>
            
  

            <form method="post" action="{{ route('sector.update') }}" id="myForm" >
                @csrf

                <input type="hidden" name="id" value="{{ $sector->id }}">

            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Sector Name </label>
                <div class="form-group col-sm-10">
                    <input name="name" class="form-control" value="{{ $sector->name }}" type="text"    >
                </div>
            </div>
            <!-- end row -->

{{-- 
              <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Supplier Mobile </label>
                <div class="form-group col-sm-10">
                    <input name="mobile_no" value="{{ $supplier->mobile_no }}" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->


  <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Supplier Email </label>
                <div class="form-group col-sm-10">
                    <input name="email" value="{{ $supplier->email }}" class="form-control" type="email"  >
                </div>
            </div>
            <!-- end row -->


  <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Supplier Address </label>
                <div class="form-group col-sm-10">
                    <input name="address" value="{{ $supplier->address }}" class="form-control" type="text"  >
                </div>
            </div>
            <!-- end row --> --}}
 
 


        
<input type="submit" class="btn btn-info waves-effect waves-light" value="Update Sector">
            </form>
             
           
           
        </div>
    </div>
</div> <!-- end col -->
</div>
 


</div>
</div>

<script type="text/javascript">
    $(document).ready(function (){
        $('#myForm').validate({
            rules: {
                name: {
                    required : true,
                }, 
                //  mobile_no: {
                //     required : true,
                // },
                //  email: {
                //     required : true,
                // },
                //  address: {
                //     required : true,
                // },
            },
            messages :{
                name: {
                    required : 'Please Enter Your Name',
                },
                // mobile_no: {
                //     required : 'Please Enter Your Mobile Number',
                // },
                // email: {
                //     required : 'Please Enter Your Email',
                // },
                // address: {
                //     required : 'Please Enter Your Address',
                // },
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
