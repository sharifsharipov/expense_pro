# 💸 Expense Pro

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.10+-02569B?logo=flutter&logoColor=white" />
  <img src="https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart&logoColor=white" />
  <img src="https://img.shields.io/badge/Supabase-Backend-3ECF8E?logo=supabase&logoColor=white" />
  <img src="https://img.shields.io/badge/Firebase-Remote%20Config-FFCA28?logo=firebase&logoColor=black" />
  <img src="https://img.shields.io/badge/Version-1.0.0+1-success" />
</p>

> A modern Flutter application for personal finance management. Track expenses, set financial goals, and manage investments — all in one place.

---

## 📱 Platforms

| Platform | Status |
|----------|--------|
| Android  | ✅ |
| iOS      | ✅ |
| Web      | ✅ |
| macOS    | ✅ |
| Linux    | ✅ |
| Windows  | ✅ |

---

## 🏗️ Architecture

The project is built on **Clean Architecture** + **BLoC pattern**:

```
Presentation Layer (Pages + Blocs)
        ↓
Domain Layer (Entities + UseCases + Repositories)
        ↓
Data Layer (Models + DataSources + Mappers + RepoImpls)
        ↓
Supabase / Firebase / Hive
```

Each feature follows this structure:

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

## ✨ Key Features

| Feature | Description |
|---------|-------------|
| 🔐 **Auth** | Sign in and sign up (OTP SMS) |
| 🏠 **Home** | Dashboard — expense and balance overview |
| 💰 **Finance** | Financial reports and analytics |
| 🎯 **Goals** | Financial goals and progress tracking |
| ➕ **Add Expense** | Quick expense entry |
| 👤 **Profile** | Profile, settings, achievements, habit tracker, subscriptions, automation, and more |

---

## 🛠️ Technologies

### State Management
- `flutter_bloc ^9.1.1` · `bloc ^9.1.0` · `bloc_concurrency ^0.3.0`

### Navigation
- `go_router ^17.0.0` — 4 tabs with `StatefulShellRoute`

### Backend & Network
- `supabase_flutter ^2.12.0` — primary backend
- `dio ^5.9.0` — HTTP client
- Firebase — Messaging, Crashlytics, Remote Config

### Local Storage
- `hive ^2.2.3` + `hive_flutter ^1.1.0`

### Localization
- `intl ^0.20.2` + `flutter_localizations`
- Supported languages: 🇺🇿 **Uzbek** · 🇷🇺 **Russian** · 🇬🇧 **English** · 🇹🇯 **Tajik**

### UI / Design
- `flutter_svg` · `cached_network_image` · `shimmer` · `pinput` · `scale_button` · `gap`
- Fonts: **Manrope** (400/500/700) · **Poppins** (500/700)
- Light and Dark theme support

### Code Generation
- `freezed ^3.2.3` · `json_serializable ^6.13.0` · `injectable_generator ^2.9.1` · `flutter_gen_runner ^5.12.0`

---

## 🚀 Getting Started

### Requirements
- Flutter SDK `>=3.10.0 <4.0.0`
- Dart SDK `>=3.0.0`

### Installation

```bash
# Clone the repository
git clone https://github.com/sharifsharipov/expense_pro.git
cd expense_pro

# Install dependencies
flutter pub get

# Run code generation
dart run build_runner build --delete-conflicting-outputs

# Run the app
flutter run
```

### Makefile Commands

```bash
make gen       # Run code generation (build_runner)
make clean     # Clean the project
```

---

## 📁 Project Structure

```
lib/
  ├── core/               # Utilities, theme, DI, errors, extensions
  │   ├── common/         # Shared widgets
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
  └── l10n/               # Localization (arb files)
```

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/new-feature`
3. Commit your changes: `git commit -m 'feat: add new feature'`
4. Push to the branch: `git push origin feature/new-feature`
5. Open a Pull Request

---

## 📄 License

This project is distributed under a private license.

---

<p align="center">Made with ❤️ using Flutter</p>
