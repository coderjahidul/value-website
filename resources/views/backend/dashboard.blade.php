{{-- resources/views/backend/dashboard.blade.php --}}
@extends('backend.app')
@section('content')
  @php
    $today = date('Y-m-d');
    $userStart = optional(auth()->user()->created_at)->format('Y-m-d') ?? $today;
    $endDateUi = request('endDate', $today);
  @endphp

  <div class="space-y-8">
    {{-- Header: Breadcrumbs & Title --}}
    <div class="flex flex-col justify-between gap-4 md:flex-row md:items-end">
      <div>
        <h1 class="text-2xl font-bold tracking-tight text-slate-900 md:text-3xl">
          Hello, {{ auth()->user()->first_name }}! 👋
        </h1>
        <p class="mt-1 text-sm font-medium text-slate-500">
          Here's what's happening with your store today.
        </p>
      </div>

      <nav class="hidden md:block">
        <ol class="flex items-center gap-2 text-sm font-medium text-slate-500">
          <li><a href="#" class="hover:text-emerald-600">Hyper</a></li>
          <li class="flex items-center gap-2 before:text-slate-300 before:content-['/']">
            <a href="#" class="hover:text-emerald-600">Dashboard</a>
          </li>
          <li class="flex items-center gap-2 text-slate-900 before:text-slate-300 before:content-['/']">
            Overview
          </li>
        </ol>
      </nav>
    </div>

    {{-- Filters Section --}}
    <div
         class="flex flex-col items-stretch justify-between gap-4 rounded-2xl border border-slate-200/60 bg-white p-4 shadow-sm lg:flex-row lg:items-end">
      <div class="flex flex-1 flex-col items-end gap-3 md:flex-row">
        <div class="w-full space-y-1.5 md:w-auto">
          <label class="ml-1 text-[11px] font-bold uppercase tracking-wider text-slate-500">Start Date</label>
          <input type="date" name="startDate" value="{{ request('startDate', $userStart) }}" min="{{ $userStart }}"
                 class="block w-full rounded-xl border-slate-200 bg-slate-50/50 px-4 py-2 text-sm font-medium text-slate-700 shadow-sm transition-all focus:border-emerald-500 focus:ring-emerald-500 md:w-44">
        </div>

        <div class="w-full space-y-1.5 md:w-auto">
          <label class="ml-1 text-[11px] font-bold uppercase tracking-wider text-slate-500">End Date</label>
          <input type="date" name="endDate" value="{{ $endDateUi }}" min="{{ $userStart }}"
                 class="block w-full rounded-xl border-slate-200 bg-slate-50/50 px-4 py-2 text-sm font-medium text-slate-700 shadow-sm transition-all focus:border-emerald-500 focus:ring-emerald-500 md:w-44">
        </div>

        <div class="flex-1">
          <div class="inline-flex rounded-xl bg-slate-100 p-1 shadow-inner">
            <button data-range="today"
                    class="active-range:bg-white active-range:text-emerald-600 active-range:shadow-sm rounded-lg px-3 py-1.5 text-xs font-bold text-slate-600 transition-all hover:text-slate-900">Today</button>
            <button data-range="7d"
                    class="rounded-lg px-3 py-1.5 text-xs font-bold text-slate-600 transition-all hover:text-slate-900">7D</button>
            <button data-range="mtd"
                    class="rounded-lg px-3 py-1.5 text-xs font-bold text-slate-600 transition-all hover:text-slate-900">MTD</button>
            <button data-range="ytd"
                    class="rounded-lg px-3 py-1.5 text-xs font-bold text-slate-600 transition-all hover:text-slate-900">YTD</button>
          </div>
        </div>
      </div>

      <button id="refreshBtn"
              class="flex items-center justify-center gap-2 rounded-xl bg-slate-900 px-6 py-2.5 text-sm font-bold text-white shadow-xl shadow-slate-200 transition-all hover:-translate-y-0.5 hover:bg-slate-800 active:translate-y-0 lg:w-auto">
        <i class="mdi mdi-refresh text-lg"></i>
        <span>Refresh Data</span>
      </button>
    </div>

    {{-- Loader --}}
    <div id="loader" class="hidden py-12">
      <div class="flex flex-col items-center justify-center gap-3">
        <div class="h-10 w-10 animate-spin rounded-full border-4 border-slate-200 border-t-emerald-500"></div>
        <p class="text-sm font-semibold text-slate-500">Fetching latest stats...</p>
      </div>
    </div>

    {{-- KPI Cards Grid --}}
    <div class="grid grid-cols-2 gap-4 md:gap-6 lg:grid-cols-4">
      <!-- Total -->
      <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#0EA3AC] to-[#23C9B0] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-cyan-500/30 border border-white/10"
           onmousemove="hoverGlow(event, this)">
        <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
             style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.3), transparent 40%)">
        </div>
        {{-- Glass shine accent --}}
        <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-white/10 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

        <div class="relative z-10 flex h-full flex-col">
          <div class="flex items-start justify-between">
            <div class="space-y-1">
              <p class="text-[10px] font-black uppercase tracking-[0.2em] text-white/70">Total Orders</p>
              <div class="flex items-baseline gap-2">
                <span class="total_orders text-3xl font-black text-white md:text-4xl drop-shadow-sm">0</span>
              </div>
            </div>
            <div class="badge-trend flex items-center gap-1 rounded-xl border border-white/30 bg-white/20 px-2.5 py-1 text-[11px] font-black text-white backdrop-blur-md shadow-sm">
              <span class="trend-icon">↗</span>
              <span class="trend-val">0%</span>
            </div>
          </div>
          <div class="mt-auto flex items-center justify-between pt-6">
            <p class="text-[10px] font-bold text-white/60">vs previous period</p>
            <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/20 shadow-inner backdrop-blur-sm border border-white/10">
              <i class="mdi mdi-shopping text-2xl text-white"></i>
            </div>
          </div>
        </div>
        <a href="{{ url('admin/orders') }}" class="absolute inset-0 z-20"></a>
      </div>

      <!-- Pending -->
      <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#2DAC37] to-[#56D15F] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-green-500/30 border border-white/10"
           onmousemove="hoverGlow(event, this)">
        <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
             style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.3), transparent 40%)">
        </div>
        <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-white/10 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

        <div class="relative z-10 flex h-full flex-col">
          <div class="flex items-start justify-between">
            <div class="space-y-1">
              <p class="text-[10px] font-black uppercase tracking-[0.2em] text-white/70">Pending</p>
              <span class="pending_orders text-3xl font-black text-white md:text-4xl drop-shadow-sm">0</span>
            </div>
            <div class="badge-trend flex items-center gap-1 rounded-xl border border-white/30 bg-white/20 px-2.5 py-1 text-[11px] font-black text-white backdrop-blur-md shadow-sm">
              <span class="trend-icon">↗</span>
              <span class="trend-val">0%</span>
            </div>
          </div>
          <div class="mt-auto flex items-center justify-between pt-6">
            <p class="text-[10px] font-bold text-white/60">vs previous period</p>
            <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/20 shadow-inner backdrop-blur-sm border border-white/10">
              <i class="mdi mdi-clock-outline text-2xl text-white"></i>
            </div>
          </div>
        </div>
        <a href="{{ url('admin/orders') }}" class="absolute inset-0 z-20"></a>
      </div>

      <!-- Complete -->
      <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#F5BD08] to-[#FFD24D] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-amber-500/30 border border-white/10"
           onmousemove="hoverGlow(event, this)">
        <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
             style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.3), transparent 40%)">
        </div>
        <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-white/10 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

        <div class="relative z-10 flex h-full flex-col text-slate-900/90">
          <div class="flex items-start justify-between">
            <div class="space-y-1">
              <p class="text-[10px] font-black uppercase tracking-[0.2em] text-slate-900/60">Completed</p>
              <span class="complete_orders text-3xl font-black text-slate-900 md:text-4xl">0</span>
            </div>
            <div class="badge-trend flex items-center gap-1 rounded-xl border border-white/40 bg-white/30 px-2.5 py-1 text-[11px] font-black text-slate-900 backdrop-blur-md shadow-sm">
              <span class="trend-icon">↗</span>
              <span class="trend-val">0%</span>
            </div>
          </div>
          <div class="mt-auto flex items-center justify-between pt-6">
            <p class="text-[10px] font-bold text-slate-900/50">vs previous period</p>
            <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/20 shadow-inner backdrop-blur-sm border border-white/20">
              <i class="mdi mdi-check-decagram text-2xl text-slate-900"></i>
            </div>
          </div>
        </div>
        <a href="{{ url('admin/orders') }}" class="absolute inset-0 z-20"></a>
      </div>

      <!-- Cancel -->
      <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#C9213B] to-[#E0435B] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-red-500/30 border border-white/10"
           onmousemove="hoverGlow(event, this)">
        <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
             style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.3), transparent 40%)">
        </div>
        <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-white/10 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

        <div class="relative z-10 flex h-full flex-col">
          <div class="flex items-start justify-between">
            <div class="space-y-1">
              <p class="text-[10px] font-black uppercase tracking-[0.2em] text-white/70">Cancelled</p>
              <span class="cancell_orders text-3xl font-black text-white md:text-4xl drop-shadow-sm">0</span>
            </div>
            <div class="badge-trend flex items-center gap-1 rounded-xl border border-white/30 bg-white/20 px-2.5 py-1 text-[11px] font-black text-white backdrop-blur-md shadow-sm">
              <span class="trend-icon">↘</span>
              <span class="trend-val">0%</span>
            </div>
          </div>
          <div class="mt-auto flex items-center justify-between pt-6">
            <p class="text-[10px] font-bold text-white/60">vs previous period</p>
            <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/20 shadow-inner backdrop-blur-sm border border-white/10">
              <i class="mdi mdi-close-circle text-2xl text-white"></i>
            </div>
          </div>
        </div>
        <a href="{{ url('admin/orders') }}" class="absolute inset-0 z-20"></a>
      </div>

      @unlessrole('worker')
        <!-- Revenue -->
        <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#006AE6] to-[#3A8BFF] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-blue-500/30 border border-white/10"
             onmousemove="hoverGlow(event, this)">
          <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
               style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.3), transparent 40%)">
          </div>
          <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-white/10 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

          <div class="relative z-10 flex h-full flex-col">
            <div class="flex items-start justify-between">
              <div class="space-y-1">
                <p class="text-[10px] font-black uppercase tracking-[0.2em] text-white/70">Revenue</p>
                <span class="sell_amount text-3xl font-black text-white md:text-4xl drop-shadow-sm">৳0</span>
              </div>
              <div class="badge-trend flex items-center gap-1 rounded-xl border border-white/30 bg-white/20 px-2.5 py-1 text-[11px] font-black text-white backdrop-blur-md shadow-sm">
                <span class="trend-icon">↗</span>
                <span class="trend-val">0%</span>
              </div>
            </div>
            <div class="mt-auto flex items-center justify-between pt-6">
              <p class="text-[10px] font-bold text-white/60">vs previous period</p>
              <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/20 shadow-inner backdrop-blur-sm border border-white/10">
                <i class="mdi mdi-currency-bdt text-2xl text-white"></i>
              </div>
            </div>
          </div>
          <a href="{{ url('admin/products') }}" class="absolute inset-0 z-20"></a>
        </div>

        <!-- Expense -->
        <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#6B7280] to-[#94A3B8] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-slate-500/30 border border-white/10"
             onmousemove="hoverGlow(event, this)">
          <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
               style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.3), transparent 40%)">
          </div>
          <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-white/10 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

          <div class="relative z-10 flex h-full flex-col">
            <div class="flex items-start justify-between">
              <div class="space-y-1">
                <p class="text-[10px] font-black uppercase tracking-[0.2em] text-white/70">Expenses</p>
                <span class="total_expense text-3xl font-black text-white md:text-4xl drop-shadow-sm">৳0</span>
              </div>
              <div class="badge-trend flex items-center gap-1 rounded-xl border border-white/30 bg-white/20 px-2.5 py-1 text-[11px] font-black text-white backdrop-blur-md shadow-sm">
                <span class="trend-icon">↘</span>
                <span class="trend-val">0%</span>
              </div>
            </div>
            <div class="mt-auto flex items-center justify-between pt-6">
              <p class="text-[10px] font-bold text-white/60">vs previous period</p>
              <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/20 shadow-inner backdrop-blur-sm border border-white/10">
                <i class="mdi mdi-wallet text-2xl text-white"></i>
              </div>
            </div>
          </div>
          <a href="{{ url('admin/products') }}" class="absolute inset-0 z-20"></a>
        </div>

        <!-- Profit -->
        <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#10B981] to-[#34D399] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-emerald-500/30 border border-white/10"
             onmousemove="hoverGlow(event, this)">
          <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
               style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.3), transparent 40%)">
          </div>
          <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-white/10 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

          <div class="relative z-10 flex h-full flex-col">
            <div class="flex items-start justify-between">
              <div class="space-y-1">
                <p class="text-[10px] font-black uppercase tracking-[0.2em] text-white/70">Net Profit</p>
                <span class="total_net_profit text-3xl font-black text-white md:text-4xl drop-shadow-sm">৳0</span>
              </div>
              <div class="badge-trend flex items-center gap-1 rounded-xl border border-white/30 bg-white/20 px-2.5 py-1 text-[11px] font-black text-white backdrop-blur-md shadow-sm">
                <span class="trend-icon">↗</span>
                <span class="trend-val">0%</span>
              </div>
            </div>
            <div class="mt-auto flex items-center justify-between pt-6">
              <p class="text-[10px] font-bold text-white/60">vs previous period</p>
              <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/20 shadow-inner backdrop-blur-sm border border-white/10">
                <i class="mdi mdi-cash-multiple text-2xl text-white"></i>
              </div>
            </div>
          </div>
          <a href="{{ url('admin/orders') }}" class="absolute inset-0 z-20"></a>
        </div>

        <!-- Stocks -->
        <div class="group relative overflow-hidden rounded-[2rem] bg-gradient-to-br from-[#7C3AED] to-[#A78BFA] p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-purple-500/30 border border-white/10"
             onmousemove="hoverGlow(event, this)">
          <div class="pointer-events-none absolute inset-0 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
               style="background: radial-gradient(600px circle at var(--x, 50%) var(--y, 0%), rgba(255,255,255,0.3), transparent 40%)">
          </div>
          <div class="absolute -right-4 -top-8 h-24 w-24 rounded-full bg-white/10 blur-2xl group-hover:scale-150 transition-transform duration-700"></div>

          <div class="relative z-10 flex h-full flex-col">
            <div class="flex items-start justify-between">
              <div class="space-y-1">
                <p class="text-[10px] font-black uppercase tracking-[0.2em] text-white/70">Stocks</p>
                <span class="text-3xl font-black text-white md:text-4xl drop-shadow-sm">{{ number_format($total_stocks ?? 0) }}</span>
              </div>
              <div class="rounded-xl border border-white/30 bg-white/20 px-2.5 py-1 text-[11px] font-black text-white backdrop-blur-md shadow-sm">
                Live
              </div>
            </div>
            <div class="mt-auto flex items-center justify-between pt-6">
              <p class="text-[10px] font-bold text-white/60">as of today</p>
              <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-white/20 shadow-inner backdrop-blur-sm border border-white/10">
                <i class="mdi mdi-cube-outline text-2xl text-white"></i>
              </div>
            </div>
          </div>
        </div>
      @endunlessrole

      @if ($isWorker)
        <!-- My Report -->
        <div class="group relative overflow-hidden rounded-[2rem] border border-blue-200 bg-gradient-to-br from-blue-50 to-blue-100 p-6 shadow-xl transition-all duration-300 hover:-translate-y-1.5 hover:shadow-2xl hover:shadow-blue-500/10"
             onmousemove="hoverGlow(event, this)">
          <div class="relative z-10 flex h-full flex-col">
            <div class="flex items-start justify-between">
              <div class="space-y-1">
                <p class="text-[10px] font-black uppercase tracking-[0.2em] text-blue-600/70">Performance</p>
                <span class="text-2xl font-black text-slate-900 md:text-3xl">My Report</span>
              </div>
              <div class="flex h-12 w-12 items-center justify-center rounded-2xl bg-blue-500/10 text-blue-600 shadow-sm border border-blue-200/50">
                <i class="mdi mdi-file-chart text-2xl"></i>
              </div>
            </div>
            <div class="mt-auto pt-6 text-right">
              <span class="inline-flex items-center gap-2 rounded-xl bg-blue-600 px-4 py-2 text-xs font-black text-white shadow-lg shadow-blue-500/30 transition-all group-hover:scale-105 active:scale-95">
                <span>VIEW FULL REPORT</span>
                <i class="mdi mdi-arrow-right"></i>
              </span>
            </div>
          </div>
          <a href="{{ url('admin/user-report') }}" class="absolute inset-0 z-20"></a>
        </div>
      @endif
    </div>
  </div>

  {{-- Bottom Partial Container --}}
  <div class="mt-8 rounded-2xl border border-slate-200/60 bg-white p-6 shadow-sm" id="dashboard_data"></div>
