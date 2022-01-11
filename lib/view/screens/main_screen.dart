import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_kit/view/widgets/custom_container.dart';
import 'package:med_kit/view/widgets/doctor_widget.dart';

import 'doctors_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Map> doctors = [
    {"image": "assets/images/eyes.png", "text": "طبيب عيون"},
    {"image": "assets/images/dentist.png", "text": "طبيب اسنان"},
    {"image": "assets/images/heart.png", "text": "طبيب قلب"},
    {"image": "assets/images/belly.png", "text": "طبيب باطنية"},
    {"image": "assets/images/pharmacy.png", "text": "الصيدلية الخفر"},
    {"image": "assets/images/skin.png", "text": "طبيب جلدية"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: CustomPaint(
                painter: CustomContainer(),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    width: 300,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            "...بحث",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.search,
                          color: Color(0xff849FFF),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(30),
                  scrollDirection: Axis.vertical,
                  itemCount: doctors.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 25,
                    childAspectRatio: 1.3
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Get.to(()=>DoctorsScreen(name: doctors[index]["text"],));
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 10,
                                spreadRadius: 7,
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset(
                                doctors[index]["image"],
                                color: Colors.pink,
                              ),
                            ),
                            Text(
                              doctors[index]["text"],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 18,
                                color: Color(0xff849FFF)
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
