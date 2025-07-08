# 🚀 دليل النشر على Railway

## متطلبات النشر

### 1. إنشاء حساب Railway
- انتقل إلى [railway.app](https://railway.app)
- سجل باستخدام GitHub أو Google
- **مجاني تماماً** للبداية

### 2. تثبيت Railway CLI
```bash
npm install -g @railway/cli
```

## 📦 النشر السريع

### الطريقة الأولى - النشر التلقائي
```bash
# تشغيل سكريبت النشر
./railway-deploy.sh
```

### الطريقة الثانية - النشر اليدوي
```bash
# تسجيل الدخول
railway login

# إنشاء مشروع جديد
railway new

# إضافة PostgreSQL
railway add postgresql

# تعيين متغيرات البيئة
railway variables set NODE_ENV=production
railway variables set PORT=5000

# النشر
railway up
```

## ⚙️ الملفات المعدة للنشر

### ✅ ملفات التكوين الجاهزة:
- `railway.json` - تكوين Railway
- `nixpacks.toml` - إعدادات البناء
- `railway-deploy.sh` - سكريبت النشر
- `.env.example` - مثال على المتغيرات

### ✅ الإعدادات التلقائية:
- **Node.js 20** - تم التكوين
- **PostgreSQL** - سيتم إضافته تلقائياً
- **SSL** - مجاني ومفعل
- **Health Checks** - `/api/health`

## 🔧 متغيرات البيئة المطلوبة

Railway سيوفر تلقائياً:
- `DATABASE_URL` - رابط قاعدة البيانات
- `PORT` - المنفذ (5000)
- `NODE_ENV` - production
- `RAILWAY_ENVIRONMENT` - production

## 📋 أوامر Railway المفيدة

```bash
# فتح لوحة التحكم
railway open

# مشاهدة السجلات
railway logs

# إعداد نطاق مخصص
railway domain

# مشاهدة المتغيرات
railway variables

# إعادة النشر
railway up --detach
```

## 🌐 بعد النشر

### 1. التحقق من الصحة
```bash
# فحص التطبيق
curl https://your-app.railway.app/api/health

# فحص قاعدة البيانات
curl https://your-app.railway.app/api/db-health
```

### 2. إعداد النطاق
- في لوحة التحكم: Settings > Domains
- أضف نطاقك المخصص
- DNS سيتم تكوينه تلقائياً

### 3. مراقبة التطبيق
- **Logs**: لمشاهدة السجلات
- **Metrics**: لمراقبة الأداء
- **Deployments**: لإدارة النشر

## 🔍 استكشاف الأخطاء

### التطبيق لا يعمل:
```bash
# فحص السجلات
railway logs

# فحص المتغيرات
railway variables

# إعادة النشر
railway up --detach
```

### مشاكل قاعدة البيانات:
```bash
# التحقق من DATABASE_URL
railway variables | grep DATABASE_URL

# اختبار الاتصال
railway run node -e "console.log(process.env.DATABASE_URL)"
```

## 💡 نصائح للتحسين

### 1. المراقبة المستمرة
- استخدم `railway logs --follow` لمراقبة مستمرة
- راقب استخدام الذاكرة والمعالج

### 2. النسخ الاحتياطية
- Railway يحفظ نسخ احتياطية لقاعدة البيانات تلقائياً
- يمكنك تصدير البيانات من لوحة التحكم

### 3. التوسع
- يمكنك ترقية الخطة عند الحاجة
- زيادة الذاكرة والمعالج حسب الاستخدام

## 📞 الدعم

### Railway Support:
- [المستندات](https://docs.railway.app)
- [Discord](https://discord.gg/railway)
- [GitHub](https://github.com/railwayapp)

### مجتمع Railway:
- [Templates](https://railway.app/templates)
- [Examples](https://github.com/railwayapp/examples)

---

## 🎯 الخطوات التالية

1. **النشر**: `./railway-deploy.sh`
2. **التحقق**: `railway open`
3. **اختبار**: زيارة الرابط
4. **النطاق**: إعداد النطاق المخصص
5. **المراقبة**: `railway logs --follow`

**🚀 التطبيق جاهز للنشر على Railway!**