# RNJ E-commerce Application - Download Package

## 📦 Project Overview

This is a complete bilingual (Arabic/English) e-commerce platform built for women's clothing, based in Bahrain with international shipping capabilities. The application includes user authentication, multi-currency support, payment processing, and comprehensive admin dashboard.

## 🚀 Quick Start Guide

### Prerequisites
- Node.js (v18 or higher)
- npm or yarn package manager
- Git (optional, for version control)

### Installation Steps

1. **Extract the project files** to your desired directory
2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Set up environment variables:**
   Create a `.env` file in the root directory with:
   ```env
   # Database (optional - uses in-memory storage by default)
   DATABASE_URL=your_database_url_here
   
   # Stripe Payment Gateway
   STRIPE_SECRET_KEY=sk_test_your_stripe_secret_key
   VITE_STRIPE_PUBLIC_KEY=pk_test_your_stripe_public_key
   
   # Google Analytics (optional)
   VITE_GA_MEASUREMENT_ID=G-XXXXXXXXXX
   
   # Session Secret
   SESSION_SECRET=your_random_session_secret_here
   ```

4. **Start the development server:**
   ```bash
   npm run dev
   ```

5. **Access your application:**
   Open http://localhost:5000 in your browser

## 🌟 Features

### Core Features
- **Bilingual Support**: Full Arabic and English localization
- **Multi-Currency**: Support for all Gulf currencies (BHD, KWD, SAR, AED, QAR, OMR, USD)
- **User Authentication**: Registration, login, and session management
- **Shopping Cart**: Real-time cart updates and persistence
- **Order Management**: Complete order processing and tracking
- **Payment Integration**: Stripe payment gateway with subscription support
- **Admin Dashboard**: Comprehensive management interface

### Technical Features
- **Modern Stack**: React + TypeScript + Express + Node.js
- **Database**: PostgreSQL with Drizzle ORM (with in-memory fallback)
- **Styling**: Tailwind CSS with custom theming
- **Analytics**: Google Analytics integration with internal tracking
- **Security**: JWT authentication, secure payment processing
- **Responsive**: Mobile-first design with RTL support

## 📁 Project Structure

```
RNJ-ecommerce/
├── client/                 # Frontend React application
│   ├── src/
│   │   ├── components/     # Reusable UI components
│   │   ├── contexts/       # React contexts (auth, cart, etc.)
│   │   ├── hooks/          # Custom React hooks
│   │   ├── lib/            # Utility functions and configurations
│   │   ├── pages/          # Application pages
│   │   └── App.tsx         # Main application component
│   ├── index.html          # HTML entry point
│   └── package.json        # Frontend dependencies
├── server/                 # Backend Express application
│   ├── middleware/         # Custom middleware
│   ├── services/           # Business logic services
│   ├── index.ts           # Server entry point
│   ├── routes.ts          # API route definitions
│   └── storage.ts         # Data storage layer
├── shared/                 # Shared types and schemas
│   └── schema.ts          # Database schema and validation
├── scripts/               # Deployment and utility scripts
├── package.json           # Root dependencies and scripts
└── README.md             # This file
```

## 🔧 Configuration

### Payment Gateway Setup
1. Create a Stripe account at https://stripe.com
2. Get your API keys from https://dashboard.stripe.com/apikeys
3. Add keys to your environment variables
4. Test with provided test card numbers

### Database Setup (Optional)
The application uses in-memory storage by default. For production:
1. Set up a PostgreSQL database
2. Add DATABASE_URL to your environment
3. Run migrations: `npm run db:push`

### Google Analytics (Optional)
1. Create a Google Analytics 4 property
2. Get your Measurement ID
3. Add VITE_GA_MEASUREMENT_ID to environment

## 🚀 Deployment

### Local Development
```bash
npm run dev          # Start development server
npm run build        # Build for production
npm start           # Start production server
```

### Production Deployment
The application is optimized for deployment on:
- Railway (recommended - includes railway.json)
- Vercel (includes vercel.json)
- Netlify (includes netlify.toml)
- Docker (includes Dockerfile)

Detailed deployment guides are available in:
- `RAILWAY_SETUP.md` - Complete Railway deployment guide
- `DEPLOYMENT.md` - General deployment instructions
- `QUICK_DEPLOY.md` - Quick deployment options

## 📊 Analytics Dashboard

Access the admin dashboard at `/admin/dashboard` after logging in with admin credentials.

Features:
- Sales analytics and performance metrics
- Product management and inventory tracking
- Order management and fulfillment
- Payment gateway monitoring
- User behavior analytics
- Revenue tracking and reporting

## 🛡️ Security Features

- JWT-based authentication
- Password hashing with bcrypt
- Secure payment processing
- Input validation and sanitization
- CSRF protection
- Rate limiting
- Environment variable protection

## 🌐 Internationalization

The application supports:
- **Languages**: English (default), Arabic
- **Currencies**: BHD, KWD, SAR, AED, QAR, OMR, USD
- **RTL Support**: Proper right-to-left layout for Arabic
- **Geolocation**: Automatic currency detection

## 📱 Responsive Design

- Mobile-first approach
- Optimized for all screen sizes
- Touch-friendly interface
- Fast loading on all devices

## 🎨 Customization

### Themes and Colors
Edit `client/src/index.css` to customize:
- Brand colors
- Typography
- Spacing and layout
- Dark mode support

### Content Management
- Product catalog in `server/storage.ts`
- Translations in `client/src/lib/i18n.ts`
- Currency settings in `client/src/lib/currencies.ts`

## 📞 Support

For technical support or questions:
1. Check the documentation files
2. Review the code comments
3. Test with the provided development tools
4. Refer to the deployment guides

## 📄 License

This project is provided as-is for your use. Please ensure you have proper licenses for any third-party services used (Stripe, Google Analytics, etc.).

## 🔄 Updates and Maintenance

- Keep dependencies updated regularly
- Monitor security advisories
- Update API keys as needed
- Backup your data regularly
- Test payment processing periodically

---

**Created**: July 2025
**Version**: 1.0.0
**Framework**: React + Express + TypeScript
**Database**: PostgreSQL with Drizzle ORM
**Payment**: Stripe Integration
**Analytics**: Google Analytics + Internal Tracking