# دليل رفع مشروع RNJ على GitHub

## 🚀 خطوات رفع المشروع على GitHub

### الخطوة 1: إعداد المشروع محلياً

1. **تحميل ملفات المشروع:**
   - حمل جميع ملفات المشروع من بيئة التطوير
   - استخرج الملفات في مجلد على جهازك

2. **فتح Terminal أو Command Prompt:**
   ```bash
   cd path/to/your/project
   ```

### الخطوة 2: إعداد Git

1. **تهيئة Git:**
   ```bash
   git init
   ```

2. **إعداد المعلومات الشخصية:**
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "your.email@example.com"
   ```

### الخطوة 3: إنشاء Repository على GitHub

1. **اذهب إلى GitHub:**
   - سجل دخول على https://github.com
   - انقر على "New repository"

2. **إعداد Repository:**
   - Repository name: `rnj-ecommerce`
   - Description: `متجر RNJ للأزياء النسائية - Bilingual E-commerce Platform`
   - اختر Public أو Private حسب الحاجة
   - لا تختر "Add a README file" (لأنه موجود بالفعل)

### الخطوة 4: ربط المشروع بـ GitHub

1. **إضافة جميع الملفات:**
   ```bash
   git add .
   ```

2. **عمل Commit أولي:**
   ```bash
   git commit -m "Initial commit: RNJ E-commerce Platform"
   ```

3. **إضافة Remote Origin:**
   ```bash
   git remote add origin https://github.com/username/rnj-ecommerce.git
   ```

4. **رفع المشروع:**
   ```bash
   git branch -M main
   git push -u origin main
   ```

### الخطوة 5: التحقق من الرفع

1. **تحديث صفحة GitHub**
2. **تأكد من وجود جميع الملفات**
3. **راجع ملف README.md**

## 📋 الملفات المشمولة في GitHub

### الملفات الأساسية:
- ✅ `README.md` - وصف المشروع
- ✅ `package.json` - تبعيات المشروع
- ✅ `.gitignore` - ملفات مستثناة
- ✅ `.env.example` - نموذج متغيرات البيئة

### مجلدات المشروع:
- ✅ `client/` - التطبيق الأمامي
- ✅ `server/` - الخادم الخلفي
- ✅ `shared/` - الكود المشترك
- ✅ `scripts/` - نصوص النشر

### ملفات التوثيق:
- ✅ `ARABIC_DEPLOYMENT_GUIDE.md` - دليل النشر بالعربية
- ✅ `ADMIN_ACCESS_GUIDE.md` - دليل الوصول للإدارة
- ✅ `PROJECT_DOWNLOAD.md` - دليل التحميل
- ✅ `INSTALL_GUIDE.md` - دليل التثبيت

### ملفات النشر:
- ✅ `railway.json` - إعداد Railway
- ✅ `vercel.json` - إعداد Vercel
- ✅ `netlify.toml` - إعداد Netlify
- ✅ `Dockerfile` - إعداد Docker

## 🔧 إعداد GitHub Actions (اختياري)

### لإضافة CI/CD:

1. **إنشاء مجلد:**
   ```bash
   mkdir -p .github/workflows
   ```

2. **إنشاء ملف workflow:**
   ```yaml
   # .github/workflows/deploy.yml
   name: Deploy to Railway
   on:
     push:
       branches: [ main ]
   jobs:
     deploy:
       runs-on: ubuntu-latest
       steps:
         - uses: actions/checkout@v2
         - name: Deploy to Railway
           uses: railway/deploy@v1
           with:
             railway_token: ${{ secrets.RAILWAY_TOKEN }}
   ```

## 🌐 بعد الرفع على GitHub

### 1. النشر على Railway:
1. اذهب إلى https://railway.app
2. انقر على "Deploy from GitHub repo"
3. اختر repository الخاص بك
4. أضف متغيرات البيئة في Railway

### 2. النشر على Vercel:
1. اذهب إلى https://vercel.com
2. انقر على "Import Project"
3. اختر repository من GitHub
4. Vercel سيقوم بالنشر تلقائياً

### 3. النشر على Netlify:
1. اذهب إلى https://netlify.com
2. انقر على "New site from Git"
3. اختر GitHub واختر repository
4. إعداد Build settings تلقائياً

## 🔑 إعداد Secrets في GitHub

### لتفعيل GitHub Actions:

1. **اذهب إلى Settings → Secrets and variables → Actions**
2. **أضف Secrets:**
   - `RAILWAY_TOKEN`
   - `STRIPE_SECRET_KEY`
   - `DATABASE_URL`

## 📱 إدارة التحديثات

### لإضافة تحديثات جديدة:

1. **تعديل الملفات محلياً**
2. **إضافة التغييرات:**
   ```bash
   git add .
   git commit -m "Update: description of changes"
   git push
   ```

### لسحب التحديثات:
```bash
git pull origin main
```

## 🔄 إدارة Branches

### لإنشاء branch جديد:
```bash
git checkout -b feature/new-feature
# عمل التغييرات المطلوبة
git add .
git commit -m "Add new feature"
git push -u origin feature/new-feature
```

### لدمج Branch:
1. إنشاء Pull Request على GitHub
2. مراجعة التغييرات
3. دمج Branch

## 📞 الدعم

### إذا واجهت مشاكل:
1. **مشاكل Git:**
   - تأكد من تثبيت Git
   - تحقق من صحة المسار
   - راجع رسائل الخطأ

2. **مشاكل GitHub:**
   - تأكد من صحة اسم المستخدم
   - تحقق من صلاحيات Repository
   - راجع إعدادات الأمان

3. **مشاكل النشر:**
   - راجع ملفات التوثيق
   - تأكد من إعداد متغيرات البيئة
   - تحقق من سجلات الأخطاء

---

**ملاحظة:** تأكد من عدم رفع ملف `.env` الحقيقي لأنه يحتوي على معلومات سرية