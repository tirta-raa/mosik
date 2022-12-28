part of 'widgets.dart';

class CusttomAppBar extends StatelessWidget {
  const CusttomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          size: 35,
          Icons.grid_view_rounded,
          color: Colors.white,
        ),
        const Spacer(),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/avatar.png'),
              fit: BoxFit.contain,
            ),
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepPurple.shade800.withOpacity(0.8),
                Colors.deepPurple.shade200.withOpacity(0.8)
              ],
            ),
          ),
        ),
      ],
    ).paddingLTRB(30, 20, 30, 0);
  }
}
