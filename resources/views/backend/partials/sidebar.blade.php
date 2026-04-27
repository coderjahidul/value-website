{{-- Main Sidebar Wrapper --}}

@php
  use App\Models\Information;

  // Site info + logo
  $info = Information::first();
  $logoUrl = $info && !empty($info->site_logo) ? asset('uploads/img/' . $info->site_logo) : null;

  // Role flag (Spatie)
  $isWorker = auth()->check() && method_exists(auth()->user(), 'hasRole') ? auth()->user()->hasRole('worker') : false;

  // Active route helper
  if (!function_exists('nav_active')) {
      function nav_active($patterns = [])
      {
          foreach ((array) $patterns as $p) {
              if (request()->routeIs($p) || request()->is($p)) {
                  return 'is-active';
              }
          }
          return '';
      }
  }
@endphp

<aside id="appSidebar" aria-label="Sidebar navigation"
       class="sidebar z-1050 bg-linear-to-b fixed inset-y-0 left-0 flex w-[280px] -translate-x-full transform flex-col border-r border-white/10 from-slate-950 via-slate-900 to-slate-950 shadow-[0_30px_60px_-25px_rgba(0,0,0,0.8)] transition-all duration-300 ease-in-out lg:static lg:inset-0 lg:translate-x-0 [body.sidebar-mobile-open_&]:translate-x-0 [body.sidebar-collapsed_&]:w-[80px]">

  {{-- Ambient glow (subtle) --}}
  <div class="pointer-events-none absolute inset-0">
    <div class="absolute -left-24 -top-24 h-56 w-56 rounded-full bg-amber-500/10 blur-3xl"></div>
    <div class="absolute -bottom-24 -right-24 h-56 w-56 rounded-full bg-emerald-500/10 blur-3xl"></div>
    <div
         class="absolute inset-0 bg-[radial-gradient(1000px_circle_at_20%_0%,rgba(245,158,11,0.10),transparent_45%),radial-gradient(900px_circle_at_100%_40%,rgba(16,185,129,0.10),transparent_40%)]">
    </div>
  </div>

  {{-- Brand / Logo --}}
  <div class="relative shrink-0 border-b border-white/10 px-4 py-1">
    <x-sidebar.brand :logoUrl="$logoUrl" :info="$info" />
  </div>

  {{-- Sidebar Menu --}}
  <nav class="relative flex-1 overflow-y-auto overscroll-contain px-2 py-3 sm:px-2">
    <ul class="m-0 list-none space-y-1.5 p-0">
      <x-sidebar.menu :isWorker="$isWorker" />
    </ul>
  </nav>

  {{-- Footer --}}
  <div class="relative shrink-0 border-t border-white/10 px-4 py-2 transition-all duration-300">
    <div class="flex w-full items-center justify-between gap-4 [body.sidebar-collapsed_&]:justify-center">
      {{-- logout button --}}
      <div class="shrink-0">
        <a href="{{ route('logout') }}"
           class="flex h-10 w-10 items-center justify-center rounded-xl bg-white/5 text-slate-300 ring-1 ring-white/10 transition-colors hover:bg-white/10 hover:text-white"
           title="Logout" aria-label="Logout"
           onclick="event.preventDefault(); document.getElementById('logout-form-sidebar').submit();">
          <i class="mdi mdi-logout text-xl"></i>
        </a>
        <form id="logout-form-sidebar" action="{{ route('logout') }}" method="POST" class="hidden">@csrf</form>
      </div>

      {{-- app version only --}}
      <div class="text-[11px] text-slate-500 transition-opacity duration-200 [body.sidebar-collapsed_&]:hidden">
        <span class="shrink-0">nix</span>
        <span class="shrink-0">v-{{ env('APP_VERSION', '1.0.0') }}</span>
      </div>
    </div>
  </div>

</aside>
