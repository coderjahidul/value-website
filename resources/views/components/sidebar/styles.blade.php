{{-- resources/views/backend/partials/sidebar_components/styles.blade.php --}}
<style>
  :root {
    --sb-w: 240px;
    --sb-bg: #111827;
    --sb-card: #131a2a;
    --sb-text: #e6e8ee;
    --sb-muted: #a8b3cf;
    --sb-accent: #34d399; /* emerald */
    --sb-border: #1f2937;
  }

  /* Desktop Default */
  .sidebar {
    background: var(--sb-bg);
    color: var(--sb-text);
    border-right: 1px solid var(--sb-border);
    width: var(--sb-w);
    height: 100vh;
    display: flex;
    flex-direction: column;
    flex-shrink: 0;
    transition: width 0.3s cubic-bezier(0.4, 0, 0.2, 1), transform 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    overflow-y: auto;
    overflow-x: hidden;
    z-index: 1045;
  }

  /* Desktop Collapsed State */
  @media (min-width: 992px) {
    body.sidebar-collapsed .sidebar {
      width: 76px; 
    }
    
    body.sidebar-collapsed .sidebar__brand {
      padding: 30px 10px 20px;
    }
    
    body.sidebar-collapsed .brand-logo {
      height: 35px !important;
    }
    
    body.sidebar-collapsed .brand-text,
    body.sidebar-collapsed .side-nav-link span,
    body.sidebar-collapsed .menu-arrow {
      opacity: 0; 
      visibility: hidden; 
      width: 0; 
      display: none;
    }

    body.sidebar-collapsed .side-nav-second-level { 
      display: none !important; 
    }

    body.sidebar-collapsed .side-nav-link { 
      justify-content: center; 
      padding: 12px 0; 
    }
    
    body.sidebar-collapsed .side-nav-link .uil {
      font-size: 24px;
      margin: 0;
    }
  }

  /* Mobile Default (Off-canvas) */
  @media (max-width: 991.98px) {
    .sidebar {
      position: fixed;
      left: 0;
      top: 0;
      transform: translateX(-100%);
      width: 260px; /* slightly larger for touch */
      box-shadow: 4px 0 15px rgba(0,0,0,0.1);
    }

    body.sidebar-mobile-open .sidebar {
      transform: translateX(0);
    }
  }

  /* ===== Brand area ===== */
  .sidebar__brand {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 30px 10px 20px;
    border-bottom: 1px solid var(--sb-border);
    transition: all 0.3s ease;
  }

  .brand-link {
    text-decoration: none;
    color: #fff;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 8px;
  }

  .brand-logo {
    display: block;
    height: 45px !important;
    width: auto !important;
    object-fit: contain;
    transition: height 0.3s ease;
  }

  .brand-text {
    font-weight: 700;
    letter-spacing: .3px;
    white-space: nowrap;
  }

  /* ===== Menu ===== */
  .sidebar__nav {
    padding: 12px 10px 24px;
    overflow-y: visible; 
  }

  .side-nav {
    list-style: none;
    padding: 0;
    margin: 0;
  }

  .side-nav-item {
    margin: 6px 0;
  }

  .side-nav-link {
    width: 100%;
    display: flex;
    align-items: center;
    gap: 10px;
    border: 0;
    background: transparent;
    color: var(--sb-text);
    text-decoration: none;
    padding: 12px 12px;
    border-radius: 12px;
    transition: background .2s ease, color .2s ease;
    text-align: left;
    white-space: nowrap;
  }

  .side-nav-link .uil {
    font-size: 20px;
    color: var(--sb-muted);
    transition: all 0.3s ease;
  }

  .side-nav-link:hover {
    background: var(--sb-card);
    color: #fff;
  }

  .side-nav-link:hover .uil {
    color: var(--sb-accent);
  }

  .side-nav-link.is-active,
  .side-nav-second-level a.is-active {
    background: linear-gradient(180deg, rgba(52, 211, 153, .16), rgba(16, 185, 129, .06));
    border: 1px solid rgba(52, 211, 153, .22);
    color: #fff;
  }

  .side-nav-link.is-active .uil {
    color: var(--sb-accent);
  }

  .has-arrow {
    cursor: pointer;
  }

  .menu-arrow {
    margin-left: auto;
    transition: transform .25s ease;
    color: var(--sb-muted);
  }

  button[aria-expanded="true"] .menu-arrow {
    transform: rotate(90deg);
  }

  .side-nav-second-level {
    list-style: none;
    padding: 6px 0 6px 14px;
  }

  .side-nav-second-level li a {
    display: flex;
    align-items: center;
    gap: 10px;
    padding: 10px 12px;
    margin: 4px 0;
    color: var(--sb-muted);
    text-decoration: none;
    border-radius: 10px;
    white-space: nowrap;
  }

  .side-nav-second-level li a:hover {
    background: var(--sb-card);
    color: #fff;
  }

  .side-nav-second-level .uil {
    font-size: 18px;
  }
</style>
