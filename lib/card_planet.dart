import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPlanetData{
  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;

  const CardPlanetData({
   required this.title,
   required this.subtitle,
   required this.image,
   required this.backgroundColor,
   required this.titleColor,
   required this.subtitleColor
});

}

class CardPlanet extends StatelessWidget {
  const CardPlanet({Key? key, required this.data}) : super(key: key);

  final CardPlanetData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          const Spacer(),
          Flexible(
            flex: 5,
              child: Image(image: data.image)),
          Spacer(),
          Text(data.title.toUpperCase(),
            // style: TextStyle(
            //   color: data.titleColor,
            //   fontSize: 24,
            //   fontWeight: FontWeight.bold,
            //   letterSpacing: 2,
            style: GoogleFonts.secularOne(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: data.titleColor,
              letterSpacing: 2
            ),
            maxLines: 1,
            ),
          Text(data.subtitle,
          style: TextStyle(
            color: data.subtitleColor,
            fontSize: 16,
          ),)
        ],
      ),
    );
  }
}
