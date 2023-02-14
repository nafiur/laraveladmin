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
                <div class="col-xl-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    <p class="mb-2 text-truncate font-size-14">Total Sales</p>
                                    <h4 class="mb-2">1452</h4>
                                    <p class="mb-0 text-muted"><span class="text-success fw-bold font-size-12 me-2"><i class="align-middle ri-arrow-right-up-line me-1"></i>9.23%</span>from previous period</p>
                                </div>
                                <div class="avatar-sm">
                                    <span class="avatar-title bg-light text-primary rounded-3">
                                        <i class="ri-shopping-cart-2-line font-size-24"></i>  
                                    </span>
                                </div>
                            </div>                                            
                        </div><!-- end cardbody -->
                    </div><!-- end card -->
                </div><!-- end col -->
                <div class="col-xl-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    <p class="mb-2 text-truncate font-size-14">New Orders</p>
                                    <h4 class="mb-2">938</h4>
                                    <p class="mb-0 text-muted"><span class="text-danger fw-bold font-size-12 me-2"><i class="align-middle ri-arrow-right-down-line me-1"></i>1.09%</span>from previous period</p>
                                </div>
                                <div class="avatar-sm">
                                    <span class="avatar-title bg-light text-success rounded-3">
                                        <i class="mdi mdi-currency-usd font-size-24"></i>  
                                    </span>
                                </div>
                            </div>                                              
                        </div><!-- end cardbody -->
                    </div><!-- end card -->
                </div><!-- end col -->
                <div class="col-xl-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    <p class="mb-2 text-truncate font-size-14">New Users</p>
                                    <h4 class="mb-2">8246</h4>
                                    <p class="mb-0 text-muted"><span class="text-success fw-bold font-size-12 me-2"><i class="align-middle ri-arrow-right-up-line me-1"></i>16.2%</span>from previous period</p>
                                </div>
                                <div class="avatar-sm">
                                    <span class="avatar-title bg-light text-primary rounded-3">
                                        <i class="ri-user-3-line font-size-24"></i>  
                                    </span>
                                </div>
                            </div>                                              
                        </div><!-- end cardbody -->
                    </div><!-- end card -->
                </div><!-- end col -->
                <div class="col-xl-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    <p class="mb-2 text-truncate font-size-14">Unique Visitors</p>
                                    <h4 class="mb-2">29670</h4>
                                    <p class="mb-0 text-muted"><span class="text-success fw-bold font-size-12 me-2"><i class="align-middle ri-arrow-right-up-line me-1"></i>11.7%</span>from previous period</p>
                                </div>
                                <div class="avatar-sm">
                                    <span class="avatar-title bg-light text-success rounded-3">
                                        <i class="mdi mdi-currency-btc font-size-24"></i>  
                                    </span>
                                </div>
                            </div>                                              
                        </div><!-- end cardbody -->
                    </div><!-- end card -->
                </div><!-- end col -->
            </div><!-- end row -->

            

            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body">
                            {{-- start icon --}}
                            <div class="px-4 pt-4 rounded push">
                                <div class="row items-push">
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="{{ route('sector.all') }}">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-envelope fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Sector Setup</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-pencil-alt fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Profile</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-wrench fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Settings</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Patient</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Event</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
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
                            {{-- start icon --}}
                            <div class="px-4 pt-4 rounded push">
                                <div class="row items-push">
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-envelope fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Inbox</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-pencil-alt fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Profile</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-wrench fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Settings</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Patient</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Event</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
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
                            {{-- start icon --}}
                            <div class="px-4 pt-4 rounded push">
                                <div class="row items-push">
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-envelope fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Inbox</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-pencil-alt fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Profile</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-wrench fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Settings</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Patient</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
                                      <div class="block-content">
                                        <p class="mb-2 d-none d-sm-block text-primary">
                                          <i class="opacity-50 fa fa-plus-circle fa-2x"></i>
                                        </p>
                                        <p class="fw-semibold fs-sm text-uppercase">Add Event</p>
                                      </div>
                                    </a>
                                  </div>
                                  <div class="col-6 col-md-4 col-xl-2">
                                    <a class="block mb-0 text-center block-rounded block-link-pop d-flex align-items-center h-100" href="javascript:void(0)">
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