

import 'package:answers/res/colors/app_colors.dart';
import 'package:answers/view/PaidScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColor.primaryColor,
        title: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10,),
            child: Image.asset('assets/images/logo.png', height: 30, width: 120,),),
        actions: [
          Padding(
              padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 1, color: AppColor.secondryColor)
            ),
            child: InkWell(
              onTap: (){
                Get.to( ()=>PaidScreen());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/icons/Vector.png'),
                    SizedBox(width: 15,),
                    Image.asset('assets/icons/Pro.png'),
                  ],
                ),
              ),
            ),
          ),)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset("assets/icons/Vector (5).png",height: 16.19, width: 16.58, )),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 333,
              height: 51,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: AppColor.primaryColor),
                color: AppColor.primaryColor,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Center(
                      child: Text('Q: What is the national anthem of USA?', style: GoogleFonts.poppins(
                        fontSize: 14, color: AppColor.whiteColor, fontWeight: FontWeight.w700
                      ),),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 380,
              width: 333,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1,color: AppColor.primaryColor),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('It is a long established fact that a reader will '
                        'be distracted by the readable content of a page '
                        'when looking at its layout. The point of using Lorem'
                        ' ''Ipsum is that it has a more-or-less normal '
                        'distribution'' of letters, as opposed to using Content'
                        ' here, content here,'' making it look like readable '
                        'English. Many desktop publishing ''packages and web page'
                        ' editors now use Lorem Ipsum as their ''default model '
                        'text, and a search for lorem ipsum will uncover'' many'
                        ' web sites still in their infancy. Various versions have'
                        ' ''evolved over the years, sometimes by accident,'
                        'sometimes on purpose (injected humour and the like).',
                    style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                  )
                ],
              ),
            ),

            Container(
              height: 48,
              width: 177,
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: AppColor.blackColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Copy TEXT',style: GoogleFonts.poppins(
                    fontSize: 15, color: AppColor.blackColor, fontWeight: FontWeight.w500,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset("assets/icons/Vector (2).png"),
                  )
                ],
              ),
            ),
            Container(
              height: 48,
              width: 177,
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.redColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Save as PDF', style: GoogleFonts.poppins(
                    fontSize: 15, color: AppColor.whiteColor, fontWeight: FontWeight.w500,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset("assets/icons/Vector (3).png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                height: 48,
                width: 177,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Save as DOC", style: GoogleFonts.poppins(
                      fontSize: 15, color: AppColor.whiteColor, fontWeight: FontWeight.w500,
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("assets/icons/Vector (4).png"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
