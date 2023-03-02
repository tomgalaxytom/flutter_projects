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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: secondaryBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x32000000),
                      offset: Offset(0, 2),
                    ),

                  ],
                  borderRadius: BorderRadius.circular(8)
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [

                      // Hero(
                      //   tag: "DemoTag",
                      //   child: Icon(
                      //     Icons.add,
                      //     size: 70.0,
                      //   ),
                      // ),


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Hero(
                          tag: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg' ,

                          transitionOnUserGestures: true,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            // child: CachedNetworkImage(
                            //   imageUrl:
                            //     'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg',
                            //   placeholder: (context, url) =>
                            //   const CircularProgressIndicator(),
                            //   errorWidget: (context, url, error) => const Icon(Icons.error),
                            //   width: double.infinity,
                            //   height: 190,
                            //   fit: BoxFit.cover,
                            // ),
                            child: CachedNetworkImage(
                              width: double.infinity,
                              height: 190,
                              fit: BoxFit.cover,
                              imageUrl: "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg",
                              placeholder: (context, url) => CircularProgressIndicator(),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              cacheManager: CacheManager(
                                  Config(
                                    "fluttercampus",
                                    stalePeriod: const Duration(days: 7),
                                    //one week cache period
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Hero(
                          tag: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg' ,

                          transitionOnUserGestures: true,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            // child: CachedNetworkImage(
                            //   imageUrl:
                            //     'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg',
                            //   placeholder: (context, url) =>
                            //   const CircularProgressIndicator(),
                            //   errorWidget: (context, url, error) => const Icon(Icons.error),
                            //   width: double.infinity,
                            //   height: 190,
                            //   fit: BoxFit.cover,
                            // ),
                            child: CachedNetworkImage(
                              width: double.infinity,
                              height: 190,
                              fit: BoxFit.cover,
                              imageUrl: "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg",
                              placeholder: (context, url) => CircularProgressIndicator(),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              cacheManager: CacheManager(
                                  Config(
                                    "fluttercampus",
                                    stalePeriod: const Duration(days: 7),
                                    //one week cache period
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Hero(
                          tag: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg' ,

                          transitionOnUserGestures: true,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            // child: CachedNetworkImage(
                            //   imageUrl:
                            //     'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg',
                            //   placeholder: (context, url) =>
                            //   const CircularProgressIndicator(),
                            //   errorWidget: (context, url, error) => const Icon(Icons.error),
                            //   width: double.infinity,
                            //   height: 190,
                            //   fit: BoxFit.cover,
                            // ),
                            child: CachedNetworkImage(
                              width: double.infinity,
                              height: 190,
                              fit: BoxFit.cover,
                              imageUrl: "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg",
                              placeholder: (context, url) => CircularProgressIndicator(),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              cacheManager: CacheManager(
                                  Config(
                                    "fluttercampus",
                                    stalePeriod: const Duration(days: 7),
                                    //one week cache period
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

              ),
            ),


            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            //   child: StreamBuilder<List<PropertiesRecord>>(
            //     stream: queryPropertiesRecord(
            //       queryBuilder: (propertiesRecord) =>
            //           propertiesRecord.orderBy('lastUpdated', descending: true),
            //     ),
            //     builder: (context, snapshot) {
            //       // Customize what your widget looks like when it's loading.
            //       if (!snapshot.hasData) {
            //         return Center(
            //           child: SizedBox(
            //             width: 50,
            //             height: 50,
            //             child: CircularProgressIndicator(
            //               color: FlutterFlowTheme.of(context).primaryColor,
            //             ),
            //           ),
            //         );
            //       }
            //       List<PropertiesRecord> listViewPropertiesRecordList =
            //           snapshot.data!;
            //       return ListView.builder(
            //         padding: EdgeInsets.zero,
            //         primary: false,
            //         shrinkWrap: true,
            //         scrollDirection: Axis.vertical,
            //         itemCount: listViewPropertiesRecordList.length,
            //         itemBuilder: (context, listViewIndex) {
            //           final listViewPropertiesRecord =
            //               listViewPropertiesRecordList[listViewIndex];
            //           return Padding(
            //             padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
            //             child: Container(
            //               width: double.infinity,
            //               decoration: BoxDecoration(
            //                 color: FlutterFlowTheme.of(context)
            //                     .secondaryBackground,
            //                 boxShadow: [
            //                   BoxShadow(
            //                     blurRadius: 4,
            //                     color: Color(0x32000000),
            //                     offset: Offset(0, 2),
            //                   )
            //                 ],
            //                 borderRadius: BorderRadius.circular(8),
            //               ),
            //               child: InkWell(
            //                 onTap: () async {
            //                   await Navigator.push(
            //                     context,
            //                     MaterialPageRoute(
            //                       builder: (context) => PropertyDetailsWidget(
            //                         propertyRef: listViewPropertiesRecord,
            //                       ),
            //                     ),
            //                   );
            //                 },
            //                 child: Column(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Hero(
            //                       tag: valueOrDefault<String>(
            //                         listViewPropertiesRecord.mainImage,
            //                         'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg' +
            //                             '$listViewIndex',
            //                       ),
            //                       transitionOnUserGestures: true,
            //                       child: ClipRRect(
            //                         borderRadius: BorderRadius.only(
            //                           bottomLeft: Radius.circular(0),
            //                           bottomRight: Radius.circular(0),
            //                           topLeft: Radius.circular(8),
            //                           topRight: Radius.circular(8),
            //                         ),
            //                         child: CachedNetworkImage(
            //                           imageUrl: valueOrDefault<String>(
            //                             listViewPropertiesRecord.mainImage,
            //                             'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-property-finder-834ebu/assets/jyeiyll24v90/pixasquare-4ojhpgKpS68-unsplash.jpg',
            //                           ),
            //                           width: double.infinity,
            //                           height: 190,
            //                           fit: BoxFit.cover,
            //                         ),
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: EdgeInsetsDirectional.fromSTEB(
            //                           16, 12, 16, 8),
            //                       child: Row(
            //                         mainAxisSize: MainAxisSize.max,
            //                         children: [
            //                           Expanded(
            //                             child: Text(
            //                               listViewPropertiesRecord.propertyName!
            //                                   .maybeHandleOverflow(
            //                                 maxChars: 36,
            //                                 replacement: '…',
            //                               ),
            //                               style: title2,
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: EdgeInsetsDirectional.fromSTEB(
            //                           16, 0, 16, 8),
            //                       child: Row(
            //                         mainAxisSize: MainAxisSize.max,
            //                         children: [
            //                           Expanded(
            //                             child: Text(
            //                               listViewPropertiesRecord
            //                                   .propertyNeighborhood!
            //                                   .maybeHandleOverflow(
            //                                 maxChars: 90,
            //                                 replacement: '…',
            //                               ),
            //                               style: FlutterFlowTheme.of(context)
            //                                   .bodyText1,
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     StreamBuilder<List<ReviewsRecord>>(
            //                       stream: queryReviewsRecord(
            //                         queryBuilder: (reviewsRecord) =>
            //                             reviewsRecord.where('propertyRef',
            //                                 isEqualTo: listViewPropertiesRecord
            //                                     .reference),
            //                       ),
            //                       builder: (context, snapshot) {
            //                         // Customize what your widget looks like when it's loading.
            //                         if (!snapshot.hasData) {
            //                           return Center(
            //                             child: SizedBox(
            //                               width: 50,
            //                               height: 50,
            //                               child: CircularProgressIndicator(
            //                                 color: FlutterFlowTheme.of(context)
            //                                     .primaryColor,
            //                               ),
            //                             ),
            //                           );
            //                         }
            //                         List<ReviewsRecord>
            //                             containerReviewsRecordList =
            //                             snapshot.data!;
            //                         return Container(
            //                           height: 40,
            //                           decoration: BoxDecoration(),
            //                           child: Padding(
            //                             padding: EdgeInsetsDirectional.fromSTEB(
            //                                 16, 0, 24, 12),
            //                             child:
            //                                 StreamBuilder<List<ReviewsRecord>>(
            //                               stream: queryReviewsRecord(
            //                                 queryBuilder: (reviewsRecord) =>
            //                                     reviewsRecord.where(
            //                                         'propertyRef',
            //                                         isEqualTo:
            //                                             listViewPropertiesRecord
            //                                                 .reference),
            //                                 singleRecord: true,
            //                               ),
            //                               builder: (context, snapshot) {
            //                                 // Customize what your widget looks like when it's loading.
            //                                 if (!snapshot.hasData) {
            //                                   return Center(
            //                                     child: SizedBox(
            //                                       width: 50,
            //                                       height: 50,
            //                                       child:
            //                                           CircularProgressIndicator(
            //                                         color: FlutterFlowTheme.of(
            //                                                 context)
            //                                             .primaryColor,
            //                                       ),
            //                                     ),
            //                                   );
            //                                 }
            //                                 List<ReviewsRecord>
            //                                     ratingBarReviewsRecordList =
            //                                     snapshot.data!;
            //                                 final ratingBarReviewsRecord =
            //                                     ratingBarReviewsRecordList
            //                                             .isNotEmpty
            //                                         ? ratingBarReviewsRecordList
            //                                             .first
            //                                         : null;
            //                                 return Row(
            //                                   mainAxisSize: MainAxisSize.max,
            //                                   children: [
            //                                     Icon(
            //                                       Icons.star_rounded,
            //                                       color: Color(0xFFFFA130),
            //                                       size: 24,
            //                                     ),
            //                                     Padding(
            //                                       padding: EdgeInsetsDirectional
            //                                           .fromSTEB(4, 0, 0, 0),
            //                                       child: Text(
            //                                         functions.ratingSummaryList(
            //                                             containerReviewsRecordList
            //                                                 .toList()),
            //                                         style: FlutterFlowTheme.of(
            //                                                 context)
            //                                             .bodyText1,
            //                                       ),
            //                                     ),
            //                                     Padding(
            //                                       padding: EdgeInsetsDirectional
            //                                           .fromSTEB(2, 0, 0, 0),
            //                                       child: Text(
            //                                         'Rating',
            //                                         style: FlutterFlowTheme.of(
            //                                                 context)
            //                                             .bodyText1,
            //                                       ),
            //                                     ),
            //                                   ],
            //                                 );
            //                               },
            //                             ),
            //                           ),
            //                         );
            //                       },
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           );
            //         },
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
