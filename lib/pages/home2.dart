import 'package:flutter/material.dart';
import 'package:myapp/utils/sample_card.dart';
import 'package:myapp/utils/sample_list.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(" Hi Dika",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.amber[600],
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Cari Pakaian yang kamu mau',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SampleCard(image: 'Hoodie.png', name: 'Hoodie'),
                SampleCard(image: 'Jacket.png', name: 'Jacket'),
                SampleCard(image: 'shirt.png', name: 'shirt'),
              
              ],
            ),
            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Mau pakai outfit apa hari ini?',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)
                ),
                ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor : WidgetStatePropertyAll(Colors.green[600])
                  ),
                  child: const Text(
                    'See All',
                    style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            const SampleList(
              image: 'Skena.png', 
              name: 'Outfit Skena', 
              sub: 'tentunya kekinian banget', 
              favorite: '100',
              list: [
            'Kaos oversize ',
            'Celana longgar',
            'Sepatu bot, seperti Dr. Martens',
            'Totebag',
            'Aksesori berpadanan warna yang berani',     
          ],),
              
            const SizedBox(
              height: 20,
            ),
            const SampleList(
              image: 'Casual.png', 
              name: 'Outfit Casual', 
              sub: 'Kece Paarah men', 
              favorite: '100',
              list: [
              'celana jeans',
              'celana chino',
              'celana linen',
              'rok pensil',
              'rok midi',
              'rok a-line',
              'rok lipit',
              'rok maxi'
              ],
              ),
            
          ],
        ),
      ),
    ));
  }
}
