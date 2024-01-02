

# Meeting Room

This template uses [flutter_bloc](https://pub.dev/packages/flutter_bloc) as state management and follows uncle bob's
clean architecture.

### Get Started

This project contains 3 variants:

- development
- staging
- production

To run the desired variants either use the launch configuration in VSCode/Android Studio or use the following commands:

# Development

```sh
flutter run  -t lib/main-development.dart --flavor development
```

# Production

```shell
flutter run -t lib/main-production.dart --flavor production
```

# Staging

```shell
flutter run  -t lib/main-staging.dart --flavor staging
```

## Generate Launcher Icons

```shell
flutter pub run flutter_launcher_icons:main
```

## Create Native Splash

```shell
flutter pub run flutter_native_splash:create
```

## Code generation for utilities (Routes,Model,Blocs)

```sh
$ flutter pub run build_runner build --delete-conflicting-outputs
```

or

```sh
$ flutter pub run build_runner watch --delete-conflicting-outputs
```

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link]
and [flutter_intl](https://pub.dev/packages/intl_utils) and follows
the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `intl_en.arb` file at `lib/localization/arb/intl_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World Text"
    }
}
```

3. Use the new string

```dart
import 'package:meeting_room/localization/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml

<dict>
    <key>CFBundleLocalizations</key>
    <array>
        <string>en</string>
    </array>
</dict>

```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/localization/arb`.

```
├── localization
│   ├── arb
│   │   ├── intl_en.arb
│   │   └── intl_ne.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_ne.arb`

```arb
{
    "@@locale": "ne",
    "counterAppBarTitle": "Contador",
    "@counterAppBarTitle": {
        "description": "Texto mostrado en la AppBar de la página del contador"
    }
}
```

3. Generate localized strings

```shell
flutter pub global activate intl_utils (if not activated previously)
flutter pub global run intl_utils:generate  (this is for the first time next time it will be auto generated when we run flutter pub get or just saving pubspec.yaml)
```

#### Folder Structure

```
.
├── bootstrap.dart                     # bootstrap file that contains bloc observer and dependencies initialization functions
├── localization                       #localized strings
│   ├── arb
│   │   └── intl_en.arb
│   ├── generated
│   └── l10n.dart                       # extension functions to access generated localized strings
├── main-dev.dart                       # entrypoint for development app
├── main-prod.dart                      # entrypoint for production app
├── main-uat.dart                       # entrypoint for uat app
└── src                                 # source folder (all the project source files goes under this directory)
    ├── app                             # folder contains files that is accessible to all over app
    │   ├── app.dart                   # index file that exports presentation/pages
    │   ├── data                       # data folder contains all the files those are associated with backend and local database
    │   │   ├── database              # database folder contains DAOs and local database tables for respective feature
    │   │   ├── dtos                  # dtos contains all the files those are used to convert server response into dart class
    │   │   ├── graphql               # graphql contains queries and mutations files those are use to communicate GraphQl server
    │   │   ├── mappers               # mappers contains extension functions that maps the local database response into entity
    │   │   ├── repository            # repository contains the implementation of abstract class in domain/repository
    │   │   └── source                # source contains abstract and implementation files to communicate with server and local database
    │   ├── domain                     # domain folder contains all the files that are used to communicate between data and presentation layer
    │   │   ├── entities              # entities are used to communicate server/local response into UI layer
    │   │   ├── repository            # repository contains all the abstract classes used to communicate with data layer
    │   │   └── usecases              # usecases are used to communicate repository and bloc classes
    │   └── presentation               # presentation folder contains all the UI and BLOC related files
    │       ├── blocs                  # contains all the bloc files
    │       │   ├── app
    │       │   │   ├── app_cubit.dart
    │       │   │   ├── app_cubit.freezed.dart
    │       │   │   └── app_state.dart
    │       │   └── locale
    │       │       ├── locale_cubit.dart
    │       │       ├── locale_cubit.freezed.dart
    │       │       └── locale_state.dart
    │       ├── pages                  # contains all the pages of respective feature
    │       │   ├── app.dart
    │       │   └── splash_page.dart
    │       └── widgets                # contains widgets that is common on respective feature's pages
    │           └── widgets.dart
    ├── core                            # core contains all the helper,utilities,constants, routing etc.
    │   ├── constants                   # constants
    │   │   └── storage_keys.dart
    │   ├── database                    # local database class
    │   │   ├── local_database.dart
    │   │   ├── local_database.g.dart
    │   │   ├── test_dao.dart
    │   │   └── test_dao.g.dart
    │   ├── di                          # dependency injections
    │   │   ├── injector.config.dart
    │   │   ├── injector.dart
    │   │   ├── register_modules.dart
    │   │   └── register_network_module.dart
    │   ├── errors                      # app errors and exceptions
    │   │   ├── api_exception.dart
    │   │   ├── api_exception.freezed.dart
    │   │   ├── app_error.dart
    │   │   └── app_error.freezed.dart
    │   ├── extensions                  # extension functions for different class
    │   │   ├── context_extension.dart
    │   │   ├── extensions.dart
    │   │   ├── num_extension.dart
    │   │   ├── string_extension.dart
    │   │   └── widget_extension.dart
    │   ├── form                        # form validation fields
    │   │   ├── field.dart
    │   │   └── form_mixin.dart
    │   ├── helpers                     # helpers
    │   │   ├── assets_helper.dart
    │   │   └── encryption_helper.dart
    │   ├── logging                     # loggers
    │   │   └── logger.dart
    │   ├── network                     # interceptors and connection_checkers
    │   │   ├── auth_interceptor.dart
    │   │   └── network_info.dart
    │   ├── routes                      # routes
    │   │   ├── app_router.dart
    │   │   ├── app_router.gr.dart
    │   │   └── app_routes.dart
    │   ├── session                     # session implementations
    │   │   ├── entity
    │   │   │   ├── session_entity.dart
    │   │   │   └── session_entity.g.dart
    │   │   └── session_service.dart
    │   ├── themes                      # themes, colors, typography
    │   │   ├── app_colors.dart
    │   │   ├── app_styles.dart
    │   │   ├── app_theme.dart
    │   │   └── theme.dart
    │   ├── typedefs                    # typedefs
    │   │   └── typedefs.dart
    │   ├── usecase                     # base usecase class
    │   │   └── usecase.dart
    │   └── widgets                     # widgets those are shared across different features
    │       ├── app_error_widget.dart
    │       ├── network_image.dart
    │       ├── svg_image.dart
    │       └── widgets.dart
    └── features                        # features contains all the features following same architecture as app
        ├── auth
        │   ├── auth.dart
        │   ├── data
        │   │   ├── database
        │   │   ├── dtos
        │   │   ├── graphql
        │   │   ├── mappers
        │   │   ├── repository
        │   │   └── source
        │   ├── domain
        │   │   ├── entities
        │   │   ├── repository
        │   │   └── usecases
        │   └── presentation
        │       ├── blocs
        │       └── pages
        │           └── login_page.dart
        └── dashboard
            ├── dashboard.dart
            ├── data
            │   ├── database
            │   │   ├── daos
            │   │   └── tables.dart
            │   ├── dtos
            │   │   ├── company
            │   │   └── launch
            │   ├── graphql
            │   │   ├── mutations.dart
            │   │   └── queries.dart
            │   ├── mappers
            │   │   └── mappers.dart
            │   ├── repository
            │   │   └── dashboard_repository_impl.dart
            │   └── source
            │       ├── dashboard_local_source.dart
            │       └── dashboard_remote_source.dart
            ├── domain
            │   ├── entities
            │   ├── repository
            │   │   └── dashboard_repository.dart
            │   └── usecases
            └── presentation
                ├── blocs
                │   ├── company
                │   ├── launches
                │   │   ├── details
                │   │   ├── latest
                │   │   └── upcoming
                │   └── vehicles
                │       ├── details
                │       └── list
                ├── pages
                │   └── dashboard_page.dart
                └── widgets
                    └── widgets.dart

```

## Packages used in template

- #### [auto_route](https://pub.dev/packages/auto_route) used for routing
- #### [get_it](https://pub.dev/packages/get_it) used for service locator
- #### [injectable](https://pub.dev/packages/injectable) used for dependency injection with get_it
- #### [flutter_bloc](https://pub.dev/packages/flutter_bloc) used for state management
- #### [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) used to get adaptive sizes
- #### [freezed](https://pub.dev/packages/freezed) used to generate union classes
- #### [json_serializable](https://pub.dev/packages/json_serializable) used to generate jsonConverter for models
- #### [equatable](https://pub.dev/packages/equatable) used to generate equality for models
- #### [dartz](https://pub.dev/packages/dartz) used for functional programming
- #### [internet_connection_checker](https://pub.dev/packages/internet_connection_checker) used to check internet connectivity status
- #### [dio](https://pub.dev/packages/dio) used for http client
- #### [graphql](https://pub.dev/packages/graphql) http client for graph requests
- #### [gql_dio_link](https://pub.dev/packages/gql_dio_link) used to add a dio link to graphql client to use features of dio
- #### [flutter_dotenv](https://pub.dev/packages/flutter_dotenv) used to manage different variables for different environment
- #### [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage) used to create and store encryption key for hive
- #### [hive](https://pub.dev/packages/hive) used to manage session of user
- #### [hive_flutter](https://pub.dev/packages/hive_flutter) used with hive to make hive work in flutter
- #### [logging](https://pub.dev/packages/logging) used for logging
- #### [device_info_plus](https://pub.dev/packages/device_info_plus) used to get information of device
- #### [path_provider](https://pub.dev/packages/path_provider) used to get different path from app (documents,downloads etc.)
- #### [path](https://pub.dev/packages/path) used for path manipulating
- #### [drift](https://pub.dev/packages/drift) used for local database
- #### [sqlite3_flutter_libs](https://pub.dev/packages/sqlite3_flutter_libs) used with drift to work with sqlite
- #### [flutter_native_splash](https://pub.dev/packages/flutter_native_splash) used to create native splash on different platform
- #### [cached_network_image](https://pub.dev/packages/cached_network_image) used to render network images
- #### [flutter_svg](https://pub.dev/packages/flutter_svg) used to render svg images
