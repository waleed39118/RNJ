# 🚀 رفع المشروع على Railway - خطوة بخطوة

## الطريقة الأولى: رفع مباشر (الأسهل)

### 1. تسجيل الدخول إلى Railway
```bash
# تثبيت Railway CLI
npm install -g @railway/cli

# تسجيل الدخول
railway login
```

### 2. في مجلد المشروع، تشغيل الأمر:
```bash
# إنشاء مشروع جديد
railway new

# إضافة PostgreSQL
railway add postgresql

# رفع المشروع
railway up
```

### 3. الحصول على رابط الموقع:
```bash
railway status
```

## الطريقة الثانية: ربط مع GitHub

### 1. رفع المشروع على GitHub
```bash
# إنشاء repository جديد
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/username/rnj-ecommerce.git
git push -u origin main
```

### 2. في Railway Dashboard:
- اذهب إلى [railway.app](https://railway.app)
- اضغط "New Project"
- اختر "Deploy from GitHub repo"
- اختر المشروع الخاص بك
- اضغط "Deploy"

### 3. إضافة قاعدة البيانات:
- في Dashboard، اضغط "Add Service"
- اختر "PostgreSQL"
- سيتم الربط تلقائياً

## الطريقة الثالثة: استخدام سكريبت النشر

### 1. تشغيل السكريبت:
```bash
chmod +x railway-deploy.sh
./railway-deploy.sh
```

سيقوم السكريبت بكل شيء تلقائياً!

## 🔧 الإعدادات المطلوبة

### متغيرات البيئة (تلقائية):
- `DATABASE_URL` - رابط قاعدة البيانات
- `NODE_ENV=production`
- `PORT=5000`

### ملفات التكوين الجاهزة:
- `railway.json` - إعدادات Railway
- `nixpacks.toml` - إعدادات البناء
- `package.json` - سكريبت البناء والتشغيل

## 🌐 بعد الرفع

### 1. التحقق من الموقع:
```bash
# الحصول على الرابط
railway status

# فتح لوحة التحكم
railway open

# مشاهدة السجلات
railway logs
```

### 2. اختبار التطبيق:
- افتح الرابط في المتصفح
- تأكد من عمل التسجيل والدخول
- اختبر عربة التسوق
- تأكد من عمل لوحة التحكم

## 🎯 الميزات المفعلة تلقائياً

### ✅ بعد الرفع الناجح:
- الموقع متاح على الإنترنت
- SSL مجاني ومفعل
- قاعدة بيانات PostgreSQL جاهزة
- النسخ الاحتياطية تلقائية
- مراقبة الأداء
- إعادة التشغيل التلقائي

### ✅ الروابط الهامة:
- الموقع: `https://your-project.railway.app`
- لوحة التحكم: `https://railway.app/dashboard`
- السجلات: `railway logs`

## 🔍 استكشاف الأخطاء

### إذا فشل الرفع:
```bash
# فحص السجلات
railway logs

# إعادة النشر
railway up --detach

# فحص الإعدادات
railway variables
```

### إذا لم يعمل الموقع:
```bash
# التحقق من الصحة
curl https://your-project.railway.app/api/health

# إعادة تشغيل
railway restart
```

## 💡 نصائح مهمة

1. **التأكد من الملفات**: تأكد من وجود جميع الملفات المطلوبة
2. **الصبر**: عملية البناء قد تستغرق 2-5 دقائق
3. **السجلات**: راقب السجلات لمعرفة أي أخطاء
4. **الاختبار**: اختبر جميع الميزات بعد الرفع

## 📞 الدعم

إذا واجهت مشاكل:
- راجع السجلات: `railway logs`
- تحقق من [Railway Docs](https://docs.railway.app)
- اطلب المساعدة من [Railway Discord](https://discord.gg/railway)

**المشروع جاهز للرفع!**