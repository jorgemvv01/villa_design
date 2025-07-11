# Villa design system - Flutter package

A custom Flutter design system package built following the principles of Atomic Design. It provides a set of reusable widgets and foundational tokens to build consistent and beautiful UIs.

## Features

-   **Atomic design structure:** Components are organized logically into atoms, molecules, organisms, templates and pages.
-   **Theme-aware:** Full support for light & dark modes out of the box.
-   **Comprehensive component library:** A rich set of widgets from buttons to complex forms.
-   **Well-documented:** Every component includes detailed documentation for ease of use.

## Installation

To use this package in your Flutter project, add it as a git dependency in your `pubspec.yaml` file.

1.  **Add the dependency**

    Add this to your project's `pubspec.yaml`:

    ```yaml
    dependencies:
      flutter:
        sdk: flutter
      
      villa_design:
        git:
          url: https://github.com/jorgemvv01/villa_design
          ref: main
    ```

2.  **Install the package**

    Run the following command in your terminal:
    ```bash
    flutter pub get
    ```

---

## Basic usage

The design system is built upon foundational tokens for colors and typography. To use them, get an instance within your `build` method.

```dart
import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1. Get theme-aware colors and typography
    final colors = VillaColors(Theme.of(context).brightness);
    final typography = VillaTypography(colors);

    // 2. Use them in your widgets
    return Container(
      color: colors.background,
      child: Text(
        'Hello World!',
        style: typography.h1,
      ),
    );
  }
}
```

## Component Gallery

### Foundations (Tokens)
<img src="https://github.com/jorgemvv01/villa_design/raw/main/resources/tokens.png" alt="tokens demo" width="200"/>

The core building blocks of the design language.

| Name              | Description                                        |
| ----------------- | -------------------------------------------------- |
| `VillaColors`     | Provides the color palette for light and dark modes. |
| `VillaTypography` | Provides the text style scale (`h1`, `body`, etc.).  |

### Atoms
<img src="https://github.com/jorgemvv01/villa_design/raw/main/resources/atoms.png" alt="atoms demo" width="200"/>

The smallest, indivisible components.

| Component             | Description                                                   |
| --------------------- | ------------------------------------------------------------- |
| `VillaElevatedButton` | The primary button for major actions.                         |
| `VillaTextButton`     | A secondary button with less emphasis.                        |
| `VillaIconButton`     | A button that contains only an icon.                          |
| `VillaAvatar`         | Displays a user's image or their initials as a fallback.      |
| `VillaTextField`      | A styled text input field.                                    |

**Example:**
```dart
VillaElevatedButton(
  text: 'Submit',
  onPressed: () {},
)
```

### Molecules
<img src="https://github.com/jorgemvv01/villa_design/raw/main/resources/molecules.png" alt="molecules demo" width="200"/>

Simple components built by combining atoms.

| Component           | Description                                                        |
| ------------------- | ------------------------------------------------------------------ |
| `VillaActionCard`   | A card that groups content with an optional primary action button. |
| `VillaUserProfile`  | Displays a user's avatar, name, and subtitle in a row.            |
| `VillaSearchBar`    | A text field combined with a search icon button.                   |

**Example:**
```dart
VillaActionCard(
  title: 'New Feature',
  description: 'Check out our latest update and new features.',
  actionText: 'Learn More',
  onActionPressed: () {},
)
```

### Organisms
<img src="https://github.com/jorgemvv01/villa_design/raw/main/resources/organisms.png" alt="organisms demo" width="200"/>

Complex components that form distinct sections of an interface.

| Component       | Description                                                 |
| --------------- | ----------------------------------------------------------- |
| `VillaHeader`   | A custom `AppBar` for consistent page headers.              |
| `VillaLoginForm`| A complete login form with email, password, and submit button.|

**Example:**
```dart
Scaffold(
  appBar: VillaHeader(
    title: 'My Page',
    actions: [
      VillaIconButton(icon: Icons.settings, onPressed: () {}),
    ],
  ),
  body: // ...
)
```

### Templates
<img src="https://github.com/jorgemvv01/villa_design/raw/main/resources/template_1.png" alt="template demo 1" width="200"/> <img src="https://github.com/jorgemvv01/villa_design/raw/main/resources/template_2.png" alt="template demo 2" width="200"/>

Page-level skeletons that arrange organisms into a cohesive layout. Templates are typically used within your application code, not exported from the package directly.

| Component           | Description                                                   |
| ------------------- | ------------------------------------------------------------- |
| `VillaPageTemplate` | A generic page layout with an `appBar` and a `body`.          |
| `VillaFormTemplate` | A specific layout for form screens with a fixed action area. |

**Example:**
```dart
// Inside a page widget
@override
Widget build(BuildContext context) {
  return VillaPageTemplate(
    appBar: VillaHeader(title: 'Example'),
    body: Center(
      child: Text('Page content goes here.'),
    ),
  );
}
```

### Pages
<img src="https://github.com/jorgemvv01/villa_design/raw/main/resources/page.png" alt="page demo" width="200"/>

Pages are concrete implementations that use templates to build full screens. They demonstrate how to combine all the design system elements into a final product.

| Page Example  | Template Used       | Description                                                               |
| ------------- | ------------------- | ------------------------------------------------------------------------- |
| `WelcomePage` | `VillaPageTemplate` | A simple page showing how to use `VillaPageTemplate` to display content. |


## Example application

A fully functional example application is included in the `/example` directory. To run it, navigate to the folder and execute:
```bash
flutter run
```