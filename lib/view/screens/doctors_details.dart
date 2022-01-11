import 'package:flutter/material.dart';
import 'package:med_kit/view/widgets/custom_container.dart';
class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key key,this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(name,style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.w900
                      ),),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text("طب وجراحة الاسنان-تنظيف-قلع-ابتسامة هولويود"),
                      ),
                      Row(
                        children: [
                          Text("مدة الحجز-حجز مباشر-سعر الكشفية : 10 الف"),
                          Icon(Icons.watch_later_outlined,
                            color: Colors.pink,
                            size: 20,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("ناصريه-الحبوبي-شارع الكنز",style: TextStyle(
                              color: Colors.blue
                          ),),
                          Icon(Icons.location_on,
                            color: Colors.pink,
                            size: 20,),
                          Text("طبيب اسنان"),
                          SizedBox(width: 10,),
                          Icon(Icons.person,
                            color: Colors.pink,
                            size: 20,),
                        ],
                      ),
                    ],),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 10,
                                spreadRadius: 7,
                              ),
                            ]),
                        child: Image.asset("assets/images/person.png"),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Column(children: [
                          Icon(Icons.star,color: Colors.pink,
                            size: 20,),
                          Text("4.2"),
                        ],),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 1.5,
              color: Colors.pink,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue)
                  ),
                  child: Icon(Icons.call_rounded,
                  size: 40,
                  color: Colors.pink,),
                ),
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue)
                  ),
                  child: Icon(Icons.chat,
                   size: 30,
                  color: Colors.pink,),
                ),
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue)
                  ),
                  child: Center(
                    child: Icon(Icons.info_rounded,
                    size: 40,
                    color: Colors.pink,),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/webgl.png"),
                  fit: BoxFit.cover
                ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      spreadRadius: 7,
                    ),
                  ]),
            )
          ],
        )
    );
  }
}
