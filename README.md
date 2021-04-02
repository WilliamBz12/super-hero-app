# Coding Challenge

This is a simple project where the user can search by heros and find your details.

# Technologies
- Flutter
- SuperHero API

## Start

To clone the application:
``` bash
git clone https://github.com/WilliamBz12/super-hero-app
cd superhero-app
```

## Install dependencies
`flutter pub get`


## Running app
`flutter run`

## Running the tests
`flutter test`

Tests were build for cubits and repositories, there were several situations that can occur, sucessful, insucessful, exception, etc.

### Development

In the arquitecture was used Flutter Modular and to state management Cubit (flutter_bloc).

#### Arquitecture
```
modules/
|- home
	|- repositories
	|- cubits
	|- widgets
	|- pages
	home_module.dart
	home_page.dart
shared/
	|-api
	api_client_factory.dart #As API provider
	|-style #App style
	|-widgets #common widgets
```

#### Enjoy!