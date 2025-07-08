# دليل النشر - RNJ E-commerce Platform

## متطلبات التشغيل

### المتطلبات الأساسية
- Node.js 20 أو أحدث
- PostgreSQL database
- متغيرات البيئة المطلوبة

### متغيرات البيئة
انسخ الملف `.env.example` إلى `.env` وقم بتعديل القيم:

```bash
cp .env.example .env
```

## طرق النشر

### 1. Vercel (الأسرع والأسهل)

```bash
# تثبيت Vercel CLI
npm i -g vercel

# نشر التطبيق
vercel --prod
```

**الخطوات:**
1. رفع الملفات إلى GitHub
2. ربط المشروع بـ Vercel
3. إضافة متغيرات البيئة في dashboard
4. النشر التلقائي عند كل commit

### 2. Railway (مناسب للمطورين)

```bash
# تثبيت Railway CLI
npm i -g @railway/cli

# تسجيل الدخول
railway login

# نشر التطبيق
railway up
```

**الخطوات:**
1. إنشاء حساب على Railway
2. إنشاء PostgreSQL database
3. نشر التطبيق مع railway up
4. إضافة متغيرات البيئة

### 3. Render (مجاني للبداية)

**الخطوات:**
1. رفع الملفات إلى GitHub
2. إنشاء حساب على Render
3. إنشاء PostgreSQL database
4. إنشاء Web Service وربطه بـ GitHub
5. إضافة متغيرات البيئة

### 4. Netlify (للـ Frontend فقط)

**ملاحظة:** Netlify يدعم الـ Frontend فقط، ستحتاج لنشر الـ Backend منفصلاً

### 5. DigitalOcean/AWS/Azure (للمتقدمين)

**باستخدام Docker:**
```bash
# بناء الـ Docker image
docker build -t rnj-ecommerce .

# تشغيل الـ container
docker run -p 5000:5000 --env-file .env rnj-ecommerce
```

## إعداد قاعدة البيانات

### إنشاء الجداول
```bash
npm run migrate
```

### إعداد البيانات الأولية
سيتم إنشاء المنتجات التجريبية تلقائياً عند أول تشغيل.

## البنية المُجمعة

بعد تشغيل `npm run build`:

```
dist/
├── index.js          # Server bundle
├── assets/          # Frontend assets
├── index.html       # Main HTML file
└── static/          # Static files
```

## المتغيرات المطلوبة للإنتاج

```bash
# أساسية
DATABASE_URL=postgresql://user:pass@host:port/db
NODE_ENV=production
PORT=5000

# اختيارية
JWT_SECRET=your-jwt-secret
SESSION_SECRET=your-session-secret
CORS_ORIGIN=https://your-domain.com
```

## فحص الصحة

التطبيق يوفر endpoint للفحص:
- `GET /api/health` - فحص حالة الخادم
- `GET /api/db-health` - فحص حالة قاعدة البيانات

## الحماية والأمان

### تم تطبيق:
- CORS protection
- Rate limiting
- Input validation
- SQL injection protection
- XSS protection

### يُنصح بإضافة:
- SSL certificate
- WAF (Web Application Firewall)
- CDN للأصول الثابتة
- Database backups

## المراقبة والسجلات

### السجلات المتاحة:
- HTTP requests
- Database queries
- Authentication events
- Error tracking

### أدوات المراقبة الموصى بها:
- Sentry (للأخطاء)
- LogRocket (لتجربة المستخدم)
- New Relic (للأداء)

## الدعم والصيانة

### النسخ الاحتياطي:
- نسخ احتياطي يومي لقاعدة البيانات
- نسخ احتياطي للملفات المرفوعة

### التحديثات:
- تحديثات أمان شهرية
- تحديثات الميزات حسب الحاجة

## استكشاف الأخطاء

### مشاكل شائعة:

1. **خطأ في قاعدة البيانات**
   ```bash
   # فحص الاتصال
   psql $DATABASE_URL -c "SELECT 1"
   ```

2. **خطأ في البناء**
   ```bash
   # تنظيف وإعادة البناء
   rm -rf dist node_modules
   npm install
   npm run build
   ```

3. **خطأ في المتغيرات**
   ```bash
   # فحص المتغيرات
   printenv | grep -E "(DATABASE|NODE|PORT)"
   ```

## الدعم الفني

للحصول على المساعدة:
1. فحص السجلات أولاً
2. التأكد من متغيرات البيئة
3. فحص حالة قاعدة البيانات
4. إعادة تشغيل الخدمة

---

**ملاحظة:** هذا التطبيق مُحسّن للأداء العالي ومصمم لتحمل الأحمال الكبيرة مع قابلية التوسع.