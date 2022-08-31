import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:posibolt_loyalty/screens/otpscreen/otpscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController countryCodeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  late double screenwidth;
  late double screenheight;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countryCodeController.text = "+91";
  }


  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenheight * 1,
          width: screenwidth * 1,

          // height: double.infinity,
          // width: double.infinity,
          color: Color(0xffEDEDED),
          padding: EdgeInsets.only(left: 30,right: 30,bottom: 30,top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/homescreen.svg",height: screenheight * 0.35,),
              Image.asset("assets/images/posib.png",width: screenwidth * 0.52,),

              Column(
              children: [
                Text("Sign in",style: TextStyle(fontFamily: "SourceSansPro",fontSize: 38,color: Color(0xff383838),fontWeight: FontWeight.bold),),
                SizedBox(height: 20.0,),
                Text("We send a verification code \n to your number",textAlign: TextAlign.center,style: TextStyle(fontFamily: "inter",fontSize: 15,color: Color(0xff818181)),),
              ],
              ),

              Row(
                children: [
                  Container(
                    height: screenheight * 0.07,
                    width: screenwidth * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(14),topLeft: Radius.circular(14) ),
                    ),
                    child: TextField(
                      controller: countryCodeController,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontFamily: 'SourceSansPro',fontSize: 27,fontWeight: FontWeight.w500,color: Color(0xff342914)),
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 4,),
                  Container(
                    height: screenheight * 0.07,
                    width: screenwidth * 0.63,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(14),bottomRight: Radius.circular(14) ),
                    ),
                    child: TextField(
                      controller: phoneNumberController,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontFamily: 'SourceSansPro',fontSize: 27,fontWeight: FontWeight.w500,color: Color(0xff342914)),
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(border: InputBorder.none,contentPadding: EdgeInsets.only(left: 20.0,right: 20.0 ),),
                    ),
                  ),
                ],
              ),


              Center(
                child: SizedBox(
                  height: screenheight * 0.075,
                  width: screenwidth * 1,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  OtpScreen()));
                    },
                    child: Text('Get OTP',style: TextStyle(color: Color(0xfff2f2f2),fontFamily: 'SourceSansPro',fontSize: 20,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(primary: const Color(0xffDB283E), shape: const StadiumBorder()),
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
