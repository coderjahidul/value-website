@props([
    'route',
    'icon',
    'label',
    'active' => false
])

<li>
    <a href="{{ $route }}" 
       class="flex items-center w-full gap-3 px-3 py-2.5 rounded-xl transition-all duration-200 group [body.sidebar-collapsed_&]:justify-center [body.sidebar-collapsed_&]:px-0 {{ $active ? 'bg-emerald-500/15 text-slate-50 ring-1 ring-emerald-500/15 shadow-[0_10px_30px_-18px_rgba(16,185,129,0.55)]' : 'text-slate-300/80 hover:bg-white/5 hover:text-slate-100' }}">
        <div class="flex items-center justify-center w-5 h-5 transition-colors text-slate-200/80 group-hover:text-slate-100 shrink-0">
            @php
                $iconClass = str_starts_with($icon, 'mdi-') ? 'mdi ' . $icon : (str_starts_with($icon, 'uil-') ? 'uil ' . $icon : $icon);
            @endphp
            <i class="{{ $iconClass }} text-lg"></i>
        </div>
        <span class="text-sm font-medium transition-opacity duration-200 [body.sidebar-collapsed_&]:hidden truncate">{{ $label }}</span>
    </a>
</li>
