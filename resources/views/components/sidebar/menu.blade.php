{{-- resources/views/backend/partials/sidebar_components/menu_items.blade.php --}}
@props(['isWorker'])


{{-- Dashboard --}}
<x-sidebar.item 
  route="{{ route('admin.dashboard') }}" 
  icon="mdi-view-dashboard-outline"
  label="Dashboard" 
  active="{{ nav_active(['admin.dashboard']) }}" 
/>

{{-- Orders Manage --}}
@php $ordersOpen = request()->is('admin/orders*') ? 'show' : ''; @endphp
@if ($isWorker || auth()->user()->can('order.view') || auth()->user()->can('permission.view'))
  <x-sidebar.dropdown 
    id="orders" 
    icon="mdi-folder-plus-outline"
    label="Orders Manage" 
    active="{{ $ordersOpen ? true : false }}"
  >
    @if ($isWorker || auth()->user()->can('order.view'))
      @foreach (getOrderStatus(1) as $key => $item)
        <x-sidebar.sub-item 
          route="{{ url('admin/orders?q=&status=' . $key) }}" 
          icon="mdi-format-list-bulleted"
          label="{{ $item }} Order" 
          active="{{ request('status') === (string) $key }}" 
        />
      @endforeach
    @endif
  </x-sidebar.dropdown>
@endif

{{-- Products --}}
@if (auth()->user()->can('product.view') ||
        auth()->user()->can('type.view') ||
        auth()->user()->can('size.view') ||
        auth()->user()->can('category.view') ||
        auth()->user()->can('discount.view') ||
        auth()->user()->can('color.view'))
  @php
    $productsOpen =
        request()->is('admin/types*') ||
        request()->is('admin/categories*') ||
        request()->is('admin/sizes*') ||
        request()->is('admin/colors*') ||
        request()->is('admin/products*') ||
        request()->is('admin/free-shipping*') ||
        request()->is('admin/landing-pages*')
            ? 'show'
            : '';
  @endphp
  <x-sidebar.dropdown 
    id="products" 
    icon="mdi-package-variant-closed"
    label="Products" 
    active="{{ $productsOpen ? true : false }}"
  >
    @if (auth()->user()->can('type.view'))
      <x-sidebar.sub-item 
        route="{{ route('admin.types.index') }}" 
        icon="mdi-domain"
        label="Brand Manage" 
        active="{{ nav_active(['admin.types.*']) }}" 
      />
    @endif

    @if (auth()->user()->can('category.view'))
      <x-sidebar.sub-item 
        route="{{ route('admin.categories.index') }}" 
        icon="mdi-shape-outline"
        label="Category Manage" 
        active="{{ nav_active(['admin.categories.*']) }}" 
      />
    @endif

    <x-sidebar.sub-item 
      route="{{ route('admin.homecat') }}" 
      icon="mdi-home-outline"
      label="Home Category Manage" 
      active="{{ nav_active(['admin.homecat']) }}" 
    />

    @if (auth()->user()->can('size.view'))
      <x-sidebar.sub-item 
        route="{{ route('admin.sizes.index') }}" 
        icon="mdi-ruler-square"
        label="Size Manage" 
        active="{{ nav_active(['admin.sizes.*']) }}" 
      />
    @endif

    @if (auth()->user()->can('color.view'))
      <x-sidebar.sub-item 
        route="{{ route('admin.colors.index') }}" 
        icon="mdi-palette-outline"
        label="Color Manage" 
        active="{{ nav_active(['admin.colors.*']) }}" 
      />
    @endif

    @if (auth()->user()->can('product.view'))
      <x-sidebar.sub-item 
        route="{{ route('admin.products.index') }}" 
        icon="mdi-cube-outline"
        label="Products Manage" 
        active="{{ nav_active(['admin.products.*']) }}" 
      />
    @endif

    <x-sidebar.sub-item 
      route="{{ route('admin.free_shipping') }}" 
      icon="mdi-truck-outline"
      label="Free Shipping Manage" 
      active="{{ nav_active(['admin.free_shipping']) }}" 
    />

    <x-sidebar.sub-item 
      route="{{ route('admin.landing_pages.index') }}" 
      icon="mdi-image-multiple-outline"
      label="Manage Landing Page" 
      active="{{ nav_active(['admin.landing_pages.*']) }}" 
    />
  </x-sidebar.dropdown>
@endif

{{-- Reviews (Worker হলে hidden) --}}
@unless ($isWorker)
  <x-sidebar.item 
    route="{{ route('admin.reviews.index') }}" 
    icon="mdi-comment-text-outline"
    label="Reviews" 
    active="{{ nav_active(['admin.reviews.*']) }}" 
  />
