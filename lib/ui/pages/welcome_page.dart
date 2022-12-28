part of 'pages.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Image.asset(
                'assets/girl.png',
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 50,
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: const Color(0xFF7E57C2).withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(54),
                    topRight: Radius.circular(54),
                  ),
                ),
                child: ListView(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'From the ',
                        style: gothicTextStyle.copyWith(fontSize: 24),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'latest',
                            style: gothicTextStyle.copyWith(
                              color: blueColor,
                              fontSize: 24,
                            ),
                          ),
                          const TextSpan(
                            text: ' to the\n',
                          ),
                          TextSpan(
                            text: 'greatest',
                            style: gothicTextStyle.copyWith(
                              color: blueColor,
                              fontSize: 24,
                            ),
                          ),
                          const TextSpan(
                            text: ' hits, play your \nfavorite tracks on ',
                          ),
                          TextSpan(
                            text: 'mosik \n',
                            style: gothicTextStyle.copyWith(
                              color: blueColor,
                              fontSize: 24,
                            ),
                          ),
                          const TextSpan(
                            text: 'now!',
                          ),
                        ],
                      ),
                    ),
                    60.heightBox,
                    CustomButton(
                      onPressed: () {
                        Get.to(const MainPage());
                      },
                      text: 'get started',
                      textStyle: mulishTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
