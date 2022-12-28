part of 'widgets.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  double width;
  double height;
  EdgeInsets? margin;
  EdgeInsets? padding;
  Function()? onPressed;
  String text;
  Color color;
  TextStyle? textStyle;
  double blurRadius;

  CustomButton(
      {super.key,
      this.width = double.infinity,
      this.height = 60,
      this.margin,
      this.padding,
      this.text = '',
      this.color = const Color(0xFF7E57C2),
      this.onPressed,
      this.textStyle,
      this.blurRadius = 10});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: blurRadius,
            )
          ]),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
