part of 'widgets.dart';

// ignore: must_be_immutable
class SectionHeader extends StatelessWidget {
  String title;
  String action;

  SectionHeader({
    Key? key,
    this.title = '',
    this.action = 'View More',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
        ),
        Text(
          action,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white,
              ),
        ),
      ],
    );
  }
}
