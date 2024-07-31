import 'package:trix_score/core/imports/app_imports.dart';

class MessageBox extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MessageBox({Key? key , required this.text , required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: MyColors.primaryColor,
                borderRadius: BorderRadius.circular(35.0)
            ),
            child: Text(text , style: const TextStyle(color: Colors.white,fontSize: 24 , fontWeight: FontWeight.bold),),
          ),
          ClipPath(
            clipper: MessageClipper(),
            child: Container(
              height: 15,
              width: MediaQuery.of(context).size.width,
              color: MyColors.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}

class MessageClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {

    var firstOffset = Offset(size.width * 0.1, 0.0);
    var secondPoint = Offset(size.width * 0.15, size.height );
    var lastPoint = Offset(size.width * 0.2, 0.0);
    var path = Path()
      ..moveTo(firstOffset.dx, firstOffset.dy)
      ..lineTo(secondPoint.dx, secondPoint.dy)
      ..lineTo(lastPoint.dx, lastPoint.dy)
      ..close();


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {

    return true;
  }

}