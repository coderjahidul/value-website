{{-- resources/views/backend/partials/dashboard_data.blade.php --}}
<div class="grid grid-cols-2 gap-4 md:gap-6 lg:grid-cols-4">
  {{-- ✅ Total Products --}}
  <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#0EA3AC] to-[#23C9B0] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-cyan-500/30 border border-white/10"
       onmousemove="hoverGlow(event, this)">
    <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
         style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.3), transparent 40%)">
    </div>
    <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-white/10 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

    <div class="relative z-10 flex h-full flex-col">
      <div class="flex items-start justify-between">
        <div class="space-y-1">
          <p class="text-[10px] font-black uppercase tracking-[0.2em] text-white/70">Total Products</p>
          <div class="flex items-baseline gap-2">
            <span class="countup-partial text-3xl font-black text-white md:text-4xl drop-shadow-sm" 
                  data-value="{{ (int)$products }}" data-money="0">0</span>
          </div>
        </div>
        <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/20 shadow-inner backdrop-blur-sm border border-white/10 text-white">
          <i class="mdi mdi-package-variant-closed text-2xl"></i>
        </div>
      </div>
      <div class="mt-auto pt-6">
        <span class="text-[10px] font-bold text-white/60">Inventory Overview</span>
      </div>
    </div>
    <a href="{{ url('admin/products') }}" class="absolute inset-0 z-20"></a>
  </div>

  {{-- ✅ Total Employee --}}
  <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#F5BD08] to-[#FFD24D] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-amber-500/30 border border-white/10"
       onmousemove="hoverGlow(event, this)">
    <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
         style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.3), transparent 40%)">
    </div>
    <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-slate-900/5 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

    <div class="relative z-10 flex h-full flex-col text-slate-900/90">
      <div class="flex items-start justify-between">
        <div class="space-y-1">
          <p class="text-[10px] font-black uppercase tracking-[0.2em] text-slate-900/60">Total Employee</p>
          <div class="flex items-baseline gap-2">
            <span class="countup-partial text-3xl font-black text-slate-900 md:text-4xl" 
                  data-value="{{ (int)$users }}" data-money="0">0</span>
          </div>
        </div>
        <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/30 shadow-inner backdrop-blur-sm border border-white/20 text-slate-900">
          <i class="mdi mdi-account-group text-2xl text-slate-900"></i>
        </div>
      </div>
      <div class="mt-auto pt-6">
        <span class="text-[10px] font-bold text-slate-900/50">Staff Management</span>
      </div>
    </div>
    <a href="{{ url('admin/users') }}" class="absolute inset-0 z-20"></a>
  </div>

  {{-- ✅ Site Info / Settings --}}
  @if(auth()->user()->role == 'admin')
  <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#1E293B] to-[#334155] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-slate-900/30 border border-white/10"
       onmousemove="hoverGlow(event, this)">
    <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
         style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.15), transparent 40%)">
    </div>
    <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-white/5 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

    <div class="relative z-10 flex h-full flex-col">
      <div class="flex items-start justify-between">
        <div class="space-y-1">
          <p class="text-[10px] font-black uppercase tracking-[0.2em] text-white/70">System Settings</p>
          <div class="flex items-baseline gap-2">
            <span class="text-2xl font-black text-white md:text-3xl drop-shadow-sm">Site Info</span>
          </div>
        </div>
        <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/10 shadow-inner backdrop-blur-sm border border-white/10 text-white">
          <i class="mdi mdi-cog-outline text-2xl"></i>
        </div>
      </div>
      <div class="mt-auto pt-6">
        <div class="inline-flex items-center gap-2 rounded-xl bg-white/10 px-3 py-1 text-[10px] font-black text-white uppercase tracking-wider backdrop-blur-md border border-white/10">
          <span class="h-1.5 w-1.5 rounded-full bg-emerald-400 animate-pulse"></span>
          Configure
        </div>
      </div>
    </div>
    <a href="{{ route('admin.settings.index') }}" class="absolute inset-0 z-20"></a>
  </div>
  @endif

  {{-- ✅ Analytics Report --}}
  <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#C9213B] to-[#EB5F5E] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-red-500/30 border border-white/10"
       onmousemove="hoverGlow(event, this)">
    <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
         style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.3), transparent 40%)">
    </div>
    <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-white/10 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

    <div class="relative z-10 flex h-full flex-col">
      <div class="flex items-start justify-between">
        <div class="space-y-1">
          <p class="text-[10px] font-black uppercase tracking-[0.2em] text-white/70">Business Analytics</p>
          <div class="flex items-baseline gap-2">
            <span class="text-2xl font-black text-white md:text-3xl drop-shadow-sm">Reports</span>
          </div>
        </div>
        <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/20 shadow-inner backdrop-blur-sm border border-white/10 text-white">
          <i class="mdi mdi-chart-areaspline text-2xl"></i>
        </div>
      </div>
      <div class="mt-auto pt-6">
        <div class="inline-flex items-center gap-2 rounded-xl bg-white/20 px-3 py-1 text-[10px] font-black text-white uppercase tracking-wider backdrop-blur-md border border-white/10">
          View Detail
          <i class="mdi mdi-arrow-right"></i>
        </div>
      </div>
    </div>
    <a href="{{ url('admin/order-report') }}" class="absolute inset-0 z-20"></a>
  </div>
</div>

<script>
  (function(){
    // This partial is loaded via AJAX, so we run the animations immediately.
    // The parent layout defines animateCount globally.
    document.querySelectorAll('.countup-partial').forEach(el => {
      const val = parseFloat(el.dataset.value || 0);
      const isMoney = el.dataset.money === '1';
      if(window.animateCount){
        window.animateCount(el, val, isMoney, 1200);
      } else {
        el.textContent = val;
      }
    });
  })();
</script>
