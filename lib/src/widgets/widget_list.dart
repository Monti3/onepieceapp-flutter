import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:personajes_app/src/pages/detail_page.dart';

class CharacterList extends StatefulWidget {
  const CharacterList({super.key});

  @override
  State<CharacterList> createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  double screenWidth = 0;
  final title2TextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width - 40;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Portada',
            style: title2TextStyle,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              blocksPortrait('p1.jpg', 'hola', '2012'),
              blocksPortrait('p2.jpg', 'hola', '2017'),
              blocksPortrait('p3.jpg', 'hola', '2023'),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color.fromARGB(255, 85, 85, 85),
          ),
          const SizedBox(
            height: 20,
          ),
          charactersBlock('Brook', Colors.purple.shade800, 'o1.png'),
          charactersBlock('Luffy', Colors.red, 'o2.png'),
          charactersBlock('Portgas', Colors.yellow, 'o3.png'),
          charactersBlock('Boa', Colors.pink.shade400, 'o4.png'),
        ],
      ),
    );
  }

  Widget charactersBlock(String name, Color color, String image) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(CupertinoPageRoute(
            builder: ((context) => DetailPage(
                  color: color,
                  image: image,
                  name: name,
                ))));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 85, 85, 85),
        ),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: color,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(0, 0),
                          blurStyle: BlurStyle.normal,
                          color: Colors.black54,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(8),
                  child: Hero(
                    tag: '$color',
                    child: Image.asset(
                      'assets/$image',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }

  Column blocksPortrait(
    String image,
    String title,
    String Subtitle,
  ) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            "assets/$image",
            width: screenWidth / 3.4,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
            text: TextSpan(
                text: title,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                ),
                children: [
              TextSpan(
                  text: Subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ))
            ]))
      ],
    );
  }
}
