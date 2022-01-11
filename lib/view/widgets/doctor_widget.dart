import 'package:flutter/material.dart';
class DoctorWidget extends StatelessWidget {
  final String name;
  const DoctorWidget({Key key,this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
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
                child: Text("طب وجراحة الاسنان-تنظيف-قلع-ابتسامة هولويود",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
                Row(
                  children: [
                    Text("مدة الحجز-حجز مباشر-سعر الكشفية : 10 الف",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),),
                    Icon(Icons.watch_later_outlined,
                    color: Colors.pink,
                    size: 20,),
                  ],
                ),
                Row(
                  children: [
                    Text("ناصريه-الحبوبي-شارع الكنز",style: TextStyle(
                        fontSize: 12,
                      color: Colors.blue
                    ),),
                    Icon(Icons.location_on,
                      color: Colors.pink,
                      size: 20,),
                    Text("طبيب اسنان",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 10,),
                    Icon(Icons.person,
                      color: Colors.pink,
                      size: 20,),
                  ],
                ),
            ],),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 70,
              width: 70,
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
              child: Stack(
                children: [
                  Center(child: Image.asset("assets/images/person.png")),
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
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}
