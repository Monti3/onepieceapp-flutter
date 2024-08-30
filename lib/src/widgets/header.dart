import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({super.key});
  TextStyle titleTextStyle = const TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  TextStyle subTitleTextStyle = const TextStyle(
    fontSize: 18,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(color: Colors.grey.shade800),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'OnePiece',
                style: titleTextStyle,
              ),
              Text(
                'Personajes',
                style: subTitleTextStyle,
              )
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    size: 28,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
