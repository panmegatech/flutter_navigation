# Flutter Navigation Project

This repository contains a Flutter project that demonstrates how to implement various navigation techniques, including basic routing, named routes, and generated routes for a systematic and scalable approach to app navigation.

## Features

- **Basic Routing**: Simple navigation between different screens using `Navigator`.
- **Named Routes**: Navigation with predefined route names.
- **Generated Routes**: Route generation using `onGenerateRoute` for better scalability and handling advanced.

## Project Structure

```bash
lib/
├── main.dart                   # Entry point of the application with Routes generates
├── home_screen.dart            # Home screen showing initial route.
├── ant_screen.dart             # Screen showing Ant details
├── bee_screen.dart             # Screen showing Bee details
├── cat_screen.dart             # Screen showing Cat details
├── page_not_found_screen.dart  # Screen showing the page not found (404) when then push named function error
├── app_router.dart             # It defines a centralized routing system using the `onGenerateRoute` function
├── utils/
│   └── route_name.dart         # Define all of route name
│   └── utils.dart              # Helper function
└── widgets/
    └── custom_scafold.dart     # Custom Scafold widget
    └── custom_text.dart        # Custom Text widget
```


## Getting Started

### Prerequisites
- Ensure you have [Flutter](https://flutter.dev/docs/get-started/install) installed on your machine.
- You should also have a code editor like [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).


## How to Run

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/flutter_navigation.git
    ```
2. Navigate into the project directory:
    ```bash
    cd flutter_navigation
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Run the app:
    ```bash
    flutter run
    ```


## How Navigation Works

### Basic Routing

We use `Navigator.push` and `Navigator.pop` to move between screens. For example:

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => AntScreen()),
);
```


### Named Routes
Named routes are used for cleaner navigation, especially for larger apps:
```dart
Navigator.pushNamed(context, '/ant');
```

### Generated Routes

The project uses onGenerateRoute for advanced routing, which allows for argument passing and more control over navigation logic (for Example):

```dart
onGenerateRoute: (RouteSettings settings) {

    if (settings.name == '/') {
        return MaterialPageRoute(
        builder: (context) => HomeScreen(),
        );
    }

    if (settings.name == '/details') {
        final args = settings.arguments as DetailsArguments;
        return MaterialPageRoute(
        builder: (context) => DetailsScreen(args: args),
        );
    }

    return null;
}
```


## app_router.dart

The `app_router.dart` file is responsible for handling all the route management in the application. It defines a centralized routing system using the `onGenerateRoute` function, allowing you to manage navigation logic efficiently in one place.

### Key Features:
- **Centralized Route Management**: All routes are defined in one file, making it easy to manage and modify routes as needed.
- **Dynamic Route Handling**: The `generateRoute` function dynamically generates routes based on the `RouteSettings` provided by the Navigator.
- **Error Handling**: It includes a fallback route for unknown paths, ensuring that invalid routes are properly managed.
- **Middleware Support**: You can easily integrate middlewares (e.g., authentication checks) before navigating to certain pages.

### Example Usage:
In the `MaterialApp`, the `onGenerateRoute` is set to use the `AppRouter` class to manage navigation:
```dart
MaterialApp(
  onGenerateRoute: AppRouter.generateRoute,
  initialRoute: '/',
);





