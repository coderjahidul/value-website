# Shobkisu E-commerce Platform

Shobkisu is a high-performance, modern e-commerce solution built with Laravel. It features a robust multi-vendor ready architecture, a premium backend dashboard refactored with Tailwind CSS, and extensive integrations for logistics and payments.

## 🚀 Key Features

- **Premium Admin Dashboard:** Real-time stats with glassmorphism design and synchronized count-up animations.
- **Logistics Integration:** Built-in support for Pathao, RedX, and Steadfast courier services.
- **Comprehensive Management:** Detailed modules for Products, Orders, Categories, Brands, and Inventory.
- **Advanced Reporting:** User-wise and status-wise order reports with export functionality.
- **Dynamic Frontend:** Highly customizable landing pages and home sections.
- **Role-Based Access Control (RBAC):** Granular permissions management via Spatie Laravel Permission.
- **Responsive Design:** Fully mobile-optimized backend and frontend interfaces.

## 🛠️ Tech Stack

- **Backend:** Laravel 9.x, PHP 8.1+
- **Frontend:** Tailwind CSS 4, Alpine.js, Blade Templates
- **Database:** MySQL
- **Build Tool:** Vite, PostCSS
- **Key Packages:**
  - `spatie/laravel-permission` (RBAC)
  - `intervention/image` (Image Processing)
  - `maatwebsite/excel` (Import/Export)
  - `stripe/stripe-php` (Payments)

## 📦 Installation Guide

### Prerequisites
Ensure you have the following installed:
- PHP ^8.1
- Composer
- Node.js & NPM
- MySQL

### Setup Steps

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd shobkisu-ecom
   ```

2. **Install Dependencies:**
   ```bash
   composer install
   npm install
   ```

3. **Environment Configuration:**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```
   *Edit `.env` to configure your database and courier credentials.*

4. **Database Setup:**
   ```bash
   php artisan migrate --seed
   ```
   *Note: If you have a `dummy-database.sql` file, you can import it directly into your MySQL database.*

5. **Symlink Storage:**
   ```bash
   php artisan storage:link
   ```

## 💻 Development Workflow

### Running Locally
To start the local development server:
```bash
php artisan serve
```

### Compiling Assets
During development:
```bash
npm run dev
```

For production build:
```bash
npm run build
```

---

**Developed & Maintained by [Nix Software](https://nixsoftware.net)**
# value-website
