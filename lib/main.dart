import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:event_myntra/core/env/environment.dart';
import 'package:event_myntra/core/services/hive_cache_service.dart';
import 'package:event_myntra/features/authentication/presentation/pages/login_page.dart';
import 'package:event_myntra/di/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load .env
  await dotenv.load(fileName: ".env");

  // Set flavor (change as needed)
  Environment.appFlavor = Flavor.dev;

  // Init Hive
  await HiveCacheService.init();

  // Init DI
  await initDi();

  // UI Styling (optional)
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ),
  );

  runApp(const EventMyntraApp());
}

class EventMyntraApp extends StatelessWidget {
  const EventMyntraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Myntra',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gilroy-Regular',
        primarySwatch: Colors.deepPurple,
      ),
      home: const LoginScreen(),
    );
  }
}
