<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="csrf-token" content="{{ csrf_token() }}">
      @php
      $siteInfo = DB::table('informations')->first();
      @endphp
      <title>{{ $title }}</title>
      
      <!-- External Liabilities -->
      <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
      <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@400;600;700&display=swap" rel="stylesheet">

      <style>
         :root {
            --primary-color: #FF6B2C;
            --secondary-color: #FFFFFF;
            --accent-color: #000000;
            --bg-color: #F5F5F5;
            --text-color: #333333;
            --border-radius: 8px;
            --shadow-card: 0 2px 8px rgba(0, 0, 0, 0.1);
            --shadow-button: 0 4px 12px rgba(255, 107, 44, 0.3);
            --font-primary: 'Arial', sans-serif;
            --font-secondary: 'Hind Siliguri', sans-serif;
         }

         body {
            font-family: var(--font-secondary);
            background-color: var(--bg-color);
            color: var(--text-color);
            margin: 0;
            padding: 0;
            overflow-x: hidden;
         }

         /* Utility Classes */
         .container-custom {
            max-width: 800px;
            margin: 0 auto;
            padding: 0 15px;
         }

         .section-gap {
            margin-bottom: 20px;
         }

         .card-box {
             background: var(--secondary-color);
             border-radius: var(--border-radius);
             padding: 20px;
             box-shadow: var(--shadow-card);
         }

         /* Hero Section */
         .hero-section {
            position: relative;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            padding: 60px 0;
            min-height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
         }
         .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.3);
            backdrop-filter: blur(2px);
         }
         .hero-content {
            position: relative;
            z-index: 2;
            width: 100%;
         }
         .brand-logo {
             margin-bottom: 20px;
         }
         .brand-name {
             font-size: 32px;
             font-weight: bold;
             color: #fff;
             display: block;
         }
         .brand-tagline {
             font-size: 14px;
             color: #ddd;
             display: block;
         }
         .hero-headline {
             background: var(--primary-color);
             color: #fff;
             display: inline-block;
             padding: 12px 30px;
             font-size: 20px;
             font-weight: 600;
             border-radius: 4px;
             margin-top: 20px;
             box-shadow: var(--shadow-button);
         }

         /* CTA Button */
         .cta-btn {
             background-color: var(--primary-color);
             color: #fff;
             border: none;
             padding: 16px 40px;
             font-size: 20px;
             font-weight: bold;
             border-radius: var(--border-radius);
             box-shadow: var(--shadow-button);
             transition: all 0.3s ease;
             text-decoration: none;
             display: inline-flex;
             align-items: center;
             width: fit-content;
             margin: 20px auto;
             cursor: pointer;
         }
         .cta-btn:hover {
             transform: translateY(-2px);
             box-shadow: 0 6px 16px rgba(0,0,0,0.2);
             color: #fff;
         }
         .cta-btn i {
             margin-right: 10px;
         }

         /* Contact Info */
         .contact-section {
             background: var(--secondary-color);
             border: 2px solid var(--primary-color);
             border-radius: var(--border-radius);
             padding: 20px;
             text-align: center;
         }
         .contact-label {
             font-size: 14px;
             color: #666;
             text-transform: uppercase;
             letter-spacing: 1px;
         }
         .contact-phone {
             font-size: 24px;
             font-weight: bold;
             color: var(--primary-color);
             text-decoration: none;
             display: block;
             margin-top: 5px;
         }

         /* Category Selector */
         .category-options {
             display: flex;
             gap: 15px;
             justify-content: center;
             flex-wrap: wrap;
             margin-top: 15px;
         }
         .category-item {
             background: #f8f9fa;
             border: 1px solid #ddd;
             padding: 10px 20px;
             border-radius: 20px;
             cursor: pointer;
             font-weight: 600;
             color: #555;
             transition: all 0.2s;
         }
         .category-item:hover, .category-item.active {
             background: var(--primary-color);
             color: #fff;
             border-color: var(--primary-color);
         }

         /* Product Features / Gallery */
         .section-title {
             background: var(--primary-color);
             color: #fff;
             padding: 12px 20px;
             border-radius: var(--border-radius);
             text-align: center;
             font-size: 20px;
             font-weight: bold;
             margin-bottom: 20px;
         }
         .gallery-item img {
             width: 100%;
             border-radius: var(--border-radius);
             /* height: 250px; 
             object-fit: cover; */
         }
         .owl-carousel .item img{
             border-radius: var(--border-radius);
         }


         /* Checkout Form */
         .checkout-section {
             border: 3px solid var(--primary-color);
             border-radius: 12px;
             padding: 30px;
             background: var(--secondary-color);
         }
         .form-group label {
             font-weight: 600;
             margin-bottom: 8px;
             display: block;
             color: #444;
         }
         .form-control, .form-select {
             border-radius: 6px;
             padding: 12px 15px;
             border: 1px solid #ddd;
             font-size: 14px;
         }
         .form-control:focus {
             border-color: var(--primary-color);
             box-shadow: 0 0 0 0.2rem rgba(255, 107, 44, 0.25);
         }
         
         /* Order Summary */
         .order-summary-box {
             background: #F9F9F9;
             padding: 20px;
             border-radius: 8px;
         }
         .summary-row {
             display: flex;
             justify-content: space-between;
             padding: 10px 0;
             border-bottom: 1px solid #eee;
         }
         .summary-row.total {
             border-bottom: none;
             font-weight: bold;
             font-size: 18px;
             color: var(--primary-color);
             border-top: 2px solid #ddd;
             margin-top: 10px;
             padding-top: 15px;
         }
         .product-row {
             display: flex;
             align-items: center;
             gap: 15px;
             margin-bottom: 15px;
         }
         .product-thumb {
             width: 60px;
             height: 60px;
             border-radius: 6px;
             object-fit: cover;
         }
         
         /* Quantiy Input */
         .qty-input-group {
             display: inline-flex;
             align-items: center;
             border: 1px solid #ddd;
             border-radius: 20px;
             background: #fff;
             overflow: hidden;
         }
         .qty-btn {
             width: 32px;
             height: 32px;
             display: flex;
             align-items: center;
             justify-content: center;
             background: #f1f1f1;
             cursor: pointer;
             font-weight: bold;
             font-size: 18px;
         }
         .qty-btn:hover {
             background: #e1e1e1;
         }
         .qty-value {
             width: 40px;
             text-align: center;
             border: none;
             font-weight: bold;
         }
         
         /* Payment Method */
         .payment-method-box {
             background: #FFF9F5;
             border: 1px solid #FFE0CC;
             padding: 15px;
             border-radius: 6px;
             margin-top: 20px;
         }

         /* Footer */
         .footer-section {
             background: var(--primary-color);
             color: #fff;
             padding: 20px;
             text-align: center;
             margin-top: 40px;
         }

         /* Animations */
         @keyframes pulse-orange {
            0% { box-shadow: 0 0 0 0 rgba(255, 107, 44, 0.7); }
            70% { box-shadow: 0 0 0 10px rgba(255, 107, 44, 0); }
            100% { box-shadow: 0 0 0 0 rgba(255, 107, 44, 0); }
         }
         .animate-pulse {
             animation: pulse-orange 2s infinite;
         }
      </style>
      
      {!! \App\Models\Information::value('tracking_code') !!}
   </head>
   <body>

      <!-- Hero Section -->
      <section class="hero-section" style="background-image: url('{{ asset('landing_pages/'. $ln_pg->landing_bg) }}');">
         <div class="hero-overlay"></div>
         <div class="container container-custom hero-content">
             <div class="brand-logo" data-aos="fade-down">
                 <!-- Placeholder for Logo if available, using text for now -->
                 <div class="brand-icon mb-2">
                    <i class="fas fa-shapes fa-3x" style="color: #fff;"></i>
                 </div>
                 <span class="brand-name">YOUR BRAND NAME</span>
                 <span class="brand-tagline">DESIGN AND CONSULTANCY</span>
             </div>
             
             <div class="hero-headline" data-aos="zoom-in">
                 {{ $ln_pg->title1 }}
             </div>
         </div>
      </section>

      <!-- Primary CTA -->
      <section class="container container-custom section-gap text-center">
         <a href="#checkout-form" class="cta-btn animate-pulse">
             <i class="fas fa-hand-pointer"></i> {{ BanglaText('order') }}
         </a>
      </section>

      <!-- Contact Info -->
      <section class="container container-custom section-gap">
          <div class="contact-section" data-aos="fade-up">
              <div class="contact-label">CALL US</div>
              <a href="tel:{{ $ln_pg->phone }}" class="contact-phone">{{ $ln_pg->phone }}</a>
          </div>
      </section>

      <!-- Category Selector (Visual) -->
      <section class="container container-custom section-gap">
         <div class="card-box text-center">
             <h5 style="color: #999; font-size: 14px;">SELECT CATEGORY</h5>
             <div class="category-options">
                 <div class="category-item">RES</div>
                 <div class="category-item">RES</div>
                 <div class="category-item active">RES</div>
                 <div class="category-item">RES</div>
                 <div class="category-item">RES</div>
             </div>
             <div class="mt-3 text-muted" style="font-size: 12px;">Minipack xxxxx xxxxx</div>
         </div>
      </section>

      <!-- Product Showcase / Gallery -->
      <section class="container container-custom section-gap">
          <div class="section-title">
             {{ $ln_pg->feature ?? 'আমাদের প্রজেক্ট গ্যালারি' }}
          </div>
          
          <div class="card-box" style="border: 3px solid var(--primary-color);">
              <div class="owl-carousel img-gallery">
                 @foreach($ln_pg->images as $slider)
                 <div class="item">
                    <img src="{{ asset('landing_sliders/'.$slider->image) }}" alt="Slider Image">
                 </div>
                 @endforeach
              </div>
              
              <div class="text-center mt-4">
                  <a href="#checkout-form" class="cta-btn" style="padding: 12px 30px; font-size: 18px;">
                      <i class="fas fa-shopping-cart"></i> {{ BanglaText('do_order') }}
                  </a>
              </div>
          </div>
      </section>

      <!-- Brand Variations / Reviews -->
      @if(isset($ln_pg->review_images) && count($ln_pg->review_images) > 0)
      <section class="container container-custom section-gap">
          <div class="text-center mb-3">
              <span style="background: var(--primary-color); color: #fff; padding: 8px 15px; border-radius: 4px; font-weight: 600;">
                  {{ $ln_pg->review_top_text ?? 'Alhamdulillah' }}
              </span>
          </div>
          
          <div class="row g-3">
             @foreach($ln_pg->review_images as $review)
             <div class="col-6 col-md-4">
                 <div class="card-box p-2 text-center h-100">
                     <img src="{{ asset('review_landing_sliders/'.$review->review_image) }}" class="img-fluid rounded" alt="Review">
                 </div>
             </div>
             @endforeach
          </div>
      </section>
      @endif

      <!-- Checkout Form Section -->
      <section id="checkout-form" class="container container-custom section-gap">
          <div class="section-title mb-4">
              {{ BanglaText('land_instruction') }}
          </div>

          <div class="checkout-section">
              <form action="{{ route('front.storelandData') }}" method="POST" id="checkout_land_form">
                  <div class="row g-4">
                      <!-- Billing Address -->
                      <div class="col-md-6">
                          <h4 class="mb-3" style="color: var(--primary-color); border-bottom: 2px solid #eee; padding-bottom: 10px;">Billing Address</h4>
                          
                          <!-- Hidden Inputs -->
                          @if(isset($ln_pg->product))
                          <input type="hidden" value="{{ $ln_pg->product->id }}" name="prd_id">
                          <input type="hidden" id="variation_id" name="variation_id" value="{{ $ln_pg->product->variation->id ?? '' }}">
                          @php
                              $price = $ln_pg->product->after_discount != 0 ? $ln_pg->product->after_discount : $ln_pg->product->sell_price;
                          @endphp
                          <input type="hidden" id="product_price" name="amount" value="{{ $price }}">
                          <input type="hidden" id="price_val" value="{{ $price }}">
                          @endif
                          <input type="hidden" id="total_price_val" name="final_amount" value="">
                          <input type="hidden" id="product_quantity" name="quantity" value="1">

                          <div class="form-group mb-3">
                              <label>{{ BanglaText('name') }} <span class="text-danger">*</span></label>
                              <input type="text" name="first_name" class="form-control" placeholder="আপনার নাম লিখুন" required>
                          </div>
                          
                          <div class="form-group mb-3">
                              <label>{{ BanglaText('mobile') }} <span class="text-danger">*</span></label>
                              <input type="text" name="mobile" class="form-control" placeholder="মোবাইল নম্বর লিখুন" required>
                          </div>
                          
                          <div class="form-group mb-3">
                              <label>{{ BanglaText('address') }} <span class="text-danger">*</span></label>
                              <input type="text" name="shipping_address" class="form-control" placeholder="আপনার সম্পূর্ণ ঠিকানা লিখুন" required>
                          </div>
                          
                          <div class="form-group mb-3">
                              <label>{{ BanglaText('delivery_zone') }} <span class="text-danger">*</span></label>
                              <select name="delivery_charge_id" id="delivery_charge_id" class="form-select" onchange="getCharge()" required>
                                  @foreach($charges as $charge)
                                  <option value="{{ $charge->id }}" data-charge="{{ $charge->amount }}">{{ $charge->title }}</option>
                                  @endforeach
                              </select>
                          </div>
                      </div>

                      <!-- Order Summary -->
                      <div class="col-md-6">
                          <h4 class="mb-3" style="color: var(--primary-color); border-bottom: 2px solid #eee; padding-bottom: 10px;">Your Order</h4>
                          
                          <div class="order-summary-box">
                              <!-- Product Info -->
                              @if(isset($ln_pg->product))
                              <div class="product-row">
                                  <img src="{{ getImage('products', $ln_pg->product->image) }}" class="product-thumb" alt="Product">
                                  <div>
                                      <div style="font-weight: 600; line-height: 1.2; margin-bottom: 5px;">{{ $ln_pg->product->name }}</div>
                                      <div style="color: var(--primary-color); font-weight: bold;">
                                          ৳ <span class="price-amount">{{ $price }}</span>
                                      </div>
                                  </div>
                              </div>
                              @endif

                              <!-- Quantity Selector -->
                              <div class="d-flex justify-content-between align-items-center mb-3">
                                  <span>Select Quantity:</span>
                                  <div class="qty-input-group">
                                      <span class="qty-btn decrease-qty">-</span>
                                      <input type="text" class="qty-value inner_qty" value="1" readonly>
                                      <span class="qty-btn increase-qty">+</span>
                                  </div>
                              </div>

                              <hr>

                              <!-- Totals -->
                              <div class="summary-row">
                                  <span>Subtotal</span>
                                  <span>৳ <span class="final-price-amount">{{ $price ?? 0 }}</span></span>
                              </div>
                              <div class="summary-row">
                                  <span>Shipping</span>
                                  <span>৳ <span id="delvry_charge">0</span></span>
                              </div>
                              <div class="summary-row total">
                                  <span>Total</span>
                                  <span>৳ <span id="total">{{ $price ?? 0 }}</span></span>
                              </div>

                              <!-- Payment Method -->
                              <div class="payment-method-box">
                                  <div class="form-check">
                                      <input class="form-check-input" type="radio" name="payment_method" id="cod" checked>
                                      <label class="form-check-label" for="cod">
                                          Cash on Delivery
                                      </label>
                                  </div>
                                  <small class="text-muted d-block mt-1">Pay with cash upon delivery.</small>
                              </div>
                              
                              <p class="mt-2 text-danger small text-center">{{ BanglaText('alert') }}</p>

                              <button type="submit" class="cta-btn w-100 mt-3" style="font-size: 18px; padding: 14px;">
                                  {{ BanglaText('confirm_order') }}
                              </button>
                          </div>
                      </div>
                  </div>
              </form>
          </div>
      </section>

      <!-- Footer -->
      <footer class="footer-section">
          <div class="container">
              <p class="mb-0">{!! $siteInfo->copyright !!}</p>
          </div>
      </footer>


      <!-- Scripts -->
      <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
      <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

      <script>
         $(document).ready(function(){
            AOS.init({ duration: 1000 });
            getCharge();

            // Hero/Gallery Carousel
            $(".img-gallery").owlCarousel({
                loop: true,
                autoplay: true,
                dots: true,
                margin: 15,
                nav: false,
                responsive: {
                    0: { items: 1 },
                    600: { items: 2 },
                    1000: { items: 3 }
                }
            });
            
            // Clean Scroll
            $("a[href^='#']").on('click', function(event) {
                if (this.hash !== "") {
                    event.preventDefault();
                    var hash = this.hash;
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top - 50
                    }, 800);
                }
            });
         });

         // Price Calculation Logic
         function getCharge(){
             let delivery_charge = $('#delivery_charge_id').find("option:selected");
             let charge = Number(delivery_charge.data('charge') || 0);
             
             $('span#delvry_charge').text(charge);
             
             let product_price = Number($('#price_val').val() || 0);
             let quantity = Number($('.inner_qty').val() || 1);
             let subtotal = product_price * quantity;
             
             let total = subtotal + charge;
             
             $('span.final-price-amount').text(subtotal);
             $('span#total').text(total);
             $('#total_price_val').val(total);
         }

         // Quantity Handlers
         $('.increase-qty').on('click', function () {
             let qtyInput = $('.inner_qty');
             let newQty = parseInt(qtyInput.val()) + 1;
             qtyInput.val(newQty);
             $('#product_quantity').val(newQty);
             getCharge(); // Recalculate
         });

         $('.decrease-qty').on('click', function () {
             let qtyInput = $('.inner_qty');
             let newQty = parseInt(qtyInput.val()) - 1;
             if (newQty >= 1) {
                 qtyInput.val(newQty);
                 $('#product_quantity').val(newQty);
                 getCharge(); // Recalculate
             }
         });

         // Ajax Form Submission
         $(document).on('submit', 'form#checkout_land_form', function(e) {
             e.preventDefault(); 
             $('span.text-danger.error-text').remove(); // Clear prev errors
             
             let ele = $(this);
             let formData = ele.serialize();
             let url = ele.attr('action');
             
             $.ajaxSetup({
                 headers: {
                     'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                 }
             });

             $.ajax({
                 type: "POST",
                 url: url,
                 data: formData,
                 success: function(res) {
                     if(res.success){
                         toastr.success(res.msg);
                         if(res.url){                    
                             document.location.href = res.url;
                         }else{
                             window.location.reload();
                         }
                     }else{
                         toastr.error(res.msg);
                     }
                 },
                 error: function (response){
                     if(response.responseJSON && response.responseJSON.errors) {
                         $.each(response.responseJSON.errors, function(field_name, error){
                             $(document).find('[name='+field_name+']').after('<span class="text-danger error-text d-block small">' +error+ '</span>');
                         });
                         toastr.error('Please check the form for errors.');
                     }
                 }
             });
         });
      </script>
   </body>
</html>
