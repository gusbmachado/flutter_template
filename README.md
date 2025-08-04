# Flutter Template

This is a Flutter reference project, designed as a robust starting point for your next mobile application.

## 🚀 Features

This project comes packed with several key features and configurations to help you kickstart development:

  * **Loading Page**: Standard landing page for viasoft powered apps (found in `lib/screens/loading.dart`).
  * **Utility Functions**: Prebuilt utility functions for common tasks (found in `lib/utils/formatting.dart` and `lib/utils/handleCacheData.dart`).
  * **Global Styles**: Centralized styles and themes (found in `lib/styles/global.dart`).
  * **Modular Structure**: Organized folder structure for future development.
  * **Custom Fonts**: Integrates the **NunitoSans** font family with various weights for a clean and modern typography.
  * **Custom App Icons**: Configured to generate adaptive app icons for both Android and iOS using `flutter_launcher_icons`, ensuring a polished look.
  * **Localization Support**: Ready for multiple languages with `flutter_localizations` and automatic code generation.
  * **FontAwesome Icons**: Includes `font_awesome_flutter` for a wide range of vector icons, perfect for enhancing your UI.
  * **Asset Management**: An `assets/images` directory is set up, currently containing `icon.png`.
  * **Linting**: Uses `flutter_lints` to enforce good coding practices and maintain code quality.

## 📦 Dependencies

The project leverages the following key dependencies:

  * **`flutter`**: The core Flutter SDK.
  * **`cupertino_icons`**: Apple-style icons for Flutter.
  * **`font_awesome_flutter`**: Easily use Font Awesome icons in Flutter.
  * **`flutter_localizations`**: Provides localized resources for Flutter apps.
  * **`flutter_launcher_icons`**: Generates app launcher icons for Android and iOS.

## 🛠️ Getting Started

Follow these steps to get your development environment set up and run the project.

### Prerequisites

  * **Flutter SDK**: Ensure you have Flutter installed. If not, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).
  * **Android Studio / VS Code**: An IDE with Flutter and Dart plugins installed.

### Installation

1.  **Clone the repository** (if applicable, otherwise assume it's already set up):
    ```bash
    git clone [your-repo-url]
    cd flutter_template
    ```
2.  **Get packages**:
    ```bash
    flutter pub get
    ```
3.  **Generate Launcher Icons**:
    ```bash
    flutter pub run flutter_launcher_icons
    ```
    This command will generate the app icons based on the configuration in `pubspec.yaml`.
4.  **Run the application**:
    ```bash
    flutter run
    ```

## 📂 Project Structure

```
flutter_template/
├── lib/                     # Dart code for the application
├── assets/                  # Static assets like images and fonts
│   ├── fonts/
│   │   └── NunitoSans-...   # NunitoSans font files
│   └── images/
│       └── icon.png         # App icon source
├── pubspec.yaml             # Project dependencies and metadata
├── README.md                # This file
├── ...                      # Other Flutter project files
```
