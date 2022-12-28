part of 'pages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(const WelcomePage());
    });
    return CustomBackground(
      child: Center(
        child: Image.asset(
          'assets/logo2.png',
          width: 390,
        ),
      ),
    );
  }
}
