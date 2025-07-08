# RNJ E-commerce Platform

## Overview

RNJ is a bilingual (Arabic/English) e-commerce platform specifically designed for women's fashion retail. The application supports multiple Gulf currencies, international shipping, and features a comprehensive admin dashboard. It's built with modern web technologies including React, TypeScript, Express, and PostgreSQL.

## User Preferences

Preferred communication style: Simple, everyday language.

## System Architecture

### Technology Stack
- **Frontend**: React 18 with TypeScript, Tailwind CSS for styling
- **Backend**: Express.js with TypeScript
- **Database**: PostgreSQL with Drizzle ORM (falls back to in-memory storage)
- **Authentication**: JWT-based authentication with bcrypt password hashing
- **Payment Processing**: Stripe integration for secure payments
- **Build Tools**: Vite for development and production builds
- **UI Components**: Radix UI components with shadcn/ui styling

### Architectural Decisions
- **Monorepo Structure**: Single repository with client, server, and shared code
- **Type Safety**: Full TypeScript implementation across all layers
- **Context-based State Management**: React Context for auth, cart, language, and currency
- **API-first Design**: RESTful API with consistent error handling
- **Responsive Design**: Mobile-first approach with Tailwind CSS breakpoints

## Key Components

### Frontend Architecture
- **React Context Providers**: AuthProvider, LanguageProvider, CartProvider, CurrencyProvider
- **React Query**: Server state management and caching
- **Wouter**: Lightweight routing library
- **Form Handling**: React Hook Form with Zod validation
- **Internationalization**: Custom i18n implementation with Arabic RTL support

### Backend Architecture
- **Express Server**: RESTful API with middleware for authentication and error handling
- **Storage Layer**: Abstracted storage interface supporting both PostgreSQL and in-memory storage
- **Service Layer**: EmailService and InvoiceService for business logic
- **Security**: JWT authentication, bcrypt password hashing, CORS configuration

### Database Schema
- **Users**: Authentication and profile information
- **Products**: Multilingual product catalog with images, pricing, and inventory
- **Orders**: Order management with tracking and status updates
- **Cart Items**: Shopping cart functionality
- **Analytics**: Event tracking for business insights

## Data Flow

### User Authentication
1. User registers/logs in through frontend forms
2. Backend validates credentials and generates JWT token
3. Token stored in localStorage and included in API requests
4. Protected routes check authentication status

### Shopping Cart
1. Cart items stored per user in database
2. Real-time updates through React Context
3. Persistent across sessions
4. Synchronized with backend on all operations

### Order Processing
1. Checkout form collects shipping information
2. Stripe payment processing with secure token handling
3. Order created in database with tracking number
4. Email confirmation sent to user
5. Admin dashboard for order management

### Analytics
1. Page views tracked automatically
2. User interactions logged to database
3. Real-time analytics dashboard
4. Google Analytics integration (optional)

## External Dependencies

### Required Services
- **Stripe**: Payment processing (requires STRIPE_SECRET_KEY and VITE_STRIPE_PUBLIC_KEY)
- **PostgreSQL**: Database (optional - falls back to in-memory storage)

### Optional Services
- **Google Analytics**: User tracking (requires VITE_GA_MEASUREMENT_ID)
- **Email Service**: Order confirmations (currently console logging)

### Development Dependencies
- **Development Environment**: Local development setup with modern tooling
- **ESBuild**: Server-side bundling
- **Drizzle Kit**: Database migrations and schema management

## Deployment Strategy

### Platform Support
- **Railway**: Primary deployment platform with railway.json configuration
- **Vercel**: Alternative deployment with vercel.json configuration
- **Netlify**: Static deployment option with netlify.toml
- **Docker**: Containerized deployment with Dockerfile

### Environment Configuration
- **Development**: Uses Vite dev server with hot reload
- **Production**: Built with Vite and served by Express
- **Environment Variables**: Comprehensive .env.example with all required keys

### Build Process
1. Frontend built with Vite to dist/public
2. Backend bundled with ESBuild to dist/
3. Database migrations applied with Drizzle
4. Health checks implemented for monitoring

### Key Features
- **Bilingual Support**: Complete Arabic/English localization with RTL support
- **Multi-currency**: Support for all Gulf currencies with real-time conversion
- **Admin Dashboard**: Comprehensive management interface
- **Responsive Design**: Mobile-first approach with Tailwind breakpoints
- **Payment Integration**: Secure Stripe payment processing
- **Analytics**: Built-in tracking with Google Analytics integration
- **SEO Optimized**: Proper meta tags and structured data

The application is designed to be production-ready with proper error handling, security measures, and scalability considerations. The modular architecture allows for easy extension and maintenance.