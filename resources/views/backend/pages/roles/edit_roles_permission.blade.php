@extends('admin.admin_master')
@section('admin')
@section('title'){{'Edit Role In Permission'}} @endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<style type="text/css">
    
    .form-check-label{
        text-transform: capitalize;
    }
</style>

 <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">
                        <nav aria-label="breadcrumb">
                            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                            <li class="breadcrumb-item">
                                <a href="/dashboard">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">User Roles Permission Management</li>
                            </ol>
                        </nav>

    {{-- <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <ol class="m-0 breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript: void(0);">Edit Role In Permission</a></li>
                        
                    </ol>
                </div>
                <h4 class="page-title">Edit Role In Permission</h4>
            </div>
        </div>
    </div>     
                        <!-- end page title --> --}}

<div class="row">
    

  <div class="col-lg-8 col-xl-12">
<div class="card">
    <div class="card-body">
                                    
                                      
                                         
                                           

    <!-- end timeline content-->

    <div class="tab-pane" id="settings">
        <form id="myForm" method="post" action="{{ route('role.permission.update',$role->id) }}" enctype="multipart/form-data">
            @csrf
 

            <div class="row"> 

        <div class="col-md-6">
        <div class="mb-3 form-group">
            <label for="firstname" class="form-label"> Roles Name </label>
            <h3> {{ $role->name }} </h3>
           
        </div>
    </div>

       <div class="mb-2 form-check form-check-primary">
        <input class="form-check-input" type="checkbox" value="" id="customckeck15"  >
        <label class="form-check-label" for="customckeck15">Primary</label>
       </div>
 
        <hr>

        @foreach($permission_groups as $group)
        <div class="row">
            <div class="col-3">

    @php
    $permissions = App\Models\User::getpermissionByGroupName($group->group_name);
    @endphp  

                <div class="mb-2 form-check form-check-primary">
        <input class="form-check-input" type="checkbox" value="" id="customckeck1" {{ App\Models\User::roleHasPermissions($role, $permissions) ? 'checked' : ''}}  >
        <label class="form-check-label" for="customckeck1">{{ $group->group_name }}</label>
       </div>

            </div>

            <div class="col-9">

            

        @foreach($permissions as $permission)
         <div class="mb-2 form-check form-check-primary">
        <input class="form-check-input" type="checkbox" name="permission[]" {{ $role->hasPermissionTo($permission->name) ? 'checked' : '' }} value="{{ $permission->id }}" id="customckeck{{ $permission->id }}"  >
        <label class="form-check-label" for="customckeck{{ $permission->id }}">{{ $permission->name }}</label>
       </div>
       @endforeach
       <br>

            </div>
            
        </div> <!-- end row -->
        @endforeach

            </div> <!-- end row -->
 
        
            
            <div class="text-end">
                <button type="submit" class="mt-2 btn btn-success waves-effect waves-light"><i class="mdi mdi-content-save"></i> Save</button>
            </div>
        </form>
    </div>
    <!-- end settings content-->
    
                                       
                                    </div>
                                </div> <!-- end card-->

                            </div> <!-- end col -->
                        </div>
                        <!-- end row-->

                    </div> <!-- container -->

                </div> <!-- content -->


   <script type="text/javascript">
        $('#customckeck15').click(function(){
            if ($(this).is(':checked')) {
                $('input[type = checkbox]').prop('checked',true);
            }else{
                $('input[type = checkbox]').prop('checked',false);
            } 

        });
   </script>

 


@endsection