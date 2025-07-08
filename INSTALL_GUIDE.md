# RNJ E-commerce - Installation Guide

## 📋 Prerequisites

Before installing, ensure you have:
- **Node.js** (v18 or higher) - Download from https://nodejs.org/
- **npm** (comes with Node.js) or **yarn** package manager
- **Git** (optional, for version control)
- **Code editor** (VS Code recommended)

## 🚀 Installation Steps

### Step 1: Extract Project Files
1. Extract the downloaded ZIP file to your desired directory
2. Open terminal/command prompt in the extracted folder

### Step 2: Install Dependencies
```bash
# Install all dependencies
npm install

# Or if you prefer yarn
yarn install
```

### Step 3: Environment Setup
1. Create a `.env` file in the root directory:
```env
# Required for session management
SESSION_SECRET=your_random_secret_key_here_make_it_long_and_secure

# Stripe Payment Gateway (get from https://dashboard.stripe.com/apikeys)
STRIPE_SECRET_KEY=sk_test_your_stripe_secret_key_here
VITE_STRIPE_PUBLIC_KEY=pk_test_your_stripe_public_key_here

# Google Analytics (optional - get from Google Analytics dashboard)
VITE_GA_MEASUREMENT_ID=G-XXXXXXXXXX

# Database (optional - uses in-memory storage by default)
DATABASE_URL=postgresql://username:password@localhost:5432/rnj_db
```

### Step 4: Start the Application
```bash
# Start development server (includes both frontend and backend)
npm run dev
```

### Step 5: Access Your Application
- Open your browser and go to: http://localhost:5000
- The application will be running with hot reload enabled

## 🔧 Configuration Details

### Payment Gateway (Stripe)
1. **Create Stripe Account**: Go to https://stripe.com and create an account
2. **Get API Keys**: 
   - Visit https://dashboard.stripe.com/apikeys
   - Copy your **Publishable key** (starts with `pk_`)
   - Copy your **Secret key** (starts with `sk_`)
3. **Add to Environment**: Add both keys to your `.env` file
4. **Test Cards**: Use these test cards for development:
   - Success: `4242 4242 4242 4242`
   - Declined: `4000 0000 0000 0002`

### Google Analytics (Optional)
1. **Create GA4 Property**: Go to https://analytics.google.com/
2. **Get Measurement ID**: 
   - Navigate to Admin → Property → Data Streams
   - Select your web stream
   - Copy the Measurement ID (starts with `G-`)
3. **Add to Environment**: Add `VITE_GA_MEASUREMENT_ID` to your `.env` file

### Database (Optional)
The application uses in-memory storage by default. For persistent data:
1. **Install PostgreSQL**: Download from https://postgresql.org/
2. **Create Database**: Create a new database named `rnj_db`
3. **Add Connection String**: Add `DATABASE_URL` to your `.env` file
4. **Run Migrations**: The app will automatically create tables on first run

## 🎯 First Time Setup

### 1. Create Admin Account
1. Start the application
2. Go to http://localhost:5000/register
3. Create your admin account
4. Access admin dashboard at `/admin/dashboard`

### 2. Test Payment System
1. Add some products to cart
2. Go to checkout
3. Use test card: `4242 4242 4242 4242`
4. Complete the test transaction

### 3. Configure Currencies
The app automatically detects user location and sets appropriate currency. All Gulf currencies are supported:
- Bahraini Dinar (BHD) - Default
- Kuwaiti Dinar (KWD)
- Saudi Riyal (SAR)
- UAE Dirham (AED)
- Qatari Riyal (QAR)
- Omani Rial (OMR)
- US Dollar (USD)

## 🐛 Troubleshooting

### Common Issues

**Port Already in Use**
```bash
# Kill process using port 5000
npx kill-port 5000
# Or use a different port
PORT=3000 npm run dev
```

**Dependencies Installation Failed**
```bash
# Clear npm cache
npm cache clean --force
# Delete node_modules and reinstall
rm -rf node_modules package-lock.json
npm install
```

**Database Connection Error**
- Ensure PostgreSQL is running
- Check DATABASE_URL format
- Verify database exists
- The app will fallback to in-memory storage if database fails

**Payment Gateway Not Working**
- Check Stripe API keys are correct
- Ensure keys are in .env file
- Verify VITE_STRIPE_PUBLIC_KEY starts with `pk_`
- Verify STRIPE_SECRET_KEY starts with `sk_`

### Development Mode Issues

**Hot Reload Not Working**
- Restart the development server
- Check file permissions
- Ensure no syntax errors in code

**Build Fails**
```bash
# Clear build cache
npm run build --force
# Or try
rm -rf dist .vite
npm run build
```

## 📁 Project Structure Overview

```
your-project/
├── client/                 # Frontend React app
│   ├── src/
│   │   ├── components/     # UI components
│   │   ├── pages/          # Application pages
│   │   ├── contexts/       # React contexts
│   │   ├── hooks/          # Custom hooks
│   │   └── lib/            # Utilities
│   └── index.html
├── server/                 # Backend Express app
│   ├── routes.ts           # API endpoints
│   ├── storage.ts          # Data layer
│   └── index.ts            # Server entry
├── shared/                 # Shared code
│   └── schema.ts           # Database schema
├── .env                    # Environment variables
├── package.json            # Dependencies
└── README.md              # Documentation
```

## 🚀 Production Deployment

### Build for Production
```bash
npm run build
```

### Start Production Server
```bash
npm start
```

### Deploy to Railway (Recommended)
1. Push code to GitHub
2. Connect Railway to your repository
3. Railway will auto-deploy with included configuration

### Deploy to Other Platforms
- **Vercel**: Uses `vercel.json` configuration
- **Netlify**: Uses `netlify.toml` configuration
- **Docker**: Uses included `Dockerfile`

## 📊 Available Scripts

```bash
npm run dev          # Start development server
npm run build        # Build for production
npm start           # Start production server
npm run type-check  # Run TypeScript checks
npm run db:push     # Push database changes (if using DB)
```

## 🎨 Customization

### Modify Colors and Theme
Edit `client/src/index.css` to change:
- Brand colors
- Typography
- Spacing

### Add Products
Edit `server/storage.ts` to add/modify:
- Product catalog
- Categories
- Pricing

### Modify Translations
Edit `client/src/lib/i18n.ts` to change:
- Text content
- Languages
- Translations

## 📞 Support

If you encounter issues:
1. Check this guide first
2. Review console logs for errors
3. Verify environment variables
4. Test with minimal configuration
5. Check network connectivity for external services

## ✅ Success Checklist

After installation, verify:
- [ ] Application loads at http://localhost:5000
- [ ] You can create an account
- [ ] Products display correctly
- [ ] Cart functionality works
- [ ] Payment page loads (even without Stripe keys)
- [ ] Admin dashboard is accessible
- [ ] No critical errors in console

Your RNJ e-commerce application is now ready for development and customization!