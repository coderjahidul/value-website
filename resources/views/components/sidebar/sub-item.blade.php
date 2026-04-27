@props([
    'route',
    'icon',
    'label',
    'active' => false
])

<li>
    <a href="{{ $route }}" 
       class="flex items-center w-full gap-3 pl-11 pr-3 py-2 rounded-lg transition-all duration-200 group {{ $active ? 'text-emerald-300 font-semibold bg-emerald-500/10 ring-1 ring-emerald-500/10' : 'text-slate-400 hover:text-slate-200 hover:bg-white/5' }}">
        <div class="flex items-center justify-center w-1.5 h-1.5 rounded-full transition-all {{ $active ? 'bg-emerald-400 scale-110 shadow-[0_0_10px_rgba(52,211,153,0.45)]' : 'bg-slate-700 group-hover:bg-slate-500' }}"></div>
        <span class="text-[13px] leading-tight">{{ $label }}</span>
    </a>
</li>
