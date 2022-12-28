import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mosik/ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      getPages: [
        GetPage(name: '/', page: () => const MainPage()),
        GetPage(name: '/song', page: () => const SongPage()),
        GetPage(name: '/playlist', page: () => const PlaylistPage()),
      ],
    );
  }
}
