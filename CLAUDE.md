# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
# Install dependencies
flutter pub get

# Run the app
flutter run

# Analyze / lint
flutter analyze

# Run tests
flutter test

# Run a single test file
flutter test test/path/to/test_file.dart

# Code generation (one-time)
make gen
# or: dart run build_runner build

# Code generation (watch mode)
make gen_auto
# or: dart run build_runner watch --delete-conflicting-outputs

# Regenerate localization files
make lang_auto
# or: flutter gen-l10n

# Clean + reinstall packages
make clean

# Build iOS
make build_ios

# Build Android APK (release)
make build_android

# Fix iOS pod issues
make fix_ios
```

## Code Generation

Several packages require code generation. After modifying any of these, run `make gen`:
- **freezed** — data classes and unions (`@freezed` annotation)
- **json_serializable** — JSON models (`@JsonSerializable`)
- **injectable** — dependency injection (`@injectable`, `@lazySingleton`, etc.)
- **flutter_gen** — asset/icon references (`lib/l10n/assets/`)

Generated files (`.g.dart`, `.freezed.dart`, `injection.config.dart`) are committed to the repo.

## Architecture

The project follows **Clean Architecture** with feature-based modular structure.

### Layer structure (per feature)
Each feature under `lib/features/<feature_name>/` is split into three layers:

```
data/
  data_source/   # Remote (Supabase/Dio) and local data sources
  mapper/        # Entity ↔ Model conversions
  models/        # JSON-serializable API/DB models
  repositories/  # Repository implementations
domain/
  entities/      # Pure Dart business objects
  repositories/  # Abstract repository interfaces
  usecases/      # Single-responsibility use cases
presentation/
  blocs/         # BLoC state management (flutter_bloc)
  pages/         # UI screens and widgets
```

### Core (`lib/core/`)
- **di/** — `GetIt` + `injectable` service locator; `sl` is the global instance; `configureDI()` must be called before `runApp`
- **database/** — `LocalSource` wraps a single Hive `Box<dynamic>` for all local persistence (tokens, locale, theme, profile flags)
- **usecase/** — base `UseCase<Type, Params>` returning `Either<Failure, Type>`
- **errors/** — `Failure`, `ServerError`, custom exceptions
- **connectivity/** — `NetworkInfo` / `InternetConnectionChecker`
- **services/** — `NotificationService`, `LocationService`, `SmsRetriever`, `AuthInterceptor` (Dio)
- **themes/** — `Themes.lightTheme` / `Themes.darkTheme`
- **models/app_options.dart** — holds runtime `ThemeMode` + `Language`; propagated via `ModelBinding` inherited widget

### Routing (`lib/router/`)
- Uses **go_router** with a `StatefulShellRoute.indexedStack` for the bottom-nav shell (Home, Finance, Goals, Profile tabs)
- Routes are named constants in `name_routes.dart` (`Routes.home`, etc.)
- BLoCs needed at route level are provided inside router builder callbacks via `BlocProvider`

### Features
| Feature | Description |
|---|---|
| `auth` | Phone-based auth flow (`AuthPage` → `LoginPage`) with `AuthBloc` |
| `main` | Bottom navigation shell managed by `MainBloc` |
| `home` | Dashboard / transaction summary |
| `finance` | Financial records and descriptions |
| `goals` | Savings goals with detail view |
| `add_expense` | Add/edit expense entry |
| `profile` | Settings, theme, language, achievements, subscriptions, habits |

### Localization
- `intl_utils` generates ARB files from `lib/l10n/intl_*.arb` (en, ru, uz, fr)
- Access strings via `S.of(context).key` or `S.current.key`
- Run `make lang_auto` after editing any `.arb` file

### Backend / Data
- **Supabase** (`supabase_flutter`) — primary remote backend
- **Dio** + `AuthInterceptor` — HTTP client with token injection; certificate validation is disabled globally via `HttpOverrides` + custom `IOHttpClientAdapter`
- **Hive** — local storage via `LocalSource`
- **Firebase** — Crashlytics, Messaging, RemoteConfig initialized but commented out in `main.dart`
- **Chuck interceptor** — network request inspector enabled via `Constants.showChuck` flag (dev only)

### Theme & Language switching
`AppOptions` (holds `ThemeMode` + `Language`) is propagated through a custom `ModelBinding` `InheritedWidget` that wraps `App`. Access via `context.options`; update via `AppOptions.update(context, newModel)`, which also persists to `LocalSource`. This is the correct pattern — do **not** use GetIt for theme/language state.

### Error handling
Uses a **custom `Either<Failure, T>` monad** in `core/models/either/` — the project does **not** use `dartz` or `fpdart`. Chain async operations with `FutureExtension` helpers. Failure subtypes: `ServerFailure`, `UnknownFailure`.

### Code generation order
When running `make gen`, the generators execute in this dependency order:
1. `freezed` — entities, models, use-case params
2. `json_serializable` — API/DB models
3. `injectable` — DI wiring (`injection.config.dart`)
4. `flutter_gen` — asset references (`l10n/assets/assets.gen.dart`)

Localization (`make lang_auto`) is independent of the above.

### remember
user bilan muloqotni faqat uzbekcha qil