import 'package:flutter/material.dart';
import 'package:ui/theme.dart';

import '../widgets/PageViewWidget.dart';

class PropertyDetails extends StatelessWidget {
  const PropertyDetails({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 320,
                    decoration: BoxDecoration(
                      // color: Color(0xFFDBE2E7),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: InkWell(
                            onTap: () {},
                            child: Hero(
                              tag: "Hello",
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/oowrriphtb4n/hero_home@3x.jpg",
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.05, 0.1),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        Navigator.pop(context);
                                      },
                                      child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0x3A000000),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          // child: FlutterFlowIconButton(
                                          //   borderColor:
                                          //   Colors.transparent,
                                          //   borderRadius: 30,
                                          //   buttonSize: 46,
                                          //   icon: Icon(
                                          //     Icons.arrow_back_rounded,
                                          //     color: Colors.white,
                                          //     size: 24,
                                          //   ),
                                          //   onPressed: () async {
                                          //     Navigator.pop(context);
                                          //   },
                                          // ),
                                          child: IconButton(
                                            onPressed: () {
                                              print("Icon Button Pressed");
                                            },
                                            icon: Icon(
                                              Icons.arrow_back_rounded,
                                              color: Colors.white,
                                              size: 24,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      child: Text(
                    "propertyName!",
                    style: title1,
                  )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text("propertyNeighborhood!", style: bodytext2),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
                child: InkWell(
                  onTap: () async {},
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Color(0xFFFFA130),
                        size: 24,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                        child: Text(
                          "Hello Wolrd",
                          style: bodytext2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                        child: Text('Reviews', style: bodytext2),
                      ),
                    ],
                  ),
                )),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('DESCRIPTION', style: bodytext2),
                  ],
                )),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                        child: Text("propertyDescription!", style: bodytext2)),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('Amenities', style: bodytext2),
                  ],
                )),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.ev_station,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.pool_rounded,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.power_rounded,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.ac_unit_rounded,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.pets_rounded,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.local_laundry_service_outlined,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.local_laundry_service_rounded,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.fitness_center_rounded,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.nightlife,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.theater_comedy,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.wb_sunny_rounded,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryBackgroundColor,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'What people are saying',
                              style: bodytext2,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 330,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: PageViewWidget(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: secondaryBackgroundColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x24090F13),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "display_name",
                                          style: TextStyle(
                                              fontWeight:
                                              FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                              EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  0, 4, 0, 0),
                                              child: Icon(
                                                Icons.star_rounded,
                                                color:
                                                Color(0xFFFFA130),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  0, 4, 0, 0),
                                              child: Icon(
                                                Icons.star_rounded,
                                                color:
                                                Color(0xFFFFA130),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  0, 4, 0, 0),
                                              child: Icon(
                                                Icons.star_rounded,
                                                color:
                                                Color(0xFFFFA130),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  0, 4, 0, 0),
                                              child: Icon(
                                                Icons.star_rounded,
                                                color:
                                                Color(0xFFFFA130),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  0, 4, 0, 0),
                                              child: Icon(
                                                Icons.star_rounded,
                                                color:
                                                Color(0xFFFFA130),
                                              ),
                                            ),
                                          ],
                                        ),



                                      ],
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: Colors.black,
                                      child: Icon(
                                        Icons.nightlife,
                                        size: 35.0,
                                        color: Colors.white,
                                      ),
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 24.0),
                                        child: Text(
                                          "Rating Description",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey

                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color:primaryTextColor,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x55000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 40),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '\$156',
                                        style: TextStyle(
                                          color: secondaryBackgroundColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold

                                        )

                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                        child: Text(
                                          '+ taxes/fees',
                                          style: TextStyle(
                                            color: Color(0xff8B97A2),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                    child: Text(
                                      'per night',
                                      style: TextStyle(
                                          color: Color(0xff8B97A2),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                      )
                                         ,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff4B39EF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      elevation: 15.0,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        'Book Now',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
