<!-- Header -->
<header id="page-header">
    <!-- Header Content -->
    <div class="content-header">
      <!-- Left Section -->
      <div class="d-flex align-items-center">
        <!-- Toggle Sidebar -->
        <!-- Layout API, functionality initialized in Template._uiApiLayout()-->
        <button type="button" class="btn btn-alt-secondary me-1 d-lg-none" data-toggle="layout" data-action="sidebar_toggle">
          <i class="fa fa-fw fa-bars"></i>
        </button>
        <!-- END Toggle Sidebar -->

        <!-- Toggle Sidebar Mini Mode -->
        <!-- Layout API, functionality initialized in Template._uiApiLayout()-->
        <button type="button" class="btn btn-alt-secondary me-1 d-none d-lg-inline-block" data-toggle="layout" data-action="sidebar_mini_toggle">
          <i class="fa fa-fw fa-ellipsis-v"></i>
        </button>
        <!-- END Toggle Sidebar Mini Mode -->

        <!-- Open Search Section -->
        <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
        <button type="button" class="btn btn-alt-secondary d-lg-none" data-toggle="layout" data-action="header_search_on">
          <i class="fa fa-fw fa-search"></i> <span class="ms-1 d-none d-sm-inline-block">Search..</span>
        </button>
        <!-- END Open Search Section -->

        <!-- Search form in larger screens -->
        <form class="d-none d-lg-inline-block ms-1" action="be_pages_generic_search.html" method="POST">
          <input type="text" class="form-control border-0 rounded" placeholder="Search All Files.." id="page-header-search-input-full" name="page-header-search-input-full" style="min-width: 320px;">
        </form>
        <!-- END Search form in larger screens -->
      </div>
      <!-- END Left Section -->

      <!-- Right Section -->
      <div>
        <!-- User Dropdown -->
           @php
              $id = Auth::user()->id;
              $adminData = App\Models\User::find($id);
            @endphp
        <div class="dropdown d-inline-block">
          <button type="button" class="btn btn-alt-secondary" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="d-none d-lg-inline mx-1">{{ $adminData->name }} </span>
            {{-- <img class="img-avatar" src="{{ (!empty($adminData->profile_image))? url('upload/admin_images/'.$adminData->profile_image):url('upload/no_image.jpg') }}" alt=""> --}}
            {{-- <span class="badge rounded-pill bg-dark"><img class="img-avatar" src="{{ (!empty($adminData->profile_image))? url('upload/admin_images/'.$adminData->profile_image):url('upload/no_image.jpg') }}" alt=""></span> --}}
            <i class="fa fa-fw fa-angle-down ms-1"></i>
          </button>
          <div class="dropdown-menu dropdown-menu-end dropdown-menu-sm p-0 overflow-hidden" aria-labelledby="page-header-user-dropdown">
            <div class="row g-0">
              {{-- <div class="col-5 d-flex align-items-center justify-content-center bg-image p-2" style="background-image: url('assets/media/photos/photo10.jpg');"> --}}
                {{-- <img class="img-avatar img-avatar96 img-avatar-thumb" src="{{ (!empty($adminData->profile_image))? url('upload/admin_images/'.$adminData->profile_image):url('upload/no_image.jpg') }}" alt=""> --}}
              {{-- </div> --}}
              <a class="dropdown-item" href="{{ route('admin.profile') }}">
                <i class="far fa-fw fa-user me-1"></i> Profile
              </a>
              <a class="dropdown-item d-flex align-items-center justify-content-between" href="{{ route('change.password') }}">
                <span><i class="far fa-fw fa-envelope me-1"></i> Change Password</span>
                {{-- <span class="badge bg-primary rounded-pill">3</span> --}}
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="{{ route('admin.logout') }}">
                <span><i class="fa-solid fa-power-off text-danger"></i></span><span class="text-danger"> Logout </span>
              </a>
              {{-- <div role="separator" class="dropdown-divider"></div>
              <div class="col-7 p-2 fs-sm">
                <a class="dropdown-item" href="{{ route('admin.profile') }}"><i class="align-middle ri-user-line me-1"></i> Profile</a>
                    <a class="dropdown-item" href="{{ route('change.password') }}"><i class="align-middle ri-wallet-2-line me-1"></i> Change Password</a>
                    <a class="dropdown-item d-block" href="{{ route('usermanagement.all') }}"><i class="align-middle ri-settings-2-line me-1"></i> Settings</a>
                    <a class="dropdown-item" href="#"><i class="align-middle ri-lock-unlock-line me-1"></i> Lock screen</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item text-danger" href="{{ route('admin.logout') }}"><i class="align-middle ri-shut-down-line me-1 text-danger"></i> Logout</a>
              </div> --}}
            </div>
          </div>
        </div>
        <!-- END User Dropdown -->
      </div>
      <!-- END Right Section -->
    </div>
    <!-- END Header Content -->

    <!-- Header Search -->
    <div id="page-header-search" class="overlay-header bg-header-dark">
      <div class="content-header">
        <form class="w-100" action="be_pages_generic_search.html" method="POST">
          <div class="input-group">
            <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
            <button type="button" class="btn btn-danger" data-toggle="layout" data-action="header_search_off">
              <i class="fa fa-fw fa-times-circle"></i>
            </button>
            <input type="text" class="form-control border-0" placeholder="Search All Files.." id="page-header-search-input" name="page-header-search-input">
          </div>
        </form>
      </div>
    </div>
    <!-- END Header Search -->

    <!-- Header Loader -->
    <!-- Please check out the Loaders page under Components category to see examples of showing/hiding it -->
    <div id="page-header-loader" class="overlay-header bg-primary-darker">
      <div class="content-header">
        <div class="w-100 text-center">
          <i class="fa fa-fw fa-2x fa-sun fa-spin text-white"></i>
        </div>
      </div>
    </div>
    <!-- END Header Loader -->
  </header>
  <!-- END Header -->