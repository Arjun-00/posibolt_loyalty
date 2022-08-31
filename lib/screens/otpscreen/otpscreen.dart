import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:posibolt_loyalty/screens/homescreen/homescreen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  OtpFieldController otpController = OtpFieldController();
  late double screenwidth;
  late double screenheight;
  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenheight * 1,
        width: screenwidth * 1,
        color: Color(0xffEDEDED),
        padding: EdgeInsets.only(left: 30,right: 30,bottom: 30,top: 50),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.c,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: ClipOval(
                child: Material(
                  color: Color(0xffEDEDED), // Button color
                  child: InkWell(
                    splashColor: Colors.white, // Splash color
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  HomeScreen()));
                      //Navigator.of(context).pushReplacementNamed("/tableselectionscreen");
                    },
                    child: const SizedBox(width: 40, height: 55,
                        child: Icon(Icons.arrow_back_ios, size: 27, color: Colors.black,)),
                  ),
                ),
              ),
            ),

            SizedBox(height: screenheight * 0.02,),

            Text("Verify your\nphone number",textAlign: TextAlign.center,style: TextStyle(fontFamily: "SourceSanProBold",fontSize: 34,color: Color(0xff383838)),),
            SizedBox(height: screenheight * 0.02,),
            Text("Enter your OTP code here",textAlign: TextAlign.center,style: TextStyle(fontFamily: "inter",fontSize: 15,color: Color(0xff818181)),),

            SizedBox(height: screenheight * 0.07,),

            OTPTextField(
                controller: otpController,
                length: 4,
                width: screenwidth * 0.7,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 50,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 15,
                style: TextStyle(fontFamily: "SourceSanProBold",fontSize: 20,color: Color(0xff383838)),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                }),

            SizedBox(height: screenheight * 0.07,),
            Text("Didn't receive any code?",textAlign: TextAlign.center,style: TextStyle(fontFamily: "inter",fontSize: 15,color: Color(0xff818181)),),

            SizedBox(height: screenheight * 0.02,),
            Text("RESEND NEW CODE",textAlign: TextAlign.center,style: TextStyle(fontFamily: "SourceSanProBold",fontSize: 20,color: Color(0xffDB283E)),),
          ],
        ),
      ),
    );
  }
}
