# SPLM App (Sales Program & Logistics Monitoring)

Proyek ini siap untuk eksperimen dengan **Google AI Studio**.

## 🚀 Langkah Setup

1. **Install Dependencies**:
```bash
flutter pub get
```

2. **Setup Firebase**:
   - Buka Firebase Console.
   - Buat project baru, tambahkan aplikasi Android/iOS.
   - Download `google-services.json` (Android) dan `GoogleService-Info.plist` (iOS).
   - Letakkan di folder `android/app/` dan `ios/Runner/`.
   - Uncomment baris `await Firebase.initializeApp();` di `lib/main.dart`.

3. **Setup Google AI Studio**:
   - Buka Google AI Studio.
   - Buat API Key baru.
   - Buka file `lib/services/ai_service.dart`.
   - Ganti `'YOUR_GOOGLE_AI_STUDIO_API_KEY'` dengan API Key Anda.

4. **Jalankan Aplikasi**:
```bash
flutter run
```

## 📁 Struktur Fitur
- `lib/services/ai_service.dart`: Integrasi Gemini Pro Vision untuk validasi foto laporan.
- `lib/services/auth_service.dart`: Autentikasi Firebase.
- `lib/features/`: UI Screen (Login, Dashboard, dll).

## 🔄 Push ke GitHub
Setelah mengekstrak/men-generate project ini, jalankan:
```bash
git init
git add .
git commit -m "Initial commit: SPLM Flutter project with AI Studio integration"
git branch -M main
git remote add origin https://github.com/RidzBuilder/splm_app.git
git push -u origin main
```
