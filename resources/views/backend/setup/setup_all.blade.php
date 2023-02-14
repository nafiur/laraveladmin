@extends('admin.admin_master')
@section('admin')


 <div class="page-content">
                    <div class="container-fluid">

                       <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0">Topbar Light</h4>

                        <div class="page-title-right">
                            <ol class="m-0 breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript: void(0);">Layouts</a></li>
                                <li class="breadcrumb-item active">Topbar Light</li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->
            
            <div class="row">
                <div class="col-xl-12 col-md-6">
                    <div class="border card border-primary">
                        <div class="bg-transparent card-header border-primary">
                            <h5 class="my-0 text-primary"><i class="mdi mdi-bullseye-arrow me-3"></i>Primary outline Card</h5>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div><!-- end col -->
            </div><!-- end row -->

            

            <div class="row">
                <div class="col-xl-12">
                    <div class="border card border-dark">
                        <div class="card-body">
                            {{-- start icon --}}
                            <div class="px-4 pt-4 rounded push">
                                <div class="row items-push">
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="{{ route('sector.all') }}">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-envelope fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Sector Setup</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-pencil-alt fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Profile</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-wrench fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Settings</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Patient</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Event</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Payment</p>
                                      </div>
                                    </a>
                                  </div>
                                </div>
                              </div> 
                            <div class="px-4 pt-4 rounded push">
                                <div class="row items-push">
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="{{ route('sector.all') }}">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-envelope fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Sector Setup</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-pencil-alt fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Profile</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-wrench fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Settings</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Patient</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Event</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Payment</p>
                                      </div>
                                    </a>
                                  </div>
                                </div>
                              </div> 
                            <div class="px-4 pt-4 rounded push">
                                <div class="row items-push">
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="{{ route('sector.all') }}">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-envelope fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Sector Setup</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-pencil-alt fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Profile</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-wrench fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Settings</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Patient</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Event</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center border border-primary block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Payment</p>
                                      </div>
                                    </a>
                                  </div>
                                </div>
                              </div> 
                              {{-- end icon --}}
                            
                        </div><!-- end card -->
                    </div><!-- end card -->
                </div>
                <!-- end col -->
                
            </div>
            <!-- end row -->
        </div>
        
                     
                        
                    </div> <!-- container-fluid -->
                </div>
 

@endsection