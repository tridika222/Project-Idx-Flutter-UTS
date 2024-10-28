import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String image;
  final String name;
  final String sub;
  final String favorite;
  final List<String> list;

  const DetailPage(
      {super.key,
      required this.image,
      required this.name,
      required this.sub,
      required this.favorite, 
      required this.list });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Column(
                children: [
                  Image.asset(
                    "assets/pakaian/$image",
                    width: MediaQuery.sizeOf(context).width,
                    height: 220,
                  ),
                  Text(
                name,
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
                ],
              ),
            ],
          ),
              
              Row(
          // Suggested code may be subject to a license. Learn more: ~LicenseLog:1312971784.
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(sub),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Text(favorite)
                    ],
                  )
                ],
              ),
          
              const SizedBox(
                height: 25,
              ),
          
              const Text("Outfit"),
              const SizedBox(
                height: 10,
              ),
              ...list.map((value){
              return Text('-$value');
              })
                ],
              ),
        )
        ),
      );
  }
}
