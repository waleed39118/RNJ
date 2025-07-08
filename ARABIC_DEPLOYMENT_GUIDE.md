# دليل رفع تطبيق RNJ للاستضافة - باللغة العربية

## 🚀 طرق الاستضافة المختلفة

### 1. استضافة Railway (الأسهل والموصى بها)

#### خطوات الرفع على Railway:
1. **إنشاء حساب:**
   - اذهب إلى https://railway.app
   - قم بإنشاء حساب جديد أو سجل دخول

2. **رفع الكود:**
   - ارفع مشروعك على GitHub أولاً
   - في Railway اختر "Deploy from GitHub repo"
   - اختر مستودع مشروعك

3. **إعداد متغيرات البيئة:**
   اذهب إلى Settings → Variables وأضف:
   ```
   STRIPE_SECRET_KEY=sk_test_xxxxx
   VITE_STRIPE_PUBLIC_KEY=pk_test_xxxxx
   VITE_GA_MEASUREMENT_ID=G-XXXXXXXXXX
   SESSION_SECRET=مفتاح_سري_طويل_وعشوائي
   ```

4. **الحصول على رابط الموقع:**
   - بعد النشر، ستحصل على رابط مثل: `your-app.railway.app`

### 2. استضافة Vercel (للمواقع الثابتة)

#### خطوات الرفع على Vercel:
1. **إنشاء حساب:**
   - اذهب إلى https://vercel.com
   - سجل دخول بحساب GitHub

2. **رفع المشروع:**
   - اختر "Import Project"
   - اختر مستودع مشروعك من GitHub
   - Vercel سيقوم بالنشر تلقائياً

3. **إعداد متغيرات البيئة:**
   - اذهب إلى Settings → Environment Variables
   - أضف نفس المتغيرات المذكورة أعلاه

### 3. استضافة Netlify

#### خطوات الرفع على Netlify:
1. **اذهب إلى:** https://netlify.com
2. **اسحب ملف ZIP** للمشروع إلى صفحة Netlify
3. **أو اربط بـ GitHub** واختر المستودع
4. **أضف متغيرات البيئة** في Site Settings

## 🔧 إعداد متغيرات البيئة المطلوبة

### للمدفوعات (Stripe):
```
STRIPE_SECRET_KEY=sk_test_أو_sk_live_
VITE_STRIPE_PUBLIC_KEY=pk_test_أو_pk_live_
```

### للتحليلات (Google Analytics):
```
VITE_GA_MEASUREMENT_ID=G-XXXXXXXXXX
```

### للأمان:
```
SESSION_SECRET=مفتاح_سري_طويل_وعشوائي_لا_يقل_عن_32_حرف
```

### لقاعدة البيانات (اختياري):
```
DATABASE_URL=postgresql://user:password@host:5432/database
```

## 👤 كيفية الدخول على صفحة الإدارة

### 1. إنشاء حساب إداري:
1. **افتح موقعك** على الرابط الجديد
2. **اذهب إلى:** `yoursite.com/register`
3. **سجل حساب جديد** بالبيانات التالية:
   - الاسم الأول والأخير
   - البريد الإلكتروني
   - كلمة مرور قوية

### 2. الوصول للوحة الإدارة:
1. **سجل دخولك** بالحساب المُنشأ
2. **اذهب إلى:** `yoursite.com/admin/dashboard`
3. **أو انقر على** "لوحة الإدارة" في القائمة

### 3. ميزات لوحة الإدارة:

#### إدارة المنتجات:
- إضافة منتجات جديدة
- تعديل الأسعار والأوصاف
- إدارة المخزون والصور

#### إدارة الطلبات:
- عرض جميع الطلبات
- تحديث حالة الطلبات
- طباعة الفواتير

#### التحليلات والإحصائيات:
- مبيعات يومية وشهرية
- أكثر المنتجات مبيعاً
- إحصائيات الزوار

#### إدارة نظام الدفع:
- مراقبة حالة Stripe
- إعداد طرق الدفع
- عرض المعاملات

## 🌐 أمثلة لروابط الموقع بعد النشر

### Railway:
```
https://your-app-name.railway.app
https://your-app-name.railway.app/admin/dashboard
```

### Vercel:
```
https://your-app-name.vercel.app
https://your-app-name.vercel.app/admin/dashboard
```

### Netlify:
```
https://your-app-name.netlify.app
https://your-app-name.netlify.app/admin/dashboard
```

## 🔑 الحصول على مفاتيح API

### مفاتيح Stripe:
1. **اذهب إلى:** https://dashboard.stripe.com/apikeys
2. **انسخ المفاتيح:**
   - Publishable key (يبدأ بـ pk_)
   - Secret key (يبدأ بـ sk_)

### Google Analytics:
1. **اذهب إلى:** https://analytics.google.com
2. **إنشاء خاصية جديدة**
3. **احصل على Measurement ID** (يبدأ بـ G-)

## ⚙️ إعدادات إضافية

### تخصيص النطاق:
- في Railway: Settings → Domains
- في Vercel: Settings → Domains
- في Netlify: Site Settings → Domain Management

### إعداد HTTPS:
- جميع المنصات توفر HTTPS تلقائياً
- لا حاجة لإعداد إضافي

### النسخ الاحتياطية:
- استخدم GitHub لحفظ الكود
- اعمل نسخة احتياطية من قاعدة البيانات دورياً

## 🚨 نصائح مهمة

### الأمان:
- احتفظ بمفاتيح API سرية
- استخدم كلمات مرور قوية
- فعّل المصادقة الثنائية

### الأداء:
- ضغط الصور قبل الرفع
- استخدم CDN للمحتوى الثابت
- راقب سرعة الموقع

### الصيانة:
- حدّث الحزم دورياً
- راقب السجلات للأخطاء
- اختبر المدفوعات دورياً

## 📞 الدعم الفني

### إذا واجهت مشاكل:
1. تحقق من سجلات الأخطاء
2. راجع إعدادات متغيرات البيئة
3. تأكد من صحة مفاتيح API
4. اختبر الموقع محلياً أولاً

---

**ملاحظة:** جميع هذه المنصات توفر طبقة مجانية كافية لبدء المشروع