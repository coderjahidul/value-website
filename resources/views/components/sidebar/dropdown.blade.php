@props([
    'id',
    'icon',
    'label',
    'active' => false
])

<li class="relative" x-data="{ open: {{ $active ? 'true' : 'false' }} }">
    <button 
        type="button"
        @click="open = !open"
        class="flex items-center w-full gap-3 px-3 py-2.5 rounded-xl transition-all duration-200 group [body.sidebar-collapsed_&]:justify-center [body.sidebar-collapsed_&]:px-0 {{ $active ? 'text-emerald-300 font-semibold bg-emerald-500/10 ring-1 ring-emerald-500/10' : 'text-slate-300/80 hover:bg-white/5 hover:text-slate-100' }}"
        :aria-expanded="open"
    >
        <div class="flex items-center justify-center w-5 h-5 transition-colors text-slate-200/80 group-hover:text-slate-100 shrink-0">
            @php
                $iconClass = str_starts_with($icon, 'mdi-') ? 'mdi ' . $icon : (str_starts_with($icon, 'uil-') ? 'uil ' . $icon : $icon);
            @endphp
            <i class="{{ $iconClass }} text-lg"></i>
        </div>
        <span class="text-sm font-medium transition-opacity duration-200 [body.sidebar-collapsed_&]:hidden truncate text-left flex-1">{{ $label }}</span>
        <i
            class="mdi mdi-chevron-right text-[18px] transition-transform duration-200 text-slate-400 group-hover:text-slate-200 [body.sidebar-collapsed_&]:hidden"
            :class="{ 'rotate-90': open }"
            aria-hidden="true"
        ></i>
    </button>

    <ul 
        x-show="open" 
        x-cloak
        x-transition:enter="transition ease-out duration-200"
        x-transition:enter-start="opacity-0 -translate-y-2 max-h-0"
        x-transition:enter-end="opacity-100 translate-y-0 max-h-[1000px]"
        x-transition:leave="transition ease-in duration-150"
        x-transition:leave-start="opacity-100 translate-y-0 max-h-[1000px]"
        x-transition:leave-end="opacity-0 -translate-y-2 max-h-0"
        class="mt-1 space-y-1 list-none p-0 overflow-hidden [body.sidebar-collapsed_&]:hidden"
        style="display: none;"
    >
        {{ $slot }}
    </ul>
</li>
