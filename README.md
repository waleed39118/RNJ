# RNJ - متجر الأزياء النسائية

## نظرة عامة

RNJ هو متجر إلكتروني متكامل للأزياء النسائية مبني بتقنيات حديثة، يدعم اللغتين العربية والإنجليزية مع دعم كامل لعملات دول الخليج والشحن الدولي.

## الميزات الرئيسية

### 🌟 الميزات الأساسية
- **دعم لغوي ثنائي**: عربي وإنجليزي مع دعم RTL
- **عملات متعددة**: جميع عملات دول الخليج (BHD, KWD, SAR, AED, QAR, OMR, USD)
- **مصادقة المستخدمين**: تسجيل وتسجيل دخول آمن
- **سلة التسوق**: تحديث فوري ومتزامن
- **إدارة الطلبات**: معالجة وتتبع شامل
- **نظام الدفع**: تكامل مع Stripe
- **لوحة إدارة**: واجهة إدارة شاملة

### 🔧 الميزات التقنية
- **تقنيات حديثة**: React + TypeScript + Express + Node.js
- **قاعدة البيانات**: PostgreSQL مع Drizzle ORM
- **التصميم**: Tailwind CSS مع ثيم مخصص
- **التحليلات**: Google Analytics مع نظام تتبع داخلي
- **الأمان**: JWT authentication ومعالجة آمنة للمدفوعات
- **متجاوب**: تصميم متوافق مع الهواتف الذكية

## 🚀 التثبيت والتشغيل

### المتطلبات الأساسية
- Node.js (v18 أو أحدث)
- npm أو yarn
- PostgreSQL (اختياري)

### خطوات التثبيت

```bash
# نسخ المشروع
git clone https://github.com/yourusername/rnj-ecommerce.git
cd rnj-ecommerce

# تثبيت التبعيات
npm install

# إعداد متغيرات البيئة
cp .env.example .env
# قم بتعديل ملف .env بالمفاتيح المطلوبة

# تشغيل في وضع التطوير
npm run dev

# أو تشغيل في وضع الإنتاج
npm run build
npm start
```

### متغيرات البيئة المطلوبة

```env
# مطلوب لإدارة الجلسات
SESSION_SECRET=your_session_secret_key

# نظام الدفع Stripe
STRIPE_SECRET_KEY=sk_test_your_stripe_secret_key
VITE_STRIPE_PUBLIC_KEY=pk_test_your_stripe_public_key

# Google Analytics (اختياري)
VITE_GA_MEASUREMENT_ID=G-XXXXXXXXXX

# قاعدة البيانات (اختياري)
DATABASE_URL=postgresql://user:password@localhost:5432/rnj_db
```

## 📁 هيكل المشروع

```
rnj-ecommerce/
├── client/                 # التطبيق الأمامي React
│   ├── src/
│   │   ├── components/     # مكونات واجهة المستخدم
│   │   ├── contexts/       # سياقات React
│   │   ├── hooks/          # خطافات مخصصة
│   │   ├── lib/            # مكتبات ووظائف مساعدة
│   │   ├── pages/          # صفحات التطبيق
│   │   └── App.tsx         # المكون الرئيسي
│   └── index.html          # نقطة دخول HTML
├── server/                 # الخادم Express
│   ├── middleware/         # وسطاء مخصصة
│   ├── services/           # خدمات العمل
│   ├── index.ts           # نقطة دخول الخادم
│   ├── routes.ts          # مسارات API
│   └── storage.ts         # طبقة البيانات
├── shared/                 # كود مشترك
│   └── schema.ts          # مخطط قاعدة البيانات
└── scripts/               # نصوص النشر
```

## 🌐 النشر

### Railway (موصى به)
1. ارفع المشروع على GitHub
2. اربط Railway بالمستودع
3. أضف متغيرات البيئة
4. النشر تلقائي

### خيارات أخرى
- **Vercel**: يستخدم `vercel.json`
- **Netlify**: يستخدم `netlify.toml`
- **Docker**: يستخدم `Dockerfile`

## 👤 الوصول للوحة الإدارة

1. **إنشاء حساب**: `/register`
2. **تسجيل الدخول**: `/login`
3. **الوصول للإدارة**: `/admin/dashboard`

### أقسام لوحة الإدارة
- إدارة المنتجات والفئات
- معالجة الطلبات والشحن
- التحليلات والإحصائيات
- إدارة التصميم والألوان
- مراقبة نظام الدفع

## 🔑 الحصول على مفاتيح API

### Stripe (للمدفوعات)
1. سجل في https://stripe.com
2. احصل على المفاتيح من https://dashboard.stripe.com/apikeys
3. أضف المفاتيح لمتغيرات البيئة

### Google Analytics (للتحليلات)
1. أنشئ حساب في https://analytics.google.com
2. احصل على Measurement ID
3. أضف المعرف لمتغيرات البيئة

## 🛡️ الأمان

- مصادقة JWT
- تشفير كلمات المرور
- معالجة آمنة للمدفوعات
- التحقق من صحة المدخلات
- حماية من CSRF

## 📱 التصميم المتجاوب

- نهج mobile-first
- متوافق مع جميع أحجام الشاشات
- واجهة سهلة الاستخدام
- سرعة تحميل عالية

## 🌍 الدعم الدولي

- **اللغات**: العربية (افتراضي)، الإنجليزية
- **العملات**: BHD, KWD, SAR, AED, QAR, OMR, USD
- **دعم RTL**: تخطيط صحيح للعربية
- **الموقع الجغرافي**: اكتشاف تلقائي للعملة

## 📊 الأوامر المتاحة

```bash
npm run dev          # تشغيل خادم التطوير
npm run build        # بناء للإنتاج
npm start           # تشغيل خادم الإنتاج
npm run type-check  # فحص TypeScript
```

## 🎨 التخصيص

### الألوان والثيم
- عدل `client/src/index.css` لتغيير الألوان
- مخطط الألوان قابل للتخصيص
- دعم الوضع الليلي

### إدارة المحتوى
- كتالوج المنتجات: `server/storage.ts`
- الترجمات: `client/src/lib/i18n.ts`
- العملات: `client/src/lib/currencies.ts`

## 🤝 المساهمة

1. Fork المشروع
2. أنشئ branch للميزة الجديدة
3. Commit التغييرات
4. Push للبرنش
5. أنشئ Pull Request

## 📄 الترخيص

هذا المشروع مُرخص تحت MIT License.

## 📞 الدعم

للدعم الفني:
- راجع ملفات التوثيق
- تحقق من سجلات الأخطاء
- اختبر محلياً قبل النشر

---

**تم الإنشاء**: يوليو 2025  
**الإصدار**: 1.0.0  
**المطور**: RNJ Development Team# RNJ
