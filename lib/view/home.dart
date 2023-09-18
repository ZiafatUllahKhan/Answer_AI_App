

import 'package:answers/view/trending.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../res/colors/app_colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 bool isChecked1 = false;
 bool isChecked2 = false;
 bool isChecked3 = false;
 bool isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColor.primaryColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Image.asset("assets/images/logo.png", height: 30,width: 120,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 1, color: AppColor.secondryColor)

              ),
              child: InkWell(
                onTap: (){
                  Get.to(()=>TrendingScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/icons/Vector.png'),
                      SizedBox(width: 15,),
                      Image.asset('assets/icons/Pro.png')
                    ],
                  ),
                ),
              )
            ),
          )

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Text('Ask your question',style: GoogleFonts.poppins(
                  fontSize: 15,color: AppColor.blackColor,fontWeight: FontWeight.w700),),
            ),
             Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 1, color:AppColor.primaryColor,)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                   ),

                // hintText: "Write Your Question",
                   prefixIcon:Image.asset('assets/icons/Vector (1).png')
                   //Icon(Icons.edit,color: Colors.green,)
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container (
                    height: 68,
                    width: 142,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:isChecked1==true? AppColor.primaryColor:AppColor.HexColor,
                    ),
                    child: Row(

                      children: [

                        Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            checkColor: AppColor.whiteColor,
                            activeColor: AppColor.blackColor,
                            value: isChecked1, onChanged:(val){
                          setState(() {
                            isChecked1 = val!;
                            isChecked2=false;
                          });
                        }),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Free',style: GoogleFonts.poppins(
                                fontSize: 15,color:isChecked1==true?AppColor.whiteColor:
                            AppColor.blackColor,fontWeight: FontWeight.w700),),
                            Text('100 Words',style: GoogleFonts.poppins(
                                fontSize: 15,color: isChecked1==true? AppColor.whiteColor:
                            AppColor.blackColor,fontWeight: FontWeight.w500),),
                          ],
                        ),

                      ],
                    ),
                  ) ,
                  Container(
                    height: 68,
                    width: 142,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isChecked2==true? AppColor.primaryColor:AppColor.HexColor,
                    ),
                    child: Row(
                      children: [

                        Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            checkColor: AppColor.whiteColor,
                            activeColor: AppColor.blackColor,
                            value: isChecked2, onChanged:(val){
                          setState(() {
                            isChecked2 = val!;
                            isChecked1=false;

                          });

                        }),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('200 Words',style: GoogleFonts.poppins(
                                fontSize: 15,color:isChecked2==true?AppColor.whiteColor: AppColor.blackColor,fontWeight: FontWeight.w700),),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 68,
                    width: 142,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isChecked3==true? AppColor.secondryColor:AppColor.HexColor,
                    ),
                    child: Row(
                      children: [

                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                            checkColor: AppColor.whiteColor,
                            activeColor: AppColor.blackColor,

                            value: isChecked3, onChanged:(val){
                          setState(() {
                            isChecked3 = val!;
                            isChecked4=false;
                          });
                        }),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('499 Words',style: GoogleFonts.poppins(
                                fontSize: 15,color: AppColor.blackColor,fontWeight: FontWeight.w500),),
                          ],
                        ),

                      ],
                    ),
                  ) ,
                  Container(
                   // height: 68,
                   //  width: 142,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isChecked4==true? AppColor.secondryColor:AppColor.HexColor,
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                            checkColor: AppColor.whiteColor,
                            activeColor: AppColor.blackColor,
                            value: isChecked4, onChanged:(val){
                          setState(() {
                            isChecked4 = val!;
                            isChecked3 = false;
                          });
                        }),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text('Get premium',style: GoogleFonts.poppins(
                                  fontSize: 15,color: AppColor.blackColor,fontWeight: FontWeight.w400),),
                              Text('500+ Words',style: GoogleFonts.poppins(
                                  fontSize: 15,color: AppColor.blackColor,fontWeight: FontWeight.w300),),
                              Text('\$4.99',style: GoogleFonts.poppins(
                                  fontSize: 15,color: AppColor.blackColor,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: (){
                  Get.to(()=>TrendingScreen());
                },
                child: Container(
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Center(child: Text('Get Answers',
                  style: GoogleFonts.poppins(color: AppColor.whiteColor, fontSize: 20),
                  )),
                ),
              ),
            ),
            Center(
              child: Text('Trading Question',
              style: GoogleFonts.poppins(color: AppColor.blackColor,fontSize: 25,
              ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                margin: EdgeInsets.only(top: 10,left: 10, right: 10 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: AppColor.blackColor),
                ),
                child: ExpansionTile(
                  initiallyExpanded: false,
                    title: Text('What is the capital of Netherlands?', style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight:FontWeight.w400),),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('It is a long established fact that a reader will be distracted by the readable '
                          'content of a page when looking at its layout. The point of using Lorem Ipsum is that'
                          ' it has a more-or-less normal distribution of letters, '
                          'as opposed to using Content here, ',style: GoogleFonts.poppins(
                          fontSize: 10,fontWeight: FontWeight.w400),),
                    ),
                    // SizedBox(height: 20,)
                  ],
                ),
              ),
            ),
             SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: AppColor.blackColor),
                ),
                child: ExpansionTile(title:
                Text('What is the capital of Netherlands?',  style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight:FontWeight.w400),),
                children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('It is a long established fact that a reader will be distracted by the readable '
                      'content of a page when looking at its layout. The point of using Lorem Ipsum is that'
                      ' it has a more-or-less normal distribution of letters, '
                      'as opposed to using Content here,', style: GoogleFonts.poppins(
                        fontSize: 10,fontWeight: FontWeight.w400),),
                ),
                ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Container(
                margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: AppColor.blackColor),
                ),
                child: ExpansionTile(title:
                Text('What is the capital of Netherlands?',  style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight:FontWeight.w400),),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('It is a long established fact that a reader will be distracted by the readable '
                          'content of a page when looking at its layout. The point of using Lorem Ipsum is that'
                          ' it has a more-or-less normal distribution of letters, '
                          'as opposed to using Content here,', style: GoogleFonts.poppins(
                        fontSize: 10,fontWeight: FontWeight.w400),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