@endunless

{{-- Front Page --}}
@if (auth()->user()->can('page.view') || auth()->user()->can('image.view') || auth()->user()->can('slider.view'))
  @php $frontOpen = request()->is('admin/pages*') || request()->is('admin/sliders*') ? 'show' : ''; @endphp
  <x-sidebar.dropdown 
    id="front_page" 
    icon="mdi-monitor-dashboard"
    label="Front Page" 
    active="{{ $frontOpen ? true : false }}"
  >
    @if (auth()->user()->can('page.view'))
      <x-sidebar.sub-item 
        route="{{ route('admin.pages.index') }}" 
        icon="mdi-note-text-outline"
        label="Manage Page Data" 
        active="{{ nav_active(['admin.pages.*']) }}" 
      />
    @endif

    @if (auth()->user()->can('slider.view'))
      <x-sidebar.sub-item 
        route="{{ route('admin.sliders.index') }}" 
        icon="mdi-tune-vertical"
        label="Slider Manage" 
        active="{{ nav_active(['admin.sliders.*']) }}" 
      />
    @endif
  </x-sidebar.dropdown>
@endif

{{-- Delivery Charge --}}
@if (auth()->user()->can('delivery_charge.view'))
  <x-sidebar.item 
    route="{{ route('admin.delivery_charge.index') }}" 
    icon="uil-bill" 
    label="Delivery Charge" 
    active="{{ nav_active(['admin.delivery_charge.*']) }}" 
  />
@endif

{{-- Courier Manage --}}
@if (auth()->user()->can('couriers.view'))
  <x-sidebar.item 
    route="{{ route('admin.couriers.index') }}" 
    icon="uil-truck-loading" 
    label="Courier Manage" 
    active="{{ nav_active(['admin.couriers.*']) }}" 
  />
@endif

{{-- Users --}}
@if (auth()->user()->can('combo.view') || auth()->user()->can('permission.view') || auth()->user()->can('role.view'))
  @php $usersOpen = request()->is('admin/users*') ? 'show' : ''; @endphp
  <x-sidebar.dropdown 
    id="user" 
    icon="uil-users-alt" 
    label="Users" 
    active="{{ $usersOpen ? true : false }}"
  >
    @if (auth()->user()->can('user.view'))
      <x-sidebar.sub-item 
        route="{{ route('admin.users.index') }}" 
        icon="uil-user" 
        label="Manage User" 
        active="{{ nav_active(['admin.users.*']) }}" 
      />
    @endif
  </x-sidebar.dropdown>
@endif

{{-- Reports --}}
@php $reportsOpen = request()->is('admin/report/*') || request()->is('admin/expenses*') || request()->is('admin/ipblock*') ? 'show' : ''; @endphp
@if ($isWorker || auth()->user()->can('order.view') || auth()->user()->can('permission.view'))
  <x-sidebar.dropdown 
    id="reports" 
    icon="uil-chart-line" 
    label="Reports" 
    active="{{ $reportsOpen ? true : false }}"
  >
    @if ($isWorker)
      <x-sidebar.sub-item 
        route="{{ route('admin.report.user') }}" 
        icon="uil-file-graph" 
        label="User Report" 
        active="{{ nav_active(['admin.report.user']) }}" 
      />
    @else
      @if (auth()->user()->can('user.view'))
        <x-sidebar.sub-item 
          route="{{ route('admin.report.order') }}" 
          icon="uil-clipboard-notes" 
          label="Order Report" 
          active="{{ nav_active(['admin.report.order']) }}" 
        />
        <x-sidebar.sub-item 
          route="{{ route('admin.expenses.index') }}" 
          icon="uil-money-withdrawal" 
          label="Expense" 
          active="{{ nav_active(['admin.expenses.*']) }}" 
        />
        <x-sidebar.sub-item 
          route="{{ route('admin.report.user') }}" 
          icon="uil-file-graph" 
          label="User Report" 
          active="{{ nav_active(['admin.report.user']) }}" 
        />
        <x-sidebar.sub-item 
          route="{{ route('admin.ipblock') }}" 
          icon="uil-shield-slash" 
          label="Block Ip" 
          active="{{ nav_active(['admin.ipblock']) }}" 
        />
      @endif
    @endif
  </x-sidebar.dropdown>
@endif

{{-- Settings --}}
@if (auth()->user()->can('product.delete'))
  <x-sidebar.item 
    route="{{ route('admin.settings.index') }}" 
    icon="dripicons-gear noti-icon" 
    label="Settings Manage" 
    active="{{ nav_active(['admin.settings.*']) }}" 
  />
@endif
