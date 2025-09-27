# استخدم بايثون 3.11
FROM python:3.11-slim

# إعداد مجلد العمل
WORKDIR /app

# نسخ requirements وتثبيت المكتبات
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# نسخ باقي المشروع
COPY . .

# تعيين المتغير PORT من Fly.io (للتوافق)
ENV PORT=15028

# تشغيل التطبيق
CMD ["python", "app.py"]
