part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget? _child;

  @override
  void initState() {
    _child = const HomePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child,
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(
              icon: Icons.home,
              backgroundColor: const Color(0xFFB39DDB),
              selectedForegroundColor: Colors.white,
              extras: {"label": "home"}),
          FluidNavBarIcon(
              icon: Icons.play_circle_fill_outlined,
              backgroundColor: const Color(0xFFB39DDB),
              selectedForegroundColor: Colors.white,
              extras: {"label": "Play"}),
          FluidNavBarIcon(
              icon: Icons.favorite_outline,
              backgroundColor: const Color(0xFFB39DDB),
              selectedForegroundColor: Colors.white,
              extras: {"label": "Favorite"}),
          FluidNavBarIcon(
              icon: Icons.people_outline,
              backgroundColor: const Color(0xFFB39DDB),
              selectedForegroundColor: Colors.white,
              extras: {"label": "People"}),
        ],
        onChange: _handleNavigationChange,
        style: const FluidNavBarStyle(
          iconUnselectedForegroundColor: Colors.white,
          barBackgroundColor: Color(0xFFB39DDB),
          iconBackgroundColor: Colors.white,
        ),
        scaleFactor: 1.5,
        defaultIndex: 1,
        itemBuilder: (icon, item) => Semantics(
          label: icon.extras!["label"],
          child: item,
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(
      () {
        switch (index) {
          case 0:
            _child = const HomePage();
            break;
          case 1:
            _child = const SongPage();
            break;
          case 2:
            _child = const PlaylistPage();
            break;
        }
        _child = AnimatedSwitcher(
          switchInCurve: Curves.easeOut,
          switchOutCurve: Curves.easeIn,
          duration: const Duration(milliseconds: 500),
          child: _child,
        );
      },
    );
  }
}
