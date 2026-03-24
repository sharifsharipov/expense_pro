# 💸 Expense Pro

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.10+-02569B?logo=flutter&logoColor=white" />
  <img src="https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart&logoColor=white" />
  <img src="https://img.shields.io/badge/Supabase-Backend-3ECF8E?logo=supabase&logoColor=white" />
  <img src="https://img.shields.io/badge/Firebase-Remote%20Config-FFCA28?logo=firebase&logoColor=black" />
  <img src="https://img.shields.io/badge/Version-1.0.0+1-success" />
</p>

> Shaxsiy moliyani boshqarish uchun zamonaviy Flutter ilovasi. Xarajatlarni kuzatish, moliyaviy maqsadlar qo'yish va investitsiyalarni boshqarish — barchasi bir joyda.

---

## 📱 Platformalar

| Platform | Holati |
|----------|--------|
| Android  | ✅ |
| iOS      | ✅ |
| Web      | ✅ |
| macOS    | ✅ |
| Linux    | ✅ |
| Windows  | ✅ |

---

## 🏗️ Arxitektura

Loyiha **Clean Architecture** + **BLoC pattern** asosida qurilgan:

```
Presentation Layer (Pages + Blocs)
        ↓
Domain Layer (Entities + UseCases + Repositories)
        ↓
Data Layer (Models + DataSources + Mappers + RepoImpls)
        ↓
Supabase / Firebase / Hive
```

Har bir feature quyidagi tuzilmaga ega:

```
feature/
  ├── data/
  │   ├── data_source/
  │   ├── mapper/
  │   ├── models/
  │   └── repositories/
  ├── domain/
  │   ├── entities/
  │   ├── repositories/    ← abstract
  │   └── usecases/
  └── presentation/
      ├── blocs/
      └── pages/
```

---

## ✨ Asosiy Funksiyalar

| Feature | Tavsif |
|---------|--------|
| 🔐 **Auth** | Kirish va ro'yxatdan o'tish (OTP SMS) |
| 🏠 **Home** | Dashboard — xarajatlar va balans ko'rinishi |
| 💰 **Finance** | Moliyaviy hisobotlar va tahlil |
| 🎯 **Goals** | Moliyaviy maqsadlar va kuzatuv |
| ➕ **Add Expense** | Tezkor xarajat qo'shish |
| 👤 **Profile** | Profil, sozlamalar, yutuqlar, odatlar kuzatuvchisi, obunalar, avtomatlashtirish va boshqalar |

---

## 🛠️ Texnologiyalar

### State Management
- `flutter_bloc ^9.1.1` · `bloc ^9.1.0` · `bloc_concurrency ^0.3.0`

### Navigatsiya
- `go_router ^17.0.0` — `StatefulShellRoute` bilan 4 ta tab

### Backend & Network
- `supabase_flutter ^2.12.0` — asosiy backend
- `dio ^5.9.0` — HTTP client
- Firebase — Messaging, Crashlytics, Remote Config

### Lokal Saqlash
- `hive ^2.2.3` + `hive_flutter ^1.1.0`

### Localization
- `intl ^0.20.2` + `flutter_localizations`
- Qo'llab-quvvatlanadigan tillar: 🇺🇿 **O'zbek** · 🇷🇺 **Ruscha** · 🇬🇧 **Inglizcha** · 🇫🇷 **Fransuzcha**

### UI / Dizayn
- `flutter_svg` · `cached_network_image` · `shimmer` · `pinput` · `scale_button` · `gap`
- Fontlar: **Manrope** (400/500/700) · **Poppins** (500/700)
- Light va Dark mavzu qo'llab-quvvatlanadi

### Code Generation
- `freezed ^3.2.3` · `json_serializable ^6.13.0` · `injectable_generator ^2.9.1` · `flutter_gen_runner ^5.12.0`

---

## 🚀 Ishga tushirish

### Talablar
- Flutter SDK `>=3.10.0 <4.0.0`
- Dart SDK `>=3.0.0`

### O'rnatish

```bash
# Reponi klonlash
git clone https://github.com/sharifsharipov/expense_pro.git
cd expense_pro

# Dependency'larni o'rnatish
flutter pub get

# Kodni generatsiya qilish
dart run build_runner build --delete-conflicting-outputs

# Ilovani ishga tushirish
flutter run
```

### Makefile buyruqlari

```bash
make gen       # Kod generatsiya qilish (build_runner)
make clean     # Loyihani tozalash
```

---

## 📁 Loyiha Tuzilmasi

```
lib/
  ├── core/               # Utility, theme, DI, errors, extensions
  │   ├── common/         # Umumiy widgetlar
  │   ├── di/             # GetIt + Injectable
  │   ├── themes/         # AppColor, AppTextStyle, AppTheme
  │   ├── services/       # Auth, Location, Notification, SMS
  │   └── ...
  ├── features/
  │   ├── auth/
  │   ├── home/
  │   ├── finance/
  │   ├── goals/
  │   ├── add_expense/
  │   ├── profile/
  │   └── main/
  └── l10n/               # Localization (arb fayllar)
```

---

## 🤝 Hissa qo'shish

1. Fork qiling
2. Feature branch oching: `git checkout -b feature/yangi-funksiya`
3. O'zgarishlarni commit qiling: `git commit -m 'feat: yangi funksiya qo'shildi'`
4. Push qiling: `git push origin feature/yangi-funksiya`
5. Pull Request oching

---

## 📄 Litsenziya

Ushbu loyiha xususiy (private) litsenziya ostida tarqatiladi.

---

<p align="center">Made with ❤️ using Flutter</p>
