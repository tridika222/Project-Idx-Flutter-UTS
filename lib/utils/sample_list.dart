import 'package:flutter/material.dart';
import 'package:myapp/pages/detail_page.dart';

class SampleList extends StatelessWidget {
  final String image;
  final String name;
  final String sub;
  final String favorite;
  final List<String> list;

  const SampleList({
    super.key,
    required this.image,
    required this.name,
    required this.sub,
    required this.favorite, 
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailPage(
            image: image, 
            name: name, 
            sub: sub, 
            favorite: favorite, 
            list: list,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.green[400], borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Image.asset(
              "assets/pakaian/$image",
              width: 80,
              height: 80,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  sub,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(favorite)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
