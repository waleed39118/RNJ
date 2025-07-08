#!/bin/bash

# Railway Deployment Script for RNJ E-commerce
echo "🚀 إعداد التطبيق للنشر على Railway..."

# Check if Railway CLI is installed
if ! command -v railway &> /dev/null; then
    echo "❌ Railway CLI غير مثبت"
    echo "💡 قم بتثبيته باستخدام:"
    echo "npm install -g @railway/cli"
    exit 1
fi

echo "✅ Railway CLI موجود"

# Check if user is logged in
if ! railway whoami &> /dev/null; then
    echo "🔐 تسجيل الدخول إلى Railway..."
    railway login
fi

# Create new Railway project
echo "📦 إنشاء مشروع جديد على Railway..."
railway new

# Add PostgreSQL database
echo "🗄️ إضافة قاعدة بيانات PostgreSQL..."
railway add postgresql

# Set environment variables
echo "⚙️ تعيين متغيرات البيئة..."
railway variables set NODE_ENV=production
railway variables set PORT=5000

# Deploy the application
echo "🚀 نشر التطبيق..."
railway up

echo ""
echo "🎉 تم النشر بنجاح!"
echo ""
echo "📋 الخطوات التالية:"
echo "1. railway open - لفتح لوحة التحكم"
echo "2. railway logs - لمشاهدة السجلات"
echo "3. railway domain - لإعداد نطاق مخصص"
echo ""
echo "🔗 رابط التطبيق سيظهر في لوحة التحكم"