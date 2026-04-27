<!DOCTYPE html>
<html lang="en">
@php
  /** Load site info once */
  $info = \App\Models\Information::first();

  /** Build logo URL with safe fallback */
  $logoUrl =
      $info && !empty($info->site_logo)
          ? asset('uploads/img/' . $info->site_logo)
          : asset('backend/img/default-logo.svg'); // নিজের fallback ফাইল দিন
@endphp
@include('backend.partials.head')

<body class="loading flex h-screen overflow-hidden bg-gray-50 font-sans text-gray-800 antialiased selection:bg-blue-500 selection:text-white"
      data-layout="detached" data-layout-color="light" data-rightbar-onstart="true">

  {{-- App Preloader --}}
  <div id="app-preloader" role="status" aria-live="polite" aria-label="Loading" aria-hidden="false">
    <div class="preloader-center">
      <div class="spinner-rings" aria-hidden="true">
        <span></span>
        <span></span>
        <span></span>
      </div>
      <p class="preloader-text">Loading…</p>
    </div>
  </div>

  <!-- Mobile Backdrop -->
  <div id="sidebar-backdrop"
       class="fixed inset-0 z-1040 hidden cursor-pointer bg-gray-900/50 opacity-0 transition-opacity duration-300 lg:hidden">
  </div>

  <!-- ========== Left Sidebar ========== -->
  @include('backend.partials.sidebar')

  <!-- ========== Main Content Wrapper ========== -->
  <div id="main-content" class="relative flex h-screen min-w-0 flex-1 flex-col transition-all duration-300 ease-in-out">

    <!-- Topbar -->
    <header class="z-30 flex h-[70px] shrink-0 items-center border-b border-gray-200 bg-white shadow-sm">
      @include('backend.partials.topbar')
    </header>

    <!-- Scrollable Content -->
    <main class="flex-1 overflow-y-auto bg-white transition-all duration-300">
      <div class="container-fluid mx-auto min-h-[calc(100vh-140px)] max-w-[1600px] px-4 py-6 md:px-6 md:py-8 lg:px-10 lg:py-10 bg-white/50">
        @yield('content')
      </div>
    </main>

    <!-- Footer -->
    <footer class="shrink-0 border-t border-gray-200 bg-white text-center text-sm text-gray-600">
      @include('backend.partials.footer')
    </footer>
  </div>

  <div class="modal fade" id="common_modal" tabindex="-1" aria-hidden="true"></div>

  @include('backend.partials.js')

  <!-- Sidebar Toggler Script -->
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      const body = document.body;
      const toggleBtns = document.querySelectorAll('.sidebar-toggle-btn');
      const backdrop = document.getElementById('sidebar-backdrop');

      // Initialization: Remember desktop collapse state
      const handleInit = () => {
        if (window.innerWidth >= 1024) {
          const isCollapsed = localStorage.getItem('sidebar-collapsed') === 'true';
          if (isCollapsed) body.classList.add('sidebar-collapsed');
        }
      };

      const toggleSidebar = (e) => {
        if (e) e.preventDefault();

        if (window.innerWidth >= 1024) {
          // Desktop: Toggle collapsed mode
          const isCollapsed = body.classList.toggle('sidebar-collapsed');
          localStorage.setItem('sidebar-collapsed', isCollapsed);
        } else {
          // Mobile: Toggle drawer mode
          const isOpen = body.classList.toggle('sidebar-mobile-open');
          if (backdrop) {
            if (isOpen) {
              backdrop.classList.remove('hidden');
              setTimeout(() => backdrop.classList.add('opacity-100'), 10);
            } else {
              backdrop.classList.remove('opacity-100');
              setTimeout(() => backdrop.classList.add('hidden'), 300);
            }
          }
        }
      };

      // Event Listeners
      toggleBtns.forEach(btn => btn.addEventListener('click', toggleSidebar));
      if (backdrop) backdrop.addEventListener('click', toggleSidebar);

      // Auto-reset state on resize to prevent layout lock-in
      window.addEventListener('resize', () => {
        if (window.innerWidth >= 1024) {
          if (body.classList.contains('sidebar-mobile-open')) {
            body.classList.remove('sidebar-mobile-open');
            if (backdrop) {
              backdrop.classList.add('hidden');
              backdrop.classList.remove('opacity-100');
            }
          }
        }
      });

      handleInit();
    });
  </script>
</body>

</html>
