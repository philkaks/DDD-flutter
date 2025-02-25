# Random Dog Image 🐶📸 (DDD Architecture)

A simple Flutter project that fetches random dog images from an [API](https://dog.ceo/api/breeds/image/random) while following the Domain-Driven Design (DDD) architecture.

## Project Structure
```
📂 lib
├── 📂 core                 # Common utilities
├── 📂 domain               # Business logic (Entities, UseCases, Repository Interface)
├── 📂 data                 # Data layer (Models, Data sources, Repository Implementation)
├── 📂 presentation         # UI & State Management (Bloc, Widgets)
├── main.dart              # Entry point
├── injection_container.dart         # Dependency injection (GetIt setup)
```

This project uses [GetIt](https://pub.dev/packages/get_it) for dependency injection. All dependencies are registered in `injection.dart`.


For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
