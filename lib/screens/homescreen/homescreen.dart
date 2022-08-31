import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        padding: EdgeInsets.only(left: 30,right: 30,bottom: 30,top: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 50,),
                Image.asset("assets/images/posib.png",width: screenwidth * 0.3,),

                ClipOval(
                  child: Material(
                    color: const Color(0xffE9E8EB),
                    child: InkWell(
                      splashColor: const Color(0xfff9f9f9),
                      onTap: () {
                        _bottomLogoutSheet(context);
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CartScreen()));
                      },
                      child: Padding(
                          padding: EdgeInsets.all(9.0),
                          child: SvgPicture.asset("assets/images/usericon.svg",height: screenheight * 0.027)),
                    ),
                  ),
                ),
              ],
            ),

        SizedBox(height: screenheight * 0.035,),
        Container(
          height: screenheight * 0.2,
          padding: EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              //stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
               Color(0xfff45c43),
                Color(0xffeb3349)
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Total  points",style: TextStyle(fontFamily: "SourceSanProBold",fontSize: 34,color: Colors.white),),

                Text("1250",style: TextStyle(fontFamily: "SourceSanProBold",fontSize: 34,color: Colors.white),),
              ],
            ),
          ),
        ),
            SizedBox(height: screenheight * 0.06,),

            Stack(
              children: [

                Container(
                  height: screenheight * 0.55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36.0),
                    color: Color(0xffE0E0EB),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.5),
                    //     spreadRadius: 3,
                    //     blurRadius: 10,
                    //     offset: Offset(0, 1), // changes position of shadow
                    //   ),
                    // ],
                  ),
                  child:
                  Column(
                    children: [

                      Container(
                        height: screenheight * 0.185,
                       width: screenwidth * 1,
                       padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Scan bar code",style: TextStyle(fontFamily: "SourceSanProBold",fontSize: 34,color: Color(0xff383838)),),
                            Text("Scan this code to redeem points",textAlign: TextAlign.center,style: TextStyle(fontFamily: "inter",fontSize: 15,color: Color(0xff818181)),),
                          ],
                        ),
                      ),
                      DottedLine(),

                      Container(
                        width: screenwidth * 1,
                        height: screenheight * 0.363,
                        padding: EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/barcode.png",height: screenheight * 0.24,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Or use",textAlign: TextAlign.center,style: TextStyle(fontFamily: "inter",fontSize: 15,color: Color(0xff818181)),),
                                SizedBox(width: 10,),
                                Image.asset("assets/images/handicon.png",height: 15,),
                                SizedBox(width: 10,),
                                Text(":",textAlign: TextAlign.center,style: TextStyle(fontFamily: "inter",fontSize: 15,color: Color(0xff818181)),),
                                SizedBox(width: 10,),
                                Text("POS123B",textAlign: TextAlign.center,style: TextStyle(fontFamily: "inter",fontSize: 15,color: Color(0xff818181)),),
                              ],
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                Positioned(
                  top: screenheight * 0.17,
                  left: -30,
                  child: ClipOval(
                    child: Material(
                      color: Color(0xffEDEDED), // Button color
                      child: SizedBox(width: 50, height: 30,),
                    ),
                  ),
                ),


                Positioned(
                  top: screenheight * 0.17,
                  right: -30,
                  child: ClipOval(
                    child: Material(
                      color: Color(0xffEDEDED),
                      child: const SizedBox(width: 50, height: 30,),
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }

///Logout Screen
  void _bottomLogoutSheet(BuildContext context) async{
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        builder: (builder) {
          return Container(
            height: screenheight * 0.215,
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 15.0),
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0))
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: SvgPicture.asset('assets/images/bottombarindicator.svg'),
                      ),
                      const SizedBox(height: 25.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10.0,),
                          ClipOval(
                            child: Material(
                              color: const Color(0xffE9E8EB),
                              child: InkWell(
                                splashColor: const Color(0xfff9f9f9),
                                child: Padding(
                                    padding: EdgeInsets.all(9.0),
                                    child: SvgPicture.asset("assets/images/usericon.svg",height: screenheight * 0.027,color: Color(0xff8E8E93),)),
                              ),
                            ),
                          ),
                          //SvgPicture.asset('assets/Vector.svg', color: const Color(0xff8E8E93) ,height: 43),
                          const SizedBox(width: 15.0,),
                          Text("Ramzan",style: TextStyle(fontFamily: 'SourceSansPro',fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff8E8E93)),),
                        ],
                      ),

                      const SizedBox(height: 22.0,),
                      Center(
                        child: SizedBox(
                          height: screenheight * 0.075,
                          width: screenwidth * 1,
                          child: ElevatedButton(
                            onPressed: () {

                            },
                            child: Text('Logout', style: TextStyle(fontFamily: 'SourceSansPro',fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xffffffff)),),
                            style: ElevatedButton.styleFrom(primary: const Color(0xffDB283E), shape: const StadiumBorder()),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }

}
