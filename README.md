<h1>📋 Organizational Assistant App</h1>

The Organizational Assistant App is a comprehensive application designed to assist employees in accessing organizational information and managing personal tasks. It provides employees with insights into the organizational structure, their own information, and other features. The app includes an admin panel for CRUD operations on employee data, utilizing an online database (**Supabase**) and offline storage (**Hive**) with seamless syncing capabilities.

In addition, the app offers features like multi-language support, date and weather integration, customizable themes, and a personal to-do list with priority levels and undo functionality. The app uses **Provider** with *ChangeNotifier* to manage language and theme settings, storing preferences in **Hive** for persistence.

<h2>📱 Features</H2>

- **Employee Management**:

  - View organizational structure and personal information.

  - Admin panel for managing employee data (CRUD operations).

  - Online and offline data synchronization using Supabase and Hive.

- **Task Management**:

  - Add, edit, prioritize, delete, and search tasks.

  - Support for three priority levels (high, normal, low).

  - Undo option for deleted tasks.

  - Persistent storage using Hive.

- **Additional Functionalities**:

  - Persian and Gregorian date support.

  - Weather integration.

  - Light/dark theme toggle.

  - Multi-language support (Persian and English).


<h2>📂 Folder Structure</h2>
<pre>lib/
├── bloc/                         # Bloc files for state management
│   ├── employee_bloc.dart        
│   ├── employee_event.dart
│   └── employee_state.dart
├── repository/
│   └── employee_repository.dart  # Handles repository logic for employees
├── models/
│   ├── employee_model.dart       # Employee data model
│   ├── employee_model.g.dart     # Auto-generated Hive adapters for employee
│   ├── task_list_model.dart      # Task data model
│   └── task_list_model.g.dart    # Auto-generated Hive adapters for tasks
├── l10n/
│   └── app_localizations.dart   # Localization setup
├── providers/
│   └── settings_provider.dart   # State management for settings
├── services/                    # API and service integrations
├── ui/
│   ├── screens/
│   │   ├── base_screens/
│   │   │   ├── base_screen.dart
│   │   │   ├── home_screen.dart
│   │   │   ├── personnel_content_screen.dart
│   │   │   └── todo_list_screen
│   │   │       ├── todo_list_screen.dart
│   │   │       └── todo_list_add_edit_screen.dart
│   │   ├── nav_drawer_screens/
│   │   │   ├── login_screen.dart
│   │   │   ├── admin_panel_screen.dart
│   │   │   ├── settings_screen.dart
│   │   │   └── about_page_screen.dart
│   ├── theme/
│   │   └── app_theme.dart       # Theme configuration
├── utils/
│   ├── app_lifecycle_observer.dart  # App lifecycle handling
│   ├── date_util.dart               # Date utilities
│   ├── helpers_util.dart            # General helper functions
│   └── weather_util.dart            # Weather utilities
├── widgets/
│   ├── custom_drawer.dart       # Custom navigation drawer widget
│   └── search_app_bar.dart      # Search AppBar widget
├── main.dart                    # App entry point
└── supabase_client.dart         # Supabase client setup
</pre>

<h2>🚀 Getting Started</h2>
<h3>Prerequisites</h3>
To run the project, ensure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- [Hive](https://pub.dev/packages/hive_flutter/install) (for local storage)
- [Provider](https://pub.dev/packages/provider/install) (for dependency injection)
- [BLoC](https://pub.dev/packages/flutter_bloc/install) (for state management)      (It contains both Cubit and Bloc instances)
- [Supabase](https://supabase.com/) (Access to a Supabase account with a configured project)

<h3>Installation</h3>

1. Clone the repository:

```bash
git clone https://github.com/ShayanPoursadeghi/Information-Booklet.git
```

2. Navigate to the project directory:

```bash
cd Information-Booklet
```
    
3. Install the dependencies:

```bash
flutter pub get
```

4. Set up Hive for the project:

```bash
flutter packages pub run build_runner build
```

5. Run the app:

```bash
flutter run
```

<h2>🛠 Technologies Used</h2>

- **Frontend**: Flutter, Dart

- **State Management**: **Bloc**, **Provider**

- **Database**: **Supabase** (online), **Hive** (offline)

- **APIs**: Weather API

- **Localization**: Multi-language support (Persian/English)

<h2>🧩 Architecture Overview</h2>

The app follows a layered architecture:

- **Presentation Layer**: Contains UI screens and widgets.

- **Business Logic Layer**: Utilizes **Bloc** for state management.

- **Data Layer**: Handles API calls and database operations (**Supabase** and **Hive**).

<h2>💡 Features Breakdown</h2>

<h3>1. Employee Management</h3>

- Access employee details and organizational structure.

- Admin panel for authenticated users to manage employee records.

<h3>2. Task Management</h3>

- Add tasks with detailed descriptions and priority levels.

- Search and filter tasks using a search bar.

- Undo task deletions.

<h3>3. Themes and Localization</h3>

- Switch between light and dark themes.

- Multi-language support for Persian and English.

<h3>4. Other Features</h3>

- Weather updates via API.

- Display Persian and Gregorian dates based on the selected language.

<h2>🖼️ Screenshots</h2>

This section will be ready soon.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **Home Screen**

<img src="screenshots/home_screen.png" width="300"/>  

  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **Content Screen**  
<img src="screenshots/add-edit_screen.png" width="300"/>  

  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **Filtering tasks by search**         
<img src="screenshots/search.png" width="300"/>



<h2>👨‍💻 Contributing</h2>

Contributions are welcome! If you want to contribute:

1. Fork the repository.
2. Create a new branch.
3. Make your changes and test them.
4. Submit a pull request for review.

<h2>📄 License</h2>

This project is licensed under the MIT License - see the [License](./LICENSE) file for details. 

<h2>📧 Contact</h2>

Feel free to reach out if you have any questions or suggestions:

- **Email**: [sh.psadeghi@gmail.com](mailto:sh.psadeghi@gmail.com)
- **Linkedin**: [shayan-poursadeghi](https://www.linkedin.com/in/shayan-poursadeghi/)

