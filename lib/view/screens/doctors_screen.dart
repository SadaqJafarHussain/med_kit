import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_kit/view/screens/doctors_details.dart';
import 'package:med_kit/view/widgets/custom_container.dart';
import 'package:med_kit/view/widgets/doctor_widget.dart';

class DoctorsScreen extends StatelessWidget {
   DoctorsScreen({Key key,this.name}) : super(key: key);
  final String name;
  List<String> doctorsNames=[
    "عيادة الدكتور هيثم حنضل",
    "عيادة بيوتي للتجميل",
    "عيادة قيصر محمد مالك",
    "عيادة الدكتور هيثم حنضل",
    "عيادة الدكتور هيثم حنضل",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: CustomPaint(
                painter: CustomContainer(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
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
                    Text(name,style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Cairo"
                    ),),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Scrollbar(
                interactive: true,
                showTrackOnHover: true,
                isAlwaysShown: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                    itemCount: doctorsNames.length,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          Get.to(()=>DoctorDetails(name: doctorsNames[index],));
                        },
                          child: DoctorWidget(name: doctorsNames[index],));
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
