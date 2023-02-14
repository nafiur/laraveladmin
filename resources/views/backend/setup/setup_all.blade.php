@extends('admin.admin_master')
@section('admin')


 <div class="page-content">
                    <div class="container-fluid">
                        <nav aria-label="breadcrumb">
                            <ol class="px-4 py-3 rounded breadcrumb breadcrumb-alt bg-body-extra-light push fs-sm">
                              <li class="breadcrumb-item">
                                <a href="javascript:void(0)">Home</a>
                              </li>
                              <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                            </ol>
                          </nav>
                       {{-- <!-- start page title -->
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
            <!-- end page title --> --}}
            
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
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('newemployee.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-compass fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Show All Employee</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('newemployee.add') }}">
                    {{-- <div class="ribbon-box">2</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-envelope-open fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Add New Employee</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-success" href="javascript:void(0)">
                    {{-- <div class="ribbon-box">3</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-briefcase fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Projects</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-chart-pie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Statistics</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="javascript:void(0)">
                    {{-- <div class="ribbon-box">24</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-user-tie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">People</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-file-word fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Documents</p>
                    </div>
                  </a>
                </div>
              </div>
            <div class="row">
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('newemployee.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-compass fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Show All Employee</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('newemployee.add') }}">
                    {{-- <div class="ribbon-box">2</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-envelope-open fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Add New Employee</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-success" href="javascript:void(0)">
                    {{-- <div class="ribbon-box">3</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-briefcase fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Projects</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-chart-pie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Statistics</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="javascript:void(0)">
                    {{-- <div class="ribbon-box">24</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-user-tie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">People</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-file-word fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Documents</p>
                    </div>
                  </a>
                </div>
              </div>
            <div class="row">
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="{{ route('newemployee.all') }}">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-compass fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Show All Employee</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="{{ route('newemployee.add') }}">
                    {{-- <div class="ribbon-box">2</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-envelope-open fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Add New Employee</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-success" href="javascript:void(0)">
                    {{-- <div class="ribbon-box">3</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-briefcase fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Projects</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-chart-pie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Statistics</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow ribbon ribbon-modern ribbon-primary" href="javascript:void(0)">
                    {{-- <div class="ribbon-box">24</div> --}}
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-user-tie fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">People</p>
                    </div>
                  </a>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                  <a class="block text-center block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                    <div class="block-content">
                      <p class="my-2">
                        <i class="fa fa-file-word fa-2x text-muted"></i>
                      </p>
                      <p class="fw-semibold">Documents</p>
                    </div>
                  </a>
                </div>
              </div>
            
            
                            
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