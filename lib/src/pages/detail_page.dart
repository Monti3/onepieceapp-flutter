import 'package:flutter/material.dart';
import 'package:personajes_app/src/animations/fade_animation.dart';
import 'package:personajes_app/src/widgets/blur_container.dart';
import 'package:personajes_app/src/widgets/info_title_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.color,
    required this.image,
    required this.name,
  });

  final Color color;
  final String image;
  final String name;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double screenHeight = 0; 

  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
    
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [widget.color, Colors.black],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 12),
                  child: SizedBox(
                    height: screenHeight* 0.6,
                    child: Hero(tag: '${widget.color}', child: Image.asset('assets/${widget.image}')),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: FadeAnimation(
                    end: 0.8,
                    child: BlurContainer(
                      child: Container(
                        width: 160,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: Text(
                          widget.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'personaje: ${widget.name}',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            SizedBox(height: 5),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'One Piece',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation( intervalStart: 0.45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoTitle(title: 'Eiichiro Oda', subtitle: 'Creador'),
                    InfoTitle(title: 'Japón', subtitle: 'País')
                  ],
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: widget.color,
                ),
                child: Text(
                  'Volver',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
