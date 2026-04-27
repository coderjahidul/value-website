<!DOCTYPE html>
<html lang="bn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drop-Shoulder T-Shirt Collection</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Hind Siliguri', sans-serif;
        }
        
        .hover-zoom {
            transition: transform 0.3s ease;
        }
        
        .hover-zoom:hover {
            transform: scale(1.05);
        }
        
        .sale-badge {
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0%, 100% {
                opacity: 1;
            }
            50% {
                opacity: 0.8;
            }
        }
        
        .btn-primary {
            background: #1e3a8a;
            transition: all 0.3s ease;
        }
        
        .btn-primary:hover {
            background: #1e40af;
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(30, 58, 138, 0.3);
        }
        
        .product-card {
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.07);
            transition: all 0.3s ease;
        }
        
        .product-card:hover {
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.12);
        }
    </style>
</head>
<body class="bg-gray-50">
    
    <!-- Hero Section -->
    <div class="bg-gradient-to-br from-gray-50 to-gray-100 py-12 px-4">
        <div class="max-w-4xl mx-auto">
            <!-- Header -->
            <div class="text-center mb-8">
                <h1 class="text-3xl md:text-4xl font-bold text-gray-800 mb-2">
                    ২০০+ GSM এর বিশিষ্ট্য <span class="text-blue-900">Drop-Shoulder</span>
                </h1>
                <div class="inline-block bg-yellow-400 text-yellow-900 px-4 py-1 rounded-full text-sm font-semibold sale-badge">
                    SALE
                </div>
            </div>
            
            <!-- Main Product Image -->
            <div class="relative bg-white rounded-2xl shadow-lg overflow-hidden mb-8 max-w-md mx-auto">
                <div class="absolute top-4 left-4 bg-blue-900 text-white px-3 py-1 rounded text-sm font-semibold z-10">
                    ⭐ Top Rated
                </div>
                <div class="absolute top-4 right-4 bg-yellow-400 text-yellow-900 px-3 py-1 rounded text-sm font-semibold z-10 sale-badge">
                    SALE
                </div>
                <div class="bg-gradient-to-br from-blue-200 to-blue-300 p-8 flex items-center justify-center" style="min-height: 400px;">
                    <div class="text-center text-blue-900 text-6xl">👕</div>
                </div>
            </div>
            
            <!-- Product Description -->
            <div class="text-center mb-8">
                <p class="text-lg text-gray-700 leading-relaxed mb-6">
                    <span class="font-semibold">১০০% কটন এবং</span> <span class="text-blue-900 font-bold">Summer Friendly</span> Drop-Shoulder যা সম্পূর্ণ Long Lasting. ভাতার করতে <span class="text-blue-900 font-semibold">আপ্রিং কোন ঢাকা পেশকাব</span> দিতে হবেনা।
                </p>
                <button class="btn-primary text-white px-8 py-3 rounded-lg font-semibold inline-flex items-center gap-2">
                    🛒 ভাতার করতে চাই
                </button>
            </div>
        </div>
    </div>
    
    <!-- Color Options Section -->
    <div class="bg-white py-12 px-4">
        <div class="max-w-5xl mx-auto">
            <h2 class="text-2xl md:text-3xl font-bold text-center mb-8 text-gray-800">
                আমাদের কাছে <span class="text-blue-900">যে যে কালার পাচ্ছেন</span>
            </h2>
            
            <div class="grid grid-cols-2 md:grid-cols-2 gap-6 mb-8">
                <!-- Color Option 1 - Maroon -->
                <div class="product-card hover-zoom">
                    <div class="relative">
                        <div class="absolute top-3 left-3 bg-blue-900 text-white px-2 py-1 rounded text-xs font-semibold z-10">
                            ⭐
                        </div>
                        <div class="absolute top-3 right-3 bg-yellow-400 text-yellow-900 px-2 py-1 rounded text-xs font-semibold z-10">
                            SALE
                        </div>
                        <div class="bg-gradient-to-br from-red-900 to-red-950 p-12 flex items-center justify-center" style="min-height: 280px;">
                            <div class="text-6xl">👕</div>
                        </div>
                    </div>
                </div>
                
                <!-- Color Option 2 - Sky Blue -->
                <div class="product-card hover-zoom">
                    <div class="relative">
                        <div class="absolute top-3 left-3 bg-blue-900 text-white px-2 py-1 rounded text-xs font-semibold z-10">
                            ⭐
                        </div>
                        <div class="absolute top-3 right-3 bg-yellow-400 text-yellow-900 px-2 py-1 rounded text-xs font-semibold z-10">
                            SALE
                        </div>
                        <div class="bg-gradient-to-br from-blue-300 to-blue-400 p-12 flex items-center justify-center" style="min-height: 280px;">
                            <div class="text-6xl">👕</div>
                        </div>
                    </div>
                </div>
                
                <!-- Color Option 3 - Pink -->
                <div class="product-card hover-zoom">
                    <div class="relative">
                        <div class="absolute top-3 left-3 bg-blue-900 text-white px-2 py-1 rounded text-xs font-semibold z-10">
                            ⭐
                        </div>
                        <div class="absolute top-3 right-3 bg-yellow-400 text-yellow-900 px-2 py-1 rounded text-xs font-semibold z-10">
                            SALE
                        </div>
                        <div class="bg-gradient-to-br from-pink-300 to-pink-400 p-12 flex items-center justify-center" style="min-height: 280px;">
                            <div class="text-6xl">👕</div>
                        </div>
                    </div>
                </div>
                
                <!-- Color Option 4 - Lavender -->
                <div class="product-card hover-zoom">
                    <div class="relative">
                        <div class="absolute top-3 left-3 bg-blue-900 text-white px-2 py-1 rounded text-xs font-semibold z-10">
                            ⭐
                        </div>
                        <div class="absolute top-3 right-3 bg-yellow-400 text-yellow-900 px-2 py-1 rounded text-xs font-semibold z-10">
                            SALE
                        </div>
                        <div class="bg-gradient-to-br from-purple-300 to-purple-400 p-12 flex items-center justify-center" style="min-height: 280px;">
                            <div class="text-6xl">👕</div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="text-center">
                <button class="btn-primary text-white px-8 py-3 rounded-lg font-semibold inline-flex items-center gap-2">
                    🛒 ভাতার করতে চাই
                </button>
            </div>
        </div>
    </div>
    
    <!-- Size Chart Section -->
    <div class="bg-gradient-to-br from-gray-50 to-gray-100 py-12 px-4">
        <div class="max-w-5xl mx-auto">
            <h2 class="text-2xl md:text-3xl font-bold text-center mb-8 text-gray-800">
                আমাদের <span class="text-blue-900">সাইজ চার্ট</span>
            </h2>
            
            <div class="bg-white rounded-2xl shadow-lg p-8 mb-8">
                <div class="aspect-video bg-gradient-to-br from-gray-100 to-gray-200 rounded-lg flex items-center justify-center">
                    <div class="text-center text-gray-500">
                        <div class="text-5xl mb-4">📏</div>
                        <p class="text-lg font-semibold">সাইজ চার্ট ইমেজ</p>
                    </div>
                </div>
            </div>
            
            <div class="text-center">
                <button class="btn-primary text-white px-8 py-3 rounded-lg font-semibold inline-flex items-center gap-2">
                    🛒 ভাতার করতে চাই
                </button>
            </div>
        </div>
    </div>
    
    <!-- Order Section -->
    <div class="bg-white py-12 px-4">
        <div class="max-w-5xl mx-auto">
            <h2 class="text-2xl md:text-3xl font-bold text-center mb-4 text-gray-800">
                ভাতার করতে নিচের ফর্ম <span class="text-blue-900">আপনার নাম, ফুর্ত ঠিকানা এবং মোবাইল নাম্বার</span> লিখুন।
            </h2>
            
            <!-- Sample Product Selection -->
            <div class="bg-gray-50 rounded-2xl p-6 mb-8">
                <h3 class="text-lg font-semibold mb-4 text-gray-700">কালার শিলেকশন করুন</h3>
                <div class="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
                    <div class="bg-white p-4 rounded-lg border-2 border-blue-900 cursor-pointer hover:shadow-md transition">
                        <div class="w-full aspect-square bg-gradient-to-br from-blue-300 to-blue-400 rounded-lg mb-2 flex items-center justify-center">
                            <span class="text-2xl">👕</span>
                        </div>
                        <p class="text-sm font-semibold text-center">Premium Sky Blue</p>
                        <p class="text-xs text-center text-gray-500">Out of stock</p>
                        <p class="text-sm font-bold text-center text-blue-900">৳ 350.00</p>
                    </div>
                    
                    <div class="bg-white p-4 rounded-lg border-2 border-transparent cursor-pointer hover:shadow-md transition hover:border-blue-900">
                        <div class="w-full aspect-square bg-gradient-to-br from-pink-300 to-pink-400 rounded-lg mb-2 flex items-center justify-center">
                            <span class="text-2xl">👕</span>
                        </div>
                        <p class="text-sm font-semibold text-center">Baby Pink</p>
                        <p class="text-xs text-center text-gray-500">Out of stock</p>
                        <p class="text-sm font-bold text-center text-blue-900">৳ 350.00</p>
                    </div>
                    
                    <div class="bg-white p-4 rounded-lg border-2 border-transparent cursor-pointer hover:shadow-md transition hover:border-blue-900">
                        <div class="w-full aspect-square bg-gradient-to-br from-red-900 to-red-950 rounded-lg mb-2 flex items-center justify-center">
                            <span class="text-2xl">👕</span>
                        </div>
                        <p class="text-sm font-semibold text-center">Maroon</p>
                        <p class="text-xs text-center text-gray-500">Out of stock</p>
                        <p class="text-sm font-bold text-center text-blue-900">৳ 350.00</p>
                    </div>
                    
                    <div class="bg-white p-4 rounded-lg border-2 border-transparent cursor-pointer hover:shadow-md transition hover:border-blue-900">
                        <div class="w-full aspect-square bg-gradient-to-br from-purple-300 to-purple-400 rounded-lg mb-2 flex items-center justify-center">
                            <span class="text-2xl">👕</span>
                        </div>
                        <p class="text-sm font-semibold text-center">Purple</p>
                        <p class="text-xs text-center text-gray-500">Out of stock</p>
                        <p class="text-sm font-bold text-center text-blue-900">৳ 350.00</p>
                    </div>
                </div>
            </div>
            
            <!-- Order Form -->
            <div class="bg-gray-50 rounded-2xl p-6 md:p-8 mb-8">
                <div class="grid md:grid-cols-2 gap-8">
                    <!-- Left Column - Customer Info -->
                    <div>
                        <h3 class="text-lg font-semibold mb-4 text-gray-700">কাস্টমার তথ্য</h3>
                        <div class="space-y-4">
                            <div>
                                <label class="block text-sm font-medium text-gray-700 mb-2">পেমেন্ট অপশন *</label>
                                <select class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-900 focus:border-transparent">
                                    <option>বিকাশ (পার্সনাল)</option>
                                    <option>নগদ</option>
                                    <option>রকেট</option>
                                </select>
                            </div>
                            <div>
                                <label class="block text-sm font-medium text-gray-700 mb-2">Size *</label>
                                <select class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-900 focus:border-transparent">
                                    <option>L (চেষ্ট 44.5)</option>
                                    <option>M (চেষ্ট 42.5)</option>
                                    <option>XL (চেষ্ট 46.5)</option>
                                </select>
                            </div>
                            <div>
                                <label class="block text-sm font-medium text-gray-700 mb-2">পিগনত উপন হিসাব *</label>
                                <input type="text" placeholder="0112345678" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-900 focus:border-transparent">
                            </div>
                            <div>
                                <label class="block text-sm font-medium text-gray-700 mb-2">ট্রানজেকশন আইডি *</label>
                                <input type="text" class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-900 focus:border-transparent">
                            </div>
                        </div>
                    </div>
                    
                    <!-- Right Column - Order Summary -->
                    <div>
                        <h3 class="text-lg font-semibold mb-4 text-gray-700">আপনার অর্ডার</h3>
                        <div class="bg-white rounded-lg p-6 mb-4">
                            <div class="space-y-3 mb-4">
                                <div class="flex justify-between items-center">
                                    <span class="font-medium">Product</span>
                                    <span class="font-medium">Subtotal</span>
                                </div>
                                <div class="flex justify-between items-center text-sm">
                                    <div>
                                        <span>Premium Sky Blue</span>
                                        <span class="text-gray-500"> × 1</span>
                                    </div>
                                    <span class="font-semibold">৳ 350.00</span>
                                </div>
                                <div class="border-t pt-3 flex justify-between items-center">
                                    <span class="font-medium">Subtotal</span>
                                    <span class="font-semibold">৳ 350.00</span>
                                </div>
                                <div class="flex justify-between items-center text-sm">
                                    <span>Shipping</span>
                                    <span>ঢাকা - ৳ 60.00</span>
                                </div>
                                <div class="border-t pt-3 flex justify-between items-center text-lg">
                                    <span class="font-bold">Total</span>
                                    <span class="font-bold text-blue-900">৳ 410.00</span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="bg-blue-50 rounded-lg p-4 mb-4 border border-blue-200">
                            <p class="text-sm text-gray-700 leading-relaxed">
                                আপনার ব্যক্তিগত তথ্য এই ওয়েবসাইটের অন্য কোথাও প্রবেশ করতে ব্যবহার করা হবে না।
                                গোপনীয়তা নীতি -এ বর্ণনানুযায়ী অন্য সাহায্য করতে।
                            </p>
                        </div>
                        
                        <button class="w-full btn-primary text-white py-4 rounded-lg font-bold text-lg">
                            অর্ডার করুন ৳ 410.00
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-8 px-4">
        <div class="max-w-5xl mx-auto text-center">
            <div class="flex flex-wrap justify-center gap-6 mb-4 text-sm">
                <a href="#" class="hover:text-blue-400 transition">Refund Policy</a>
                <a href="#" class="hover:text-blue-400 transition">Privacy Policy</a>
                <a href="#" class="hover:text-blue-400 transition">Terms & Conditions</a>
            </div>
            <p class="text-sm text-gray-400">Copyright © 2024 Megagami. Designed by <span class="text-blue-400">Mahbub IT BD</span></p>
        </div>
    </footer>

</body>
</html>