import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import '../theme.dart';
import '../widgets/custombutton.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({Key? key, required String title}) : super(key: key);

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: primaryBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: dart600Color,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    color: Color(0x39000000),
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 40, 0, 0),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Tata_Consultancy_Services_Logo.svg/2560px-Tata_Consultancy_Services_Logo.svg.png',
                      width: 160,
                      height: 50,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome!',
                          style: TextStyle(
                              fontSize: 24,
                              color: tertiaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Find your Dream Space To Getaway',
                          style: TextStyle(fontSize: 16, color: greyIconColor),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: primaryBackgroundColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                              child: TextFormField(
                                //controller: _model.textController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Address, city, state...',
                                  labelStyle: bodytext1,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search_sharp,
                                    color: greyIconColor,
                                  ),
                                ),
                                style: bodytext1,
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                          //   child: MyButton(buttonText: "Search",onTap: () => {},),
                          // ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pinkAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  elevation: 15.0,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    'Search',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Column(
            //   // mainAxisSize: MainAxisSize.max,
            //   children: [
            //     Container(
            //       width: double.infinity,
            //       height: 190,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: ClipRRect(
            //           borderRadius: BorderRadius.circular(8.0),
            //           child: Image.network(
            //             "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg",
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //       ),
            //     ),
            //     Align(
            //       alignment: Alignment.topLeft,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(
            //           "Title 3",
            //           style: TextStyle(
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold,
            //               color: Colors.black),
            //         ),
            //       ),
            //     ),
            //
            //
            //   ],
            // ),
            // Card(
            //   color: Colors.white,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(15),
            //
            //   ),
            //   child: Column(
            //     children: [
            //     Image.network(
            //       "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg",
            //       fit: BoxFit.cover,
            //       width: double.infinity,
            //       height: 190,
            //     ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 16.0,top: 12.0,right: 12.0,bottom: 8.0),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           mainAxisSize: MainAxisSize.max,
            //           children: [
            //             Text("propertyName",style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontSize: 20,
            //               color: Colors.black
            //
            //             ),)
            //           ],
            //         ),
            //       )
            //
            //     ],
            //   ),
            // )

            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 0.0, right: 16.0, bottom: 12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff32000000),
                        blurRadius: 4.0,
                        offset: const Offset(
                          0.0,
                          2.0,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                          // topRight: 8.0,topLeft: 8.0,bottomRight: 0,bottomLeft: 0
                        ),
                        child: Image.network(
                          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 190,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16, top: 12, right: 16, bottom: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Property Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16, top: 12, right: 16, bottom: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Property Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 16, top: 0, right: 24, bottom: 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Color(0xffffa130),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                child: Text("ratingSummaryList",
                                  style: TextStyle(

                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey

                                ),),

                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("Rating",
                                  style: TextStyle(

                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey

                                  ),),

                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 0.0, right: 16.0, bottom: 12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff32000000),
                        blurRadius: 4.0,
                        offset: const Offset(
                          0.0,
                          2.0,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                          // topRight: 8.0,topLeft: 8.0,bottomRight: 0,bottomLeft: 0
                        ),
                        child: Image.network(
                          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 190,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16, top: 12, right: 16, bottom: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Property Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16, top: 12, right: 16, bottom: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Property Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 16, top: 0, right: 24, bottom: 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Color(0xffffa130),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                child: Text("ratingSummaryList",
                                  style: TextStyle(

                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey

                                ),),

                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("Rating",
                                  style: TextStyle(

                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey

                                  ),),

                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 0.0, right: 16.0, bottom: 12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff32000000),
                        blurRadius: 4.0,
                        offset: const Offset(
                          0.0,
                          2.0,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                          // topRight: 8.0,topLeft: 8.0,bottomRight: 0,bottomLeft: 0
                        ),
                        child: Image.network(
                          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 190,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16, top: 12, right: 16, bottom: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Property Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16, top: 12, right: 16, bottom: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Property Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 16, top: 0, right: 24, bottom: 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 24,
                                color: Color(0xffffa130),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                child: Text("ratingSummaryList",
                                  style: TextStyle(

                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey

                                ),),

                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("Rating",
                                  style: TextStyle(

                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey

                                  ),),

                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
