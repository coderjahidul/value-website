<head>
  <meta charset="utf-8" />
  <title>{{ $info->site_name ?? 'Admin' }} Admin Panel</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta content="Admin Panel" name="description" />
  <meta name="author" content="Coderthemes" />
  <meta name="csrf-token" content="{{ csrf_token() }}" />
  <meta name="theme-color" content="#0b1220" />

  <!-- Favicon -->
  <link rel="shortcut icon" href="{{ $logoUrl }}">

  <!-- Tailwind CSS  -->
  @vite('resources/css/tailwind.css')

  <!-- Alpine.js for Tailwind Interactivity -->
  <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>

  <!-- Vendor / Theme CSS -->
  <link href="{{ asset('backend/css/vendor/jquery-jvectormap-1.2.2.css') }}" rel="stylesheet" />
  <link href="{{ asset('backend/css/icons.min.css') }}" rel="stylesheet" />
  <link href="{{ asset('backend/css/app-creative.min.css') }}" rel="stylesheet" id="app-style" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">

  <!-- Layout overrides -->
  <style>
    :root {
      --ls-w: 220px;
    }

    /* Desktop sidebar width */

    /* Print */
    @media print {

      .no-print,
      .no-print * {
        display: none !important;
      }
    }

    /* Light-mode text (dark mode নষ্ট হবে না) */
    [data-layout-color="light"] .content-page,
    [data-layout-color="light"] .content-page * {
      color: #111;
    }

    /* Desktop: content push so nothing gets cut */
    @media (min-width: 992px) {
      body.with-sidebar {
        padding-left: var(--ls-w);
      }
    }

    /* Sidebar sizing (inline width বাদ) */
    .leftside-menu.leftside-menu-detached {
      min-width: var(--ls-w) !important;
      max-width: var(--ls-w) !important;
    }

    /* Mobile: sidebar becomes a full-width bar (no overlay/backdrop) */
    @media (max-width: 991.98px) {
      .leftside-menu.leftside-menu-detached {
        position: relative;
        width: 100% !important;
        min-width: 100% !important;
        max-width: 100% !important;
        border-right: 0;
        box-shadow: none;
      }

      body.with-sidebar {
        padding-left: 0 !important;
      }
    }

    /* ===== Topbar logo OFF ===== */
    .topnav-logo {
      display: none !important;
    }

    /* ===== Sidebar logo CENTER ===== */
    .leftbar-user {
      text-align: center;
      padding: 14px 10px;
    }

    .leftbar-user a {
      display: block;
      text-decoration: none;
    }

    .sidebar-logo {
      height: 64px;
      width: auto;
      display: block;
      margin: 50px auto 8px;
      object-fit: contain;
    }

    .leftbar-user-name {
      color: #fff;
      font-weight: 600;
      font-size: 15px;
      margin-top: 6px;
      display: block;
    }

    /* User avatar (if ever used) */
    .leftbar-user img.rounded-circle {
      width: 42px;
      height: 42px;
      object-fit: cover;
    }

    /* Subtle content padding */
    .content-page .content {
      padding-top: 14px;
    }

    /* Footer border */
    .footer {
      border-top: 1px solid rgba(0, 0, 0, .05);
    }

    /* Topbar user dropdown: single chevron, no theme/Bootstrap caret */
    .topbar-user-trigger::before,
    .topbar-user-trigger::after {
      display: none !important;
      content: none !important;
    }

    .topbar-user-trigger.nav-user {
      padding: 0.5rem 0.75rem 0.5rem 0.5rem !important;
      min-height: unset !important;
      background: transparent !important;
      border: none !important;
      text-align: left !important;
    }

    /* Alpine.js Cloak */
    [x-cloak] {
      display: none !important;
    }

    /* ===== App preloader (prevents blank white flash) ===== */
    html, body { background: #0b1220; }
    /* Theme sets body.loading { visibility:hidden } — keep preloader visible */
    body.loading{ visibility: visible !important; }
    body.loading #main-content,
    body.loading #appSidebar,
    body.loading #sidebar-backdrop,
    body.loading .right-bar,
    body.loading .modal{ visibility: hidden !important; }
    #app-preloader{
      position: fixed;
      inset: 0;
      z-index: 2000;
      display: flex;
      align-items: center;
      justify-content: center;
      background:
        radial-gradient(900px circle at 20% 0%, rgba(245, 158, 11, 0.10), transparent 45%),
        radial-gradient(900px circle at 100% 40%, rgba(16, 185, 129, 0.10), transparent 40%),
        linear-gradient(180deg, #050814 0%, #0b1220 45%, #050814 100%);
      transition: opacity .45s ease, visibility .45s ease;
    }
    #app-preloader[aria-hidden="true"]{
      opacity: 0;
      visibility: hidden;
      pointer-events: none;
    }
    .preloader-center{
      display:flex;
      flex-direction: column;
      align-items:center;
      justify-content:center;
      gap: 12px;
      text-align:center;
      transform: translateY(-8px);
    }
    .preloader-text{
      margin: 0;
      font: 600 13px/1.2 ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial;
      color: rgba(226,232,240,.92);
      letter-spacing: .2px;
    }
    .spinner-rings{
      width: 44px;
      height: 44px;
      position: relative;
      filter: drop-shadow(0 10px 22px rgba(0,0,0,.35));
    }
    .spinner-rings span{
      position:absolute;
      inset: 0;
      border-radius: 999px;
      border: 3px solid rgba(255,255,255,0.08);
      border-top-color: rgba(16,185,129,0.85);
      border-right-color: rgba(245,158,11,0.75);
      animation: spin 1.05s linear infinite;
    }
    .spinner-rings span:nth-child(2){
      inset: 7px;
      border-width: 3px;
      border-top-color: rgba(245,158,11,0.85);
      border-right-color: rgba(16,185,129,0.70);
      animation-duration: .85s;
      animation-direction: reverse;
    }
    .spinner-rings span:nth-child(3){
      inset: 14px;
      border-width: 3px;
      border-top-color: rgba(16,185,129,0.80);
      border-right-color: rgba(245,158,11,0.65);
      animation-duration: .7s;
    }
    @keyframes spin{ to{ transform: rotate(360deg); } }
    @media (prefers-reduced-motion: reduce){
      .spinner-rings span{ animation: none; }
      #app-preloader{ transition: none; }
    }
  </style>

  <script>
    // Hide preloader once all assets are ready (with fallback)
    (function () {
      const hide = () => {
        const el = document.getElementById('app-preloader');
        if (!el) return;
        el.setAttribute('aria-hidden', 'true');
        document.body && document.body.classList.remove('loading');
      };

      // Fallback: never block longer than ~4s
      setTimeout(hide, 4000);

      window.addEventListener('load', () => {
        // Small delay so first paint doesn't feel abrupt
        setTimeout(hide, 150);
      }, { once: true });
    })();
  </script>

  @stack('css')
</head>
