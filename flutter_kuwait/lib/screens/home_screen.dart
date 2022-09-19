import 'package:flutter/material.dart';
import 'package:flutter_kuwait/screens/building_screens.dart';

import '../models/building.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var buildings = [
    Building(
      name: 'أبراج الكويت',
      imgURL:
          'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
      disc: 'أبراج الكويت هي ثلاثة أبراج على ساحل الخليج العربي',
    ),
    Building(
      name: 'برج التحرير',
      imgURL:
          'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
      disc: 'برج التحرير هو برج للاتصالات',
    ),
    Building(
      name: 'المسجد الكبير',
      imgURL:
          'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
      disc: 'يعد أكبر مسجد في دولة الكويت',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kuwait City LandMarks'),
      ),
      body: ListView.builder(
        itemCount: buildings.length,
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              // onTap: () {

              // },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      buildings[index].imgURL,
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Text(
                      buildings[index].name,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: FloatingActionButton(
                      backgroundColor: Colors.grey,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BuildingScreen(
                              building: buildings[index],
                            ),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
