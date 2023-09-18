

import 'package:answers/res/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaidScreen extends StatefulWidget {
  const PaidScreen({Key? key}) : super(key: key);

  @override
  State<PaidScreen> createState() => _PaidScreenState();
}

class _PaidScreenState extends State<PaidScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
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

            ),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset("assets/icons/Vector (5).png", height: 16.19, width: 16.58,)),
              ),
              SizedBox(height: 25,),
              Image.asset("assets/images/positive-business-man-woman-point-direction-marked.png",
                height: 238,),
                 SizedBox(height: 10, ),
              Text("Unleash your ", style: GoogleFonts.poppins(
                fontSize: 32, fontWeight: FontWeight.w400,
              ),),
              Text("Answers", style: GoogleFonts.poppins(
                fontSize: 32, fontWeight: FontWeight.w700,
              ),),

              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      checkColor: AppColor.whiteColor,
                      activeColor: AppColor.blackColor,
                      value: isChecked2, onChanged: (val){
                    setState(() {
                      isChecked2 = val!;
                    });
                  }),

                  Text("Faster processing", style: GoogleFonts.poppins(
                    fontSize: 14, color: AppColor.blackColor,fontWeight: FontWeight.w400,
                  ),)
                ],
              ),
              Row(

                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      checkColor: AppColor.whiteColor,
                      activeColor: AppColor.blackColor,
                      value: isChecked3, onChanged: (val){
                    setState(() {
                      isChecked3 = val!;
                    });
                  }),

                  Text("Unlimited answers", style: GoogleFonts.poppins(
                    fontSize: 14, color: AppColor.blackColor,fontWeight: FontWeight.w400,
                  ),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 75,
                    width: 142,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isChecked4==true?AppColor.secondryColor: AppColor.HexColor
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            checkColor: AppColor.whiteColor,
                            activeColor: AppColor.blackColor,
                            value: isChecked4, onChanged: (val){
                         setState(() {
                           isChecked4 = val!;
                           isChecked5 = false;

                         });
                        }),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text('Monthly',style: GoogleFonts.poppins(
                                  fontSize: 15,color:AppColor.blackColor,fontWeight: FontWeight.w700),),
                              Text('\$4.99 ',style: GoogleFonts.poppins(
                                  fontSize: 15,color:
                              AppColor.blackColor,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 142,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isChecked5==true?AppColor.secondryColor: AppColor.HexColor
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              checkColor: AppColor.whiteColor,
                              activeColor: AppColor.blackColor,
                              value: isChecked5, onChanged: (val){
                            setState(() {
                              isChecked5 = val!;
                              isChecked4 = false;

                            });
                          }),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Text('Get 75% off on',style: GoogleFonts.poppins(
                                  fontSize: 10,color:AppColor.blackColor,fontWeight: FontWeight.w400),),
                              Text('Yearly',style: GoogleFonts.poppins(
                                  fontSize: 12,color:AppColor.blackColor,fontWeight: FontWeight.w700),),
                              Text('\$19.99 ',style: GoogleFonts.poppins(
                                  fontSize: 12,color:
                              AppColor.blackColor,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 29,),
              Container(
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 1,),
                             Text('Continue',
                              style: GoogleFonts.poppins(color: AppColor.whiteColor, fontSize: 20, ),
                            ),
                          Icon(Icons.arrow_forward_ios, size: 15, color: AppColor.whiteColor,)
                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ),

      ),
    );
  }
}
