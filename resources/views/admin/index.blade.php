@extends('admin.admin_master')
@section('admin')


<div class="main-content">

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
                                  
                              </div> 
                              {{-- end icon --}}
                            
                        </div><!-- end card -->
                    </div><!-- end card -->
                </div>
                <!-- end col -->            
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
                            <div class="dropdown float-end">
                                <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="mdi mdi-dots-vertical"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Sales Report</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Export Report</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Profit</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                </div>
                            </div>

                            <h4 class="mb-4 card-title">Latest Transactions</h4>

                            <div class="table-responsive">
                                <table class="table mb-0 align-middle table-centered table-hover table-nowrap">
                                    <thead class="table-light">
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Status</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th style="width: 120px;">Salary</th>
                                        </tr>
                                    </thead><!-- end thead -->
                                    <tbody>
                                        <tr>
                                            <td><h6 class="mb-0">Charles Casey</h6></td>
                                            <td>Web Developer</td>
                                            <td>
                                                <div class="font-size-13"><i class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-success me-2"></i>Active</div>
                                            </td>
                                            <td>
                                                23
                                            </td>
                                            <td>
                                                04 Apr, 2021
                                            </td>
                                            <td>$42,450</td>
                                        </tr>
                                         <!-- end -->
                                         <tr>
                                            <td><h6 class="mb-0">Alex Adams</h6></td>
                                            <td>Python Developer</td>
                                            <td>
                                                <div class="font-size-13"><i class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-warning me-2"></i>Deactive</div>
                                            </td>
                                            <td>
                                                28
                                            </td>
                                            <td>
                                                01 Aug, 2021
                                            </td>
                                            <td>$25,060</td>
                                        </tr>
                                         <!-- end -->
                                         <tr>
                                            <td><h6 class="mb-0">Prezy Kelsey</h6></td>
                                            <td>Senior Javascript Developer</td>
                                            <td>
                                                <div class="font-size-13"><i class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-success me-2"></i>Active</div>
                                            </td>
                                            <td>
                                                35
                                            </td>
                                            <td>
                                                15 Jun, 2021
                                            </td>
                                            <td>$59,350</td>
                                        </tr>
                                         <!-- end -->
                                         <tr>
                                            <td><h6 class="mb-0">Ruhi Fancher</h6></td>
                                            <td>React Developer</td>
                                            <td>
                                                <div class="font-size-13"><i class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-success me-2"></i>Active</div>
                                            </td>
                                            <td>
                                                25
                                            </td>
                                            <td>
                                                01 March, 2021
                                            </td>
                                            <td>$23,700</td>
                                        </tr>
                                         <!-- end -->
                                         <tr>
                                            <td><h6 class="mb-0">Juliet Pineda</h6></td>
                                            <td>Senior Web Designer</td>
                                            <td>
                                                <div class="font-size-13"><i class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-success me-2"></i>Active</div>
                                            </td>
                                            <td>
                                                38
                                            </td>
                                            <td>
                                                01 Jan, 2021
                                            </td>
                                            <td>$69,185</td>
                                        </tr>
                                         <!-- end -->
                                         <tr>
                                            <td><h6 class="mb-0">Den Simpson</h6></td>
                                            <td>Web Designer</td>
                                            <td>
                                                <div class="font-size-13"><i class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-warning me-2"></i>Deactive</div>
                                            </td>
                                            <td>
                                                21
                                            </td>
                                            <td>
                                                01 Sep, 2021
                                            </td>
                                            <td>$37,845</td>
                                        </tr>
                                         <!-- end -->
                                         <tr>
                                            <td><h6 class="mb-0">Mahek Torres</h6></td>
                                            <td>Senior Laravel Developer</td>
                                            <td>
                                                <div class="font-size-13"><i class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-success me-2"></i>Active</div>
                                            </td>
                                            <td>
                                                32
                                            </td>
                                            <td>
                                                20 May, 2021
                                            </td>
                                            <td>$55,100</td>
                                        </tr>
                                         <!-- end -->
                                    </tbody><!-- end tbody -->
                                </table> <!-- end table -->
                            </div>
                        </div><!-- end card -->
                    </div><!-- end card -->
                </div>
                <!-- end col -->
                
            </div>
            <!-- end row -->
        </div>
        
    </div>
    <!-- End Page-content -->    
</div>

@endsection