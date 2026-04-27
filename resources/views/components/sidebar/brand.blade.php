@props(['logoUrl', 'info'])

<div class="flex h-16 shrink-0 items-center border-b border-slate-800/50 px-4">
  <a href="{{ route('admin.dashboard') }}" class="flex items-center gap-3 transition-opacity hover:opacity-80"
     aria-label="Dashboard">
    @if ($logoUrl)
      <img src="{{ $logoUrl }}" alt="{{ $info->site_name ?? 'Admin' }} Logo" class="h-8 w-auto object-contain">
    @else
      <span
            class="flex h-8 w-8 items-center justify-center rounded-lg bg-emerald-500/15 text-emerald-200 ring-1 ring-emerald-500/20 shadow-[0_10px_30px_-18px_rgba(16,185,129,0.55)]">
        <i class="mdi mdi-cube-outline text-xl"></i>
      </span>
      <span class="text-sm font-bold uppercase tracking-tight text-white whitespace-nowrap transition-opacity duration-300 [body.sidebar-collapsed_&]:sr-only [body.sidebar-collapsed_&]:hidden">
        {{ $info->site_name ?? 'Admin Panel' }}
      </span>
    @endif
  </a>
</div>
