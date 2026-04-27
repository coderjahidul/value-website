<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @php
        $siteInfo = DB::table('informations')->first();
    @endphp
    <title>{{ $title }}</title>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('backend/landing_page/css/owl.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="{{ asset('backend/landing_page/css/owl.theme.min.css') }}">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="{{ asset('backend/landing_page/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/landing_page/css/media.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/landing_page/css/landing_page_custom.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@400;700&display=swap" />
    <meta name="csrf-token" content="{{ csrf_token() }}">

    
    {!! \App\Models\Information::value('tracking_code') !!}
    @if ($siteInfo && $siteInfo->fb_pixel_id)
        <!-- Meta Pixel Code -->
        <script>
            ! function(f, b, e, v, n, t, s) {
                if (f.fbq) return;
                n = f.fbq = function() {
                    n.callMethod ?
                        n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq) f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window, document, 'script',
                'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '{{ $siteInfo->fb_pixel_id }}');
            fbq('track', 'PageView');
        </script>
        <noscript><img height="1" width="1" style="display:none"
                src="https://www.facebook.com/tr?id={{ $siteInfo->fb_pixel_id }}&ev=PageView&noscript=1" /></noscript>
        <!-- End Meta Pixel Code -->
    @endif
</head>

<body>
    <div class="main-wrapper">
        <div class="hero-section" style="background-image: url({{ asset('landing_pages/' . $ln_pg->landing_bg) }});">
            <div class="hero-overlay"></div>
            <div class="hero-content" data-aos="fade-up" data-aos-duration="1000">
                <h1 class="hero-title">{{ $ln_pg->title1 }}</h1>

                <div class="hero-price-container">
                    <p class="hero-price-text">
                        {{ BanglaText('offer') }} {{ $ln_pg->new_price }} {{ BanglaText('tk') }}
                    </p>
                </div>

                <div class="hero-cta">
                    <a href="#checkout_land_form" class="btn-hero-order">
                        <i class="fa fa-shopping-cart"></i> {{ BanglaText('order') }}
                    </a>
                </div>
            </div>
            <div class="element-shape"></div>
        </div>
        <div class="down-div">
            <div class="container">
                <div class="row">
                    <!-- Video Section -->
                    <div class="col-12">
                        <div class="video-wrapper-modern" data-aos="zoom-in">
                            {!! $ln_pg->video_url !!}
                        </div>
                    </div>

                    <!-- CTA Button -->
                    <div class="col-12 btn-premium-wrapper" data-aos="fade-up">
                        <button id="order_btn" class="btn-premium">
                            {{ BanglaText('do_order') }}
                            <img src="{{ asset('frontend/images/hand.png') }}" class="btn-icon-hand" alt="Order Now">
                        </button>
                    </div>
                </div>

                <div class="elementor-widget-wrap elementor-element-populated">
                    <!-- Overview Card -->
                    <div class="overview-card-modern" data-aos="fade-up">
                        <div class="top_section call-text-box">
                            <p class="call-text-modern">{{ $ln_pg->call_text }}</p>
                            <a href="tel: {{ $ln_pg->phone }}" class="call-link-modern">
                                <i class="fa fa-phone-alt me-2"></i> {{ $ln_pg->phone }}
                            </a>
                        </div>

                        <!-- Price Box -->
                        <div class="price-box-modern">
                            {{-- Display Regular Price conditionally --}}
                            @if ($ln_pg->regular_price_text)
                                <div class="price-item price-regular">
                                    <small>Regular Price</small>
                                    <div><del>{!! $ln_pg->regular_price_text !!}</del></div>
                                </div>
                            @endif
                            {{-- Display Offer Price conditionally --}}
                            @if ($ln_pg->offer_price_text)
                                <div class="price-item price-offer">
                                    <small>Offer Price</small>
                                    <div class="offer-price-text">{!! $ln_pg->offer_price_text !!}</div>
                                </div>
                            @endif
                        </div>

                        @php
                            $des1Items = [];
                            if ($ln_pg->des1) {
                                $decoded = json_decode($ln_pg->des1, true);
                                $des1Items = is_array($decoded) ? $decoded : [$ln_pg->des1];
                            }
                        @endphp
                        @if (!empty($des1Items))
                            <ul class="mt-4">
                                @foreach ($des1Items as $des1Item)
                                    <li>{!! trim($des1Item) !!}</li>
                                @endforeach
                            </ul>
                        @endif
                    </div>
                </div>

                <div class="element-widget-cover">
                    <!-- Feature Grid -->
                    <div class="feature-list-container">
                        <div class="feature-grid">
                            <!-- Left Feature Card -->
                            <div class="feature-card" data-aos="fade-right">
                                <div class="feature-content">
                                    <div class="feature-title-box">
                                        {{ $ln_pg->left_side_title }}
                                    </div>
                                    <div class="feature-details">
                                        {!! $ln_pg->left_side_desc !!}
                                    </div>
                                </div>
                            </div>

                            <!-- Right Feature Card -->
                            <div class="feature-card" data-aos="fade-left">
                                <div class="feature-content">
                                    <div class="feature-title-box">
                                        {{ $ln_pg->right_side_title }}
                                    </div>
                                    <div class="feature-details">
                                        {!! $ln_pg->right_side_desc !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modern Gallery Section -->
                <div class="gallery-section-modern">
                    <h2 class="gallery-title">
                        {{ $ln_pg->feature }}
                    </h2>
                    <div class="owl-carousel img-gallery">
                        @foreach ($ln_pg->images as $slider)
                            <div class="item">
                                <img src="{{ asset('landing_sliders/' . $slider->image) }}" alt="Product Image">
                            </div>
                        @endforeach
                    </div>

                    <!-- Bottom CTA -->
                    <div class="btn-premium-wrapper mt-4" data-aos="fade-up">
                        <button id="order_btn" class="btn-premium">
                            {{ BanglaText('do_order') }}
                            <img src="{{ asset('frontend/images/hand.png') }}" class="btn-icon-hand"
                                alt="Order Now">
                        </button>
                    </div>
                </div>

                {{-- <div class="element-widget p-widget product-details-desc">
          <h2 class="top-heading-title text-vaiolat">
            {{ $ln_pg->head1 }}
          </h2>
          <h2 class="top-heading-title text-light">
            {!! $ln_pg->des2 !!}
          </h2>
          <br>
          <div class="ani-btn-box">
            <div class="inner-padding" data-aos="fade-up">
              <button id="order_btn" class="btn btn-danger"
                      style="border: 3px solid #AD7419;font-family: 'Hind Siliguri', sans-serif !important;">
                {{ BanglaText('do_order') }} <img width="" src="{{ asset('frontend/images/hand.png') }}"
                     class="order_btn_img" alt="">
              </button>
            </div>
          </div>
        </div> --}}

                <div class="element-widget-cover">
                    <div class="element-widget-wrap">
                        <!-- Modern Bottom Feature Section -->
                        <div class="feature-list-bottom-modern" data-aos="fade-up">
                            <div class="text-center">
                                <div class="feature-list-header">
                                    {{ $ln_pg->top_heading_text }}
                                </div>
                            </div>

                            <div class="row align-items-center mt-4">
                                <div class="col-md-6 feature-list-content">
                                    {!! $ln_pg->left_product_details !!}
                                </div>
                                <div class="col-md-6 text-center">
                                    <img src="{{ asset('landing_pages/' . $ln_pg->right_product_image) }}"
                                        class="img-fluid rounded shadow-sm"
                                        style="max-height: 400px; object-fit: cover;" alt="Feature Image">
                                </div>
                            </div>
                        </div>

                        <!-- Final Offer Card -->
                        <div class="final-offer-card" data-aos="zoom-in">
                            <div class="price-box-modern justify-content-center">
                                <div class="price-item price-regular">
                                    <label class="d-block text-muted mb-2">Regular Price</label>
                                    <h3 class="text-secondary mb-0">
                                        <del>{{ $ln_pg->old_price }}</del> Tk
                                    </h3>
                                </div>
                                <div class="price-item price-offer">
                                    <label class="d-block text-danger mb-2">Discount Price</label>
                                    <h3 class="text-danger fw-bold mb-0">
                                        {{ $ln_pg->new_price }} Tk
                                    </h3>
                                </div>
                            </div>

                            <div class="final-call-box">
                                <h3 class="font-weight-bold mb-3">Call to Order</h3>
                                <a href="tel: {{ $ln_pg->phone }}" class="call-link-modern">
                                    <img width="30" class="phone-icon-animated me-2"
                                        src="https://img.icons8.com/ios-filled/50/ffffff/phone.png" alt="Phone">
                                    {{ $ln_pg->phone }}
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modern Review Section -->
                <div class="review-section-modern" data-aos="fade-up">
                    <div class="container-fluid">
                        <h2 class="section-title-modern">
                            {{ $ln_pg->review_top_text }}
                        </h2>

                        <!-- Premium Review Carousel -->
                        <div class="owl-carousel review-carousel-modern">
                            @foreach ($ln_pg->review_images as $review_slider)
                                <div class="review-card-modern">
                                    <img src="{{ asset('review_landing_sliders/' . $review_slider->review_image) }}"
                                        class="review-card-img" alt="Customer Review">
                                </div>
                            @endforeach
                        </div>

                        <div class="btn-premium-wrapper mt-5 text-center">
                            <button id="order_btn" class="btn-premium">
                                {{ BanglaText('do_order') }}
                                <img src="{{ asset('frontend/images/hand.png') }}" class="btn-icon-hand"
                                    alt="Order Now">
                            </button>
                        </div>
                    </div>
                </div>
                <div id="element_widget" class="checkout-section-modern">
                    <div class="checkout-header">
                        <h2 class="mb-0">
                            <img src="https://img.icons8.com/ios-filled/30/2e7d32/lock.png" alt="Secure"
                                class="me-2" style="vertical-align: text-center;">
                            {{ BanglaText('land_instruction') }}
                        </h2>
                    </div>

                    <form action="{{ route('front.storelandData') }}" method="POST" id="checkout_land_form">
                        <div class="row">
                            <!-- Billing Address -->
                            <div class="col-md-6 mb-4">
                                <h3 class="font-weight-bold mb-3 ml-1">Billing Details</h3>

                                <div class="form-group-modern">
                                    <label>{{ BanglaText('name') }} <span class="text-danger">*</span></label>
                                    <input type="text" name="first_name" class="form-control-modern" required
                                        placeholder="Enter your full name">
                                    @if (isset($ln_pg->product))
                                        <input type="hidden" value="{{ $ln_pg->product->id }}" name="prd_id">
                                    @endif
                                </div>

                                <div class="form-group-modern">
                                    <label>{{ BanglaText('mobile') }} <span class="text-danger">*</span></label>
                                    <input type="text" name="mobile" class="form-control-modern" required
                                        placeholder="Enter your mobile number">
                                </div>

                                @if (!empty($ln_pg->product))
                                    <input type="hidden" id="variation_id" name="variation_id"
                                        value="{{ $ln_pg->product->variation->id }}">
                                @endif
                                <input type="hidden" id="total_price_val" name="final_amount" value="">

                                @if (!empty($ln_pg->product))
                                    <input type="hidden" id="product_price" name="amount"
                                        value="{{ $ln_pg->product->after_discount != 0 ? $ln_pg->product->after_discount : $ln_pg->product->sell_price }}">
                                @endif
                                <input type="hidden" id="product_quantity" name="quantity">

                                <div class="form-group-modern">
                                    <label>{{ BanglaText('address') }} <span class="text-danger">*</span></label>
                                    <textarea name="shipping_address" class="form-control-modern" required placeholder="Enter your full address"
                                        rows="3"></textarea>
                                </div>

                                <div class="form-group-modern">
                                    <label>{{ BanglaText('delivery_zone') }}</label>
                                    <select required name="delivery_charge_id" class="form-control-modern"
                                        onchange="getCharge()" id="delivery_charge_id">
                                        @foreach ($charges as $key => $charge)
                                            <option value="{{ $charge->id }}" data-charge="{{ $charge->amount }}">
                                                {{ $charge->title }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <!-- Your Order Summary -->
                            <div class="col-md-6">
                                <div class="order-col" style="width: 100%;">
                                    <h3 class="font-weight-bold mb-3">Your Order</h3>

                                    <div class="order-summary-modern">
                                        <div class="order-summary-header">Receipt Summary</div>

                                        <!-- Product Row -->
                                        <div class="product-row-modern">
                                            @if (!empty($ln_pg->product))
                                                <img src="{{ getImage('products', $ln_pg->product->image) }}"
                                                    class="product-thumb-modern" alt="Product">
                                                <div class="product-details-modern flex-grow-1">
                                                    <h4>{{ $ln_pg->product->name }}</h4>
                                                    <div class="text-muted small">
                                                        Price:
                                                        @if ($ln_pg->product->after_discount != 0)
                                                            {{ $ln_pg->product->after_discount }}
                                                        @else
                                                            {{ $ln_pg->product->sell_price }}
                                                        @endif
                                                        Tk
                                                    </div>
                                                </div>
                                            @endif
                                        </div>

                                        <!-- Variation/Size Selection -->
                                        @if (!empty($ln_pg->product) && count($ln_pg->product->variations) > 0)
                                            <div class="mb-3">
                                                <label class="font-weight-bold small mb-2">Select Variation:</label>
                                                <div class="sizes" id="sizes">
                                                    @foreach ($ln_pg->product->variations as $v)
                                                        @if ($v->size->id != 3 || $v->color->id != 1)
                                                            <!-- Add variation logic/UI here if needed, keeping existing logic structure -->
                                                        @endif
                                                    @endforeach
                                                </div>
                                            </div>
                                        @endif

                                        <!-- Quantity -->
                                        <div class="summary-row align-items-center">
                                            <span class="font-weight-bold">Quantity</span>
                                            <div class="product-qty-modern">
                                                <span class="qty-btn-modern decrease-qty">-</span>
                                                <input type="text" class="qty-input-modern inner_qty"
                                                    value="1" name="quantity" readonly />
                                                <span class="qty-btn-modern increase-qty">+</span>
                                            </div>
                                        </div>

                                        <hr>

                                        <!-- Totals -->
                                        <div class="summary-row">
                                            <span>Subtotal</span>
                                            <span class="font-weight-bold">
                                                <span class="final-price-amount">
                                                    @if (!empty($ln_pg->product))
                                                        {{ $ln_pg->product->after_discount != 0 ? $ln_pg->product->after_discount : $ln_pg->product->sell_price }}
                                                    @endif
                                                </span> Tk
                                            </span>
                                        </div>

                                        <div class="summary-row">
                                            <span>Shipping</span>
                                            <span class="font-weight-bold" id="delvry_charge">0</span>
                                        </div>

                                        <div class="total-row">
                                            <span>Total</span>
                                            <span class="text-success">
                                                <span id="total">
                                                    @if (!empty($ln_pg->product))
                                                        {{ $ln_pg->product->after_discount != 0 ? $ln_pg->product->after_discount : $ln_pg->product->sell_price }}
                                                    @endif
                                                </span> Tk
                                            </span>
                                        </div>

                                        <!-- Hidden Inputs for JS calculation -->
                                        @if (!empty($ln_pg->product))
                                            <input type="hidden" id="price_val"
                                                value="{{ $ln_pg->product->after_discount != 0 ? $ln_pg->product->after_discount : $ln_pg->product->sell_price }}">
                                        @endif

                                        <!-- Payment Method -->
                                        <div class="bg-light mt-4 rounded border p-3">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="cod" name="payment_method"
                                                    class="custom-control-input" checked>
                                                <label class="custom-control-label font-weight-bold"
                                                    for="cod">Cash on Delivery</label>
                                            </div>
                                            <p class="small text-muted mb-0 mt-1 pl-4">Pay with cash upon delivery.</p>
                                        </div>

                                        <!-- Confirm Button -->
                                        <button type="submit" class="btn-confirm-modern">
                                            <img src="https://img.icons8.com/ios-filled/24/ffffff/lock.png"
                                                alt="Lock">
                                            {{ BanglaText('confirm_order') }}
                                        </button>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--<a href="https://wa.me/01303064267" target="_blank" class="whats_btn">-->
    <!--    <span>-->
    <!--<img width="45" height="45" src="https://img.icons8.com/windows/45/whatsapp--v1.png" alt="whatsapp--v1"/>-->
    <!--    </span>-->
    <!--</a>-->
    <div class="footer">
        <div class="copyright">
            <small> &copy; {{ date('Y') }} {{ request()->getHost() }} | Developed By <a
                    href="https://nixsoftware.net/" target="_blank">Nixsoftware</a>.</small>
        </div>
    </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!--<link rel="stylesheet" href="{{ asset('backend/landing_page/js/carousel.min.js') }}">-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!--<link rel="stylesheet" href="{{ asset('backend/landing_page/js/main.js') }}">-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous">
    </script>

    <script>
        $(document).ready(function() {
            getCharge();

            $(".img-gallery").owlCarousel({
                loop: true,
                autoplay: true,
                dots: false,
                margin: 10,
                nav: false,
                responsive: {
                    0: {
                        items: 1,
                    },
                    700: {
                        items: 3,
                    },
                    1200: {
                        items: 3,
                    },
                },
            });

            $(".review-carousel-modern").owlCarousel({
                loop: true,
                autoplay: true,
                dots: true,
                margin: 20,
                nav: false,
                responsive: {
                    0: {
                        items: 1,
                    },
                    600: {
                        items: 2,
                    },
                    1000: {
                        items: 3,
                    },
                },
            });
        });

        function getCharge() {

            let delivery_charge = $('#delivery_charge_id').find("option:selected");
            var crg_id = delivery_charge.val();
            var testval = delivery_charge.data('charge');

            $('span#delvry_charge').text(testval);
            //   $('span#charge').text(Number(testval).toFixed(2));
            $('#shipping_cost').val(Number(testval).toFixed(2));
            var price = $('span.final-price-amount').text();
            let total = Number(testval) + Number(price);
            $('#total').text(total);
            $('#total_price_val').val(total);
        }

        $("button#order_btn").click(function() {
            $('html,body').animate({
                    scrollTop: $("#element_widget").offset().top
                },
                'slow');
        });

        $("a#order_btn").click(function() {
            $('html,body').animate({
                    scrollTop: $("#element_widget").offset().top
                },
                'slow');
        });


        $(document).on('submit', 'form#checkout_land_form', function(e) {

            e.preventDefault();
            $('span.textdanger').text('');

            let ele = $('form#checkout_land_form');

            var url = ele.attr('action');
            var method = ele.attr('method');
            var formData = ele.serialize();

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                type: method,
                url: url,
                data: formData,
                success: function(res) {
                    if (res.success == true) {
                        toastr.success(res.msg);
                        if (res.url) {
                            document.location.href = res.url;
                        } else {
                            window.location.reload();
                        }

                    } else if (res.success == false) {
                        toastr.error(res.msg);
                    }

                },
                error: function(response) {
                    $.each(response.responseJSON.errors, function(field_name, error) {
                        $(document).find('[name=' + field_name + ']').after(
                            '<span class="textdanger" style="color:red">' + error +
                            '</span>');
                    })
                }
            });
        });

        AOS.init({
            duration: 1200,
        });
    </script>
    <script type="text/javascript">
        $('#sizes .size').on('click', function() {
            $('#sizes .size').removeClass('active');
            $(this).addClass('active');
            let value = $(this).attr('value');
            let variation_price_discount = $(this).data('dis-value');
            if (variation_price_discount == '') {
                var variation_price = $(this).data('value');
            } else {
                var variation_price = variation_price_discount;
            }
            let delivery_charge = $('#delivery_charge_id').find("option:selected");
            var testval = delivery_charge.data('charge');
            var total_price = Number(variation_price) + Number(testval);
            $('span#total').text(total_price);
            $('#total_price_val').val(total_price);
            $('#product_price').val(variation_price);
            $('.price-amount').text(variation_price);
            $('span.final-price-amount').text(variation_price);
            $('#price_val').val(variation_price);
            $("#variation_id").val(value);
        });

        //   $('#colors .color').on('click', function() {
        //       $('#colors .color').removeClass('active');
        //       $(this).addClass('active');
        //       let color = $(this).data('colorname');
        //       $('#color').val(color);
        //   });

        //   $('#sizes .size').on('click', function(){
        //   $('#sizes .size').removeClass('active');
        //   $(this).addClass('active');

        //   let size = $(this).data('sizename');


        //   $('#size').val(size);
        //   let product_price = $(this).data('price');
        //   $('.price-amount').text(product_price);
        //   $('#price_val').val(product_price);
        //   let delivery_charge= $('#delivery_charge_id').find("option:selected");
        //   var testval = delivery_charge.data('charge');
        //   var total_price = Number(variation_price) + Number(testval);
        //   $('span#total').text(total_price);
        //   $('#total_price_val').val(total_price);
        //   $('#product_price').val(variation_price);

        //   $('span.final-price-amount').text(variation_price);
        //   $('#price_val').val(variation_price);
        //   $("#variation_id").val(value);
        //   }); 

        //   $('.increase-qty').on('click', function () {
        //   var sub_total_price = 0;   
        //   var product_price = $('input#product_price').val();
        //   if(product_price == '0') {
        //       var product_price = $('#product_price').val();
        //   }

        //   var qtyInput = $(this).siblings('.inner_qty');
        //   var newQuantity = parseInt(qtyInput.val()) + 1;

        //   $('input#product_quantity').val(newQuantity);
        //   $('#product_name').val();
        //   var delivery_charge = $('span#delvry_charge').text();

        //   var sub_total_price = Number(product_price) * Number(newQuantity);


        //   var total_with_delivery = Number(sub_total_price) + Number(delivery_charge);

        //   // $('span#price').text(sub_total_price);
        //   $('span.final-price-amount').text(sub_total_price);
        //   $('span#total').text(total_with_delivery);
        //   $('#total_price_val').val(total_with_delivery);
        //   qtyInput.val(newQuantity);
        //   });

        $('.increase-qty').on('click', function() {
            var sub_total_price = 0;
            var product_price = $('input#price_val').val();

            var qtyInput = $(this).siblings('.inner_qty');
            var newQuantity = parseInt(qtyInput.val()) + 1;

            $('input#product_quantity').val(newQuantity);
            var delivery_charge = $('span#delvry_charge').text();

            var sub_total_price = Number(product_price) * Number(newQuantity);

            var total_with_delivery = Number(sub_total_price) + Number(delivery_charge);

            // $('span#price').text(sub_total_price);
            $('span.final-price-amount').text(sub_total_price);
            $('span#total').text(total_with_delivery);
            $('#total_price_val').val(total_with_delivery);
            qtyInput.val(newQuantity);
        });

        $('.decrease-qty').on('click', function() {
            var qtyInput = $(this).siblings('.inner_qty');
            $qnty = parseInt(qtyInput.val());
            var newQuantity = parseInt(qtyInput.val()) - 1;
            if (newQuantity > 0) {
                qtyInput.val(newQuantity);
                $('#product_quantity').val(newQuantity);
            }
            var product_price = $('input#price_val').val();
            var delivery_charge = $('span#delvry_charge').text();
            if (newQuantity != '0') {
                var sub_total_price = Number(product_price) * Number(newQuantity);
                var total_with_delivery = Number(sub_total_price) + Number(delivery_charge);
                $('#total_price_val').val(total_with_delivery);
                $('span#total').text(total_with_delivery);
                $('span.final-price-amount').text(sub_total_price);
            }

        });
    </script>
</body>

</html>
