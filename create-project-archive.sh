#!/bin/bash

# إنشاء ملف مضغوط لمشروع RNJ
echo "إنشاء ملف مضغوط لمشروع RNJ..."

# إنشاء مجلد مؤقت
mkdir -p /tmp/rnj-project

# نسخ الملفات المطلوبة
cp -r client /tmp/rnj-project/
cp -r server /tmp/rnj-project/
cp -r shared /tmp/rnj-project/
cp -r scripts /tmp/rnj-project/

# نسخ ملفات التكوين
cp package.json /tmp/rnj-project/
cp package-lock.json /tmp/rnj-project/
cp tsconfig.json /tmp/rnj-project/
cp tsconfig.server.json /tmp/rnj-project/
cp tailwind.config.ts /tmp/rnj-project/
cp postcss.config.js /tmp/rnj-project/
cp vite.config.ts /tmp/rnj-project/
cp components.json /tmp/rnj-project/
cp drizzle.config.ts /tmp/rnj-project/

# نسخ ملفات النشر
cp railway.json /tmp/rnj-project/
cp railway.toml /tmp/rnj-project/
cp vercel.json /tmp/rnj-project/
cp netlify.toml /tmp/rnj-project/
cp Dockerfile /tmp/rnj-project/
cp render.yaml /tmp/rnj-project/
cp nixpacks.toml /tmp/rnj-project/

# نسخ ملفات التوثيق
cp README.md /tmp/rnj-project/
cp LICENSE /tmp/rnj-project/
cp .gitignore /tmp/rnj-project/
cp .env.example /tmp/rnj-project/
cp ARABIC_DEPLOYMENT_GUIDE.md /tmp/rnj-project/
cp ADMIN_ACCESS_GUIDE.md /tmp/rnj-project/
cp PROJECT_DOWNLOAD.md /tmp/rnj-project/
cp INSTALL_GUIDE.md /tmp/rnj-project/
cp GITHUB_SETUP.md /tmp/rnj-project/
cp RESPONSIVE_DESIGN_GUIDE.md /tmp/rnj-project/
cp DEPLOYMENT.md /tmp/rnj-project/
cp RAILWAY_SETUP.md /tmp/rnj-project/
cp QUICK_DEPLOY.md /tmp/rnj-project/
cp UPLOAD_TO_RAILWAY.md /tmp/rnj-project/
cp download-instructions.txt /tmp/rnj-project/

# إنشاء الملف المضغوط
cd /tmp
tar -czf rnj-project.tar.gz rnj-project/
zip -r rnj-project.zip rnj-project/

echo "تم إنشاء الملفات المضغوطة:"
echo "- rnj-project.tar.gz"
echo "- rnj-project.zip"
echo "في مجلد /tmp/"

ls -lah /tmp/rnj-project.*