{{-- Topbar: clean layout, clear hierarchy, accessible touch targets --}}
<div class="w-full flex items-center justify-between gap-4 px-4 sm:px-6 h-full max-w-[1920px] mx-auto">

    {{-- Left: Sidebar toggle + Brand --}}
    <div class="flex items-center gap-3 min-w-0">
        <button
            type="button"
            class="sidebar-toggle-btn flex items-center justify-center w-10 h-10 rounded-xl text-gray-500 hover:text-blue-600 hover:bg-blue-50 focus:outline-none focus-visible:ring-2 focus-visible:ring-blue-500 focus-visible:ring-offset-2 transition-all duration-200"
            aria-label="Toggle sidebar"
        >
            <svg class="w-5 h-5 shrink-0" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M4 6h16M4 12h16M4 18h16" />
            </svg>
        </button>
        <span class="text-sm font-semibold text-gray-800 hidden sm:block truncate">Shobkisu Admin</span>
    </div>

    {{-- Center: Global search (visible on larger screens) --}}
    <div class="hidden md:flex flex-1 max-w-md mx-4">
        <form action="#" method="get" class="w-full" role="search">
            <label for="topbar-search" class="sr-only">Search</label>
            <div class="relative">
                <span class="absolute inset-y-0 left-3 flex items-center pointer-events-none text-gray-400">
                    <svg class="w-4 h-4" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                    </svg>
                </span>
                <input
                    id="topbar-search"
                    type="search"
                    name="q"
                    placeholder="Search products, orders..."
                    class="w-full h-10 pl-9 pr-4 rounded-xl border border-gray-200 bg-gray-50 text-gray-800 placeholder-gray-400 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent focus:bg-white transition-colors"
                    aria-label="Search"
                    autocomplete="off"
                />
            </div>
        </form>
    </div>

    {{-- Right: Actions + User menu --}}
    <ul class="flex items-center gap-1 sm:gap-2 list-none m-0 p-0">
        {{-- Mobile search trigger (opens dropdown) --}}
        <li class="md:hidden relative" x-data="{ open: false }">
            <button
                type="button"
                @click="open = !open"
                class="flex items-center justify-center w-10 h-10 rounded-xl text-gray-500 hover:text-blue-600 hover:bg-blue-50 focus:outline-none focus-visible:ring-2 focus-visible:ring-blue-500 focus-visible:ring-offset-2 transition-all"
                aria-label="Open search"
            >
                <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                </svg>
            </button>
            <div 
                x-show="open" 
                @click.away="open = false" 
                x-transition:enter="transition ease-out duration-100"
                x-transition:enter-start="transform opacity-0 scale-95"
                x-transition:enter-end="transform opacity-100 scale-100"
                x-transition:leave="transition ease-in duration-75"
                x-transition:leave-start="transform opacity-100 scale-100"
                x-transition:leave-end="transform opacity-0 scale-95"
                class="absolute right-0 mt-2 w-[280px] bg-white rounded-xl shadow-lg border border-gray-100 z-50 origin-top-right" 
                style="display: none;"
            >
                <form class="p-3" role="search">
                    <label for="topbar-search-mobile" class="sr-only">Search</label>
                    <div class="relative">
                        <span class="absolute inset-y-0 left-3 flex items-center pointer-events-none text-gray-400">
                            <svg class="w-4 h-4" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                            </svg>
                        </span>
                        <input
                            id="topbar-search-mobile"
                            type="search"
                            placeholder="Search..."
                            class="w-full h-10 pl-9 pr-4 rounded-xl border border-gray-200 bg-gray-50 text-gray-800 placeholder-gray-400 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent focus:bg-white transition-colors"
                            aria-label="Search"
                            autocomplete="off"
                        />
                    </div>
                </form>
            </div>
        </li>

        {{-- View site --}}
        <li>
            <a
                href="{{ route('front.home') }}"
                target="_blank"
                rel="noopener noreferrer"
                class="flex items-center justify-center w-10 h-10 rounded-xl text-gray-500 hover:text-blue-600 hover:bg-blue-50 focus:outline-none focus-visible:ring-2 focus-visible:ring-blue-500 focus-visible:ring-offset-2 transition-all"
                aria-label="View site (opens in new tab)"
                title="View site"
            >
                <svg class="w-5 h-5" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
                </svg>
            </a>
        </li>

        {{-- User dropdown --}}
        <li class="relative" x-data="{ open: false }">
            <button
                type="button"
                @click="open = !open"
                class="group flex items-center gap-2 min-w-0 py-2 pl-2 pr-3 rounded-xl hover:bg-gray-50 focus:outline-none focus-visible:ring-2 focus-visible:ring-blue-500 focus-visible:ring-offset-2 transition-all"
                aria-haspopup="true"
                :aria-expanded="open"
                aria-label="Account menu"
            >
                <span class="relative flex shrink-0">
                    <img
                        src="{{ getImage('uploads/img', Auth::user()->image) }}"
                        alt=""
                        class="w-9 h-9 rounded-full object-cover border-2 border-white shadow-sm ring-1 ring-gray-200"
                    />
                </span>
                <span class="hidden sm:block text-left min-w-0">
                    <span class="block text-sm font-medium text-gray-800 truncate">{{ auth()->user()->first_name }}</span>
                    <span class="block text-xs text-gray-500 truncate">Admin</span>
                </span>
                <svg class="w-4 h-4 text-gray-400 shrink-0 hidden sm:block transition-transform duration-200 group-hover:text-blue-600" 
                     :class="{ 'rotate-180': open }"
                     xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7" />
                </svg>
            </button>
            <div
                x-show="open"
                @click.away="open = false"
                x-transition:enter="transition ease-out duration-100"
                x-transition:enter-start="transform opacity-0 scale-95"
                x-transition:enter-end="transform opacity-100 scale-100"
                x-transition:leave="transition ease-in duration-75"
                x-transition:leave-start="transform opacity-100 scale-100"
                x-transition:leave-end="transform opacity-0 scale-95"
                class="absolute right-0 w-56 bg-white rounded-xl shadow-lg border border-gray-100 py-2 z-50 origin-top-right"
                style="display: none;"
            >
                <div class="px-4 py-1 border-b border-gray-100">
                    <p class="text-[11px] font-semibold text-gray-400 uppercase tracking-wider">Signed in as</p>
                    <p class="text-sm font-bold text-gray-800 truncate mt-0.5">{{ auth()->user()->email ?? auth()->user()->first_name }}</p>
                </div>

                <a href="{{ route('admin.profile') }}" class="group flex items-center gap-3 py-2 px-3 my-1 rounded-lg text-gray-700 hover:bg-gray-50 hover:text-blue-600 transition-all">
                    <span class="flex items-center justify-center w-8 h-8 rounded-md bg-gray-100 text-gray-500 group-hover:bg-white group-hover:shadow-sm group-hover:text-blue-600 transition-all">
                        <i class="mdi mdi-account-circle text-lg"></i>
                    </span>
                    <span class="text-sm font-medium">My Account</span>
                </a>
                <a href="{{ route('admin.password') }}" class="group flex items-center gap-3 py-2 px-3 my-1 rounded-lg text-gray-700 hover:bg-gray-50 hover:text-blue-600 transition-all">
                    <span class="flex items-center justify-center w-8 h-8 rounded-md bg-gray-100 text-gray-500 group-hover:bg-white group-hover:shadow-sm group-hover:text-blue-600 transition-all">
                        <i class="mdi mdi-shield-lock text-lg"></i>
                    </span>
                    <span class="text-sm font-medium">Change Password</span>
                </a>

                @can('product.delete')
                <a href="{{ route('admin.settings.index') }}" class="group flex items-center gap-3 py-2 px-3 my-1 rounded-lg text-gray-700 hover:bg-gray-50 hover:text-blue-600 transition-all">
                    <span class="flex items-center justify-center w-8 h-8 rounded-md bg-gray-100 text-gray-500 group-hover:bg-white group-hover:shadow-sm group-hover:text-blue-600 transition-all">
                        <i class="mdi mdi-cog text-lg"></i>
                    </span>
                    <span class="text-sm font-medium">Settings</span>
                </a>
                @endcan

                <div class="border-t border-gray-100 my-1 mx-2"></div>

                <a
                    href="{{ route('logout') }}"
                    class="group flex items-center gap-3 py-2 px-3 mx-2 my-1 rounded-lg text-red-600 hover:bg-red-50 hover:text-red-700 transition-all"
                    onclick="event.preventDefault(); document.getElementById('logout-form').submit();"
                >
                    <span class="flex items-center justify-center w-8 h-8 rounded-md bg-red-50 text-red-500 group-hover:bg-white group-hover:shadow-sm group-hover:text-red-600 transition-all">
                        <i class="mdi mdi-logout text-lg"></i>
                    </span>
                    <span class="text-sm font-medium">Logout</span>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="hidden">@csrf</form>
            </div>
        </li>
    </ul>
</div>
