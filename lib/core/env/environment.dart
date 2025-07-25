// import 'dart:developer';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
//
// /// Enum representing available environments
// enum Flavor { dev, staging, prod }
//
// /// Manages app environment (dev, staging, prod)
// class Environment {
//   static late final Flavor appFlavor;
//
//   /// Get the current environment name as a string
//   static String get name => appFlavor.name;
//
//   /// Get the base API URL depending on the selected environment
//   static String get baseUrl {
//     switch (appFlavor) {
//       case Flavor.dev:
//         return 'https://dev.api.eventmanagement.com';
//       case Flavor.staging:
//         return 'https://staging.api.eventmanagement.com';
//       case Flavor.prod:
//         return 'https://api.eventmanagement.com';
//     }
//   }
//
//   /// Initializes the environment based on .env value
//   static void initialize() {
//     final env = dotenv.env['env'] ?? 'dev';
//
//     switch (env) {
//       case 'prod':
//         appFlavor = Flavor.prod;
//         break;
//       case 'staging':
//         appFlavor = Flavor.staging;
//         break;
//       case 'dev':
//       default:
//         appFlavor = Flavor.dev;
//     }
//
//     log('Environment: ${Environment.name}');
//     log('Base URL: ${Environment.baseUrl}');
//   }
// }