@endsection

@push('js')
  <script>
    window.isWorker = @json(auth()->user()->role == 'worker');

    /* ===== Hover glow (Performance optimized) ===== */
    function hoverGlow(e, card) {
      const r = card.getBoundingClientRect();
      card.style.setProperty('--x', (e.clientX - r.left) + 'px');
      card.style.setProperty('--y', (e.clientY - r.top) + 'px');
    }

    /* ===== Utility: Number formatters ===== */
    const nf = new Intl.NumberFormat('en-BD', {
      maximumFractionDigits: 0
    });
    const nfMoney = new Intl.NumberFormat('en-BD', {
      style: 'currency',
      currency: 'BDT',
      maximumFractionDigits: 0,
      currencyDisplay: 'narrowSymbol'
    });

    /* ===== Count-up animation ===== */
    function animateCount(el, to, isMoney = false, duration = 1000) {
      if (!el) return;
      const start = 0;
      const startTime = performance.now();
      el.classList.remove('animate-pulse', 'bg-slate-200', 'bg-white/20', 'rounded', 'w-12', 'h-6', 'inline-block'); // Remove skeletons

      function frame(now) {
        const p = Math.min((now - startTime) / duration, 1);
        const easedP = 1 - Math.pow(1 - p, 3); // Ease out cubic
        const val = Math.floor(start + (to - start) * easedP);
        el.textContent = isMoney ? nfMoney.format(val) : nf.format(val);
        if (p < 1) requestAnimationFrame(frame);
      }
      requestAnimationFrame(frame);
    }

    /* ===== skeleton reset ===== */
    function skeletonAll() {
      const targets = ['.total_orders', '.pending_orders', '.complete_orders', '.cancell_orders',
        '.sell_amount', '.total_expense', '.total_net_profit'
      ];
      targets.forEach(cls => {
        const el = document.querySelector(cls);
        if (el) {
          el.classList.add('animate-pulse', 'bg-white/20', 'rounded', 'inline-block', 'w-12', 'h-6');
          el.textContent = '';
        }
      });
    }

    /* ===== Trend badge logic ===== */
    function setTrend(cardSel, current, previous, positiveGood = true) {
      const card = document.querySelector(cardSel);
      if (!card) return;
      const badge = card.querySelector('.badge-trend');
      const icon = badge.querySelector('.trend-icon');
      const valEl = badge.querySelector('.trend-val');

      let pct = 0;
      if (previous > 0) {
        pct = ((current - previous) / previous) * 100;
      } else if (current > 0) {
        pct = 100;
      }
      const rounded = Math.round(pct);

      valEl.textContent = (rounded > 0 ? '+' : '') + rounded + '%';
      const upIsGood = positiveGood ? rounded >= 0 : rounded < 0;

      if (upIsGood) {
        icon.className = 'mdi mdi-trending-up trend-icon';
        badge.classList.remove('bg-red-500/30');
        badge.classList.add('bg-white/20');
      } else {
        icon.className = 'mdi mdi-trending-down trend-icon';
        badge.classList.remove('bg-white/20');
        badge.classList.add('bg-red-500/30');
      }
    }

    /* ===== Date Range Helpers ===== */
    const formatYMD = (d) => d.toISOString().slice(0, 10);
    const dateDiffDays = (a, b) => Math.floor((new Date(b) - new Date(a)) / (1000 * 60 * 60 * 24)) + 1;

    function shiftBack(sd, ed) {
      const len = dateDiffDays(sd, ed);
      const s = new Date(sd);
      s.setDate(s.getDate() - len);
      const e = new Date(ed);
      e.setDate(e.getDate() - len);
      return {
        psd: formatYMD(s),
        ped: formatYMD(e)
      };
    }

    function applyRange(range) {
      const sdInput = document.querySelector('input[name="startDate"]');
      const edInput = document.querySelector('input[name="endDate"]');
      const today = new Date();
      let s, e = new Date();

      if (range === 'today') s = new Date();
      else if (range === '7d') {
        s = new Date();
        s.setDate(s.getDate() - 6);
      } else if (range === 'mtd') s = new Date(today.getFullYear(), today.getMonth(), 1);
      else if (range === 'ytd') s = new Date(today.getFullYear(), 0, 1);
      else return;

      const minDate = new Date(sdInput.getAttribute('min'));
      if (s < minDate) s = minDate;

      sdInput.value = formatYMD(s);
      edInput.value = formatYMD(e);

      // Update active button state
      document.querySelectorAll('[data-range]').forEach(b => {
        b.classList.remove('bg-white', 'text-emerald-600', 'shadow-sm');
      });
      const btn = document.querySelector(`[data-range="${range}"]`);
      if (btn) btn.classList.add('bg-white', 'text-emerald-600', 'shadow-sm');

      fetchBoth();
    }

    /* ===== API logic ===== */
    const fetchJSON = (url) => fetch(url, {
      headers: {
        'X-Requested-With': 'XMLHttpRequest'
      }
    }).then(r => r.json());

    function fetchDashboardData() {
      if (window.isWorker) return;
      const url = @json(route('admin.getDashboardData'));
      const loader = document.getElementById('loader');
      loader.classList.remove('hidden');

      fetch(url, {
          headers: {
            'X-Requested-With': 'XMLHttpRequest'
          }
        })
        .then(r => r.text())
        .then(html => {
          document.getElementById('dashboard_data').innerHTML = html;
        })
        .finally(() => loader.classList.add('hidden'));
    }

    function fetchBoth() {
      const url = @json(route('admin.getDashboardData2'));
      const sd = document.querySelector('input[name="startDate"]').value;
      const ed = document.querySelector('input[name="endDate"]').value;
      const {
        psd,
        ped
      } = shiftBack(sd, ed);

      const curUrl = `${url}?startDate=${encodeURIComponent(sd)}&endDate=${encodeURIComponent(ed)}`;
      const prvUrl = `${url}?startDate=${encodeURIComponent(psd)}&endDate=${encodeURIComponent(ped)}`;

      skeletonAll();

      Promise.all([fetchJSON(curUrl), fetchJSON(prvUrl)]).then(([cur, prv]) => {
        const q = (s) => document.querySelector(s);

        animateCount(q('.total_orders'), cur.total_orders || 0);
        animateCount(q('.pending_orders'), cur.pending_orders || 0);
        animateCount(q('.complete_orders'), cur.complete_orders || 0);
        animateCount(q('.cancell_orders'), cur.cancell_orders || 0);

        if (!window.isWorker) {
          animateCount(q('.sell_amount'), cur.sell_amount || 0, true);
          animateCount(q('.total_expense'), cur.totalExpense || 0, true);
          animateCount(q('.total_net_profit'), cur.profit || 0, true);
        }

        setTrend('.group:has(.total_orders)', cur.total_orders || 0, prv.total_orders || 0);
        setTrend('.group:has(.pending_orders)', cur.pending_orders || 0, prv.pending_orders || 0, false);
        setTrend('.group:has(.complete_orders)', cur.complete_orders || 0, prv.complete_orders || 0);
        setTrend('.group:has(.cancell_orders)', cur.cancell_orders || 0, prv.cancell_orders || 0, false);

        if (!window.isWorker) {
          setTrend('.group:has(.sell_amount)', cur.sell_amount || 0, prv.sell_amount || 0);
          setTrend('.group:has(.total_expense)', cur.totalExpense || 0, prv.totalExpense || 0, false);
          setTrend('.group:has(.total_net_profit)', cur.profit || 0, prv.profit || 0);
        }
      });
    }

    document.addEventListener('DOMContentLoaded', () => {
      const sd = document.querySelector('input[name="startDate"]');
      const ed = document.querySelector('input[name="endDate"]');

      const initialClamp = () => {
        if (ed.value < sd.value) ed.value = sd.value;
      };

      // Initial Load
      fetchBoth();
      fetchDashboardData();

      // Event Listeners
      [sd, ed].forEach(el => el.addEventListener('change', () => {
        initialClamp();
        fetchBoth();
        fetchDashboardData();
      }));

      document.getElementById('refreshBtn').onclick = () => {
        fetchBoth();
        fetchDashboardData();
      };

      document.querySelectorAll('[data-range]').forEach(btn => {
        btn.onclick = () => applyRange(btn.dataset.range);
      });
    });
  </script>
@endpush
