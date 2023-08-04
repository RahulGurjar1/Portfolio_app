import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/widgets/handle_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class AcadPage extends StatefulWidget {
  const AcadPage({super.key});

  @override
  State<AcadPage> createState() => _AcadPageState();
}

class _AcadPageState extends State<AcadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: "#01030b".toColor(),
        body: Container(
          margin: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 0.0),
          child: Column(
            children: [
              Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child:  CircleAvatar(
                                  radius: 60.0,
                                  backgroundImage: NetworkImage(
                                      'https://static.vecteezy.com/system/resources/previews/019/166/308/original/lion-head-lion-logo-symbol-gaming-logo-elegant-element-for-brand-abstract-symbols-vector.jpg'),
                                ),
                            ),
                            Container(

                              child: Container(
                                padding: const EdgeInsets.all(4),
                                child: Text('Rahul Gurjar',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.fredoka(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 25.0,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                            Container(
                              child: Container(
                                padding: const EdgeInsets.all(2),
                                child: Text('EDUCATION',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.fredoka(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 35,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // const Spacer(
                      //   flex: 3,
                      // ),
                      // const HandleBar(),
                    ],
                  )),
              Container(
                margin: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // const Spacer(
                    //   flex: 1,
                    // ),

                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      // height: 100,
                      // width: 900,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        color: "#bfc9e0".toColor().withOpacity(0.6),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            // radius: 60.0,
                            backgroundImage: NetworkImage(
                                'https://static.vecteezy.com/system/resources/previews/019/166/308/original/lion-head-lion-logo-symbol-gaming-logo-elegant-element-for-brand-abstract-symbols-vector.jpg'),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Text(
                                "Indian Institute of Technology Jodhpur\n"
                                    "B.Tech in Electrical Engineering\n"
                                    "2021-2025\nC.G.P.A.-8.12",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      // height: 100,
                      // width: 900,
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50)),
                        color: "#bfc9e0".toColor().withOpacity(0.6),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            // radius: 60.0,
                            backgroundImage: NetworkImage(
                                'https://static.vecteezy.com/system/resources/previews/019/166/308/original/lion-head-lion-logo-symbol-gaming-logo-elegant-element-for-brand-abstract-symbols-vector.jpg'),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Text(
                                "Apex International School\nClass 12th\nPercentage-93.4%",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      // height: 100,
                      // width: 900,
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50)),
                        color: "#bfc9e0".toColor().withOpacity(0.6),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            // radius: 60.0,
                            backgroundImage: NetworkImage(
                                'https://static.vecteezy.com/system/resources/previews/019/166/308/original/lion-head-lion-logo-symbol-gaming-logo-elegant-element-for-brand-abstract-symbols-vector.jpg'),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Text(
                                "Raghav World School\nClass 10th\nPercentage-94.4%",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
