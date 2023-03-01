import 'package:flutter/material.dart';
final TextStyle textstyleheading = TextStyle(
  fontSize: 15,
  color: Colors.black54,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  //backgroundColor: Colors.blue
);

final TextStyle textstylesubheading = TextStyle(
  fontSize: 18,
  color: Colors.black54,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  //backgroundColor: Colors.blue
);

final TextStyle btext1textstyle = TextStyle(
  fontSize: 20,
  color: Colors.white,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
//backgroundColor: Colors.blue
);
final TextStyle btext2textstyle = TextStyle(
  fontSize: 18,
  color: Colors.white,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
//backgroundColor: Colors.blue
);
final TextStyle btext3textstyle = TextStyle(
  fontSize: 16,
  color: Colors.white,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
//backgroundColor: Colors.blue
);


/*
      Title : Network Image With Rounded Corner
      Hint : Using ClipRRect Widget
      Date : 22-12-2022

      NetworkImageWithRoundedCorner(
          networkimgurl:'https://wallpaperaccess.com/full/2070441.jpg',
          width:double.infinity
           ),
 */
Widget NetworkImageWithRoundedCorner({String? networkimgurl, double width = 100}){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Image.network(
        networkimgurl!,
        fit: BoxFit.cover,
        width: width,
      ),
    ),
  );
}
/*
      Title : Asset Image With Rounded Corner
      Hint : Using ClipRRect Widget
      Date : 22-12-2022

      AssetImageWithRoundedCorner(
          assetimgurl:'assets/images/logo.png',
          width:double.infinity
           ),
 */
Widget AssetImageWithRoundedCorner({String? assetimgurl, double width = 100}){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Image.asset(
        assetimgurl!,
        fit: BoxFit.cover,
        width: width,
      ),
    ),
  );
}

/*

      Title : Network Image With Opacity Rounded Corner
      Hint : Using COntainer Widget
      Date : 22-12-2022

 networkimagewidgetwithdiwithopacity(
                  context,
                  'https://i.pinimg.com/originals/a4/96/c2/a496c2b6bc5d7cfe0e0674f6598c38ad.jpg',
                  'Nature Image' ,
                  'Chennai'

              ),

 */


Widget networkimagewidgetwithdiwithopacity(
    BuildContext context ,
    String networkimgurl,
    String title1,
    String title2

    ) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/3,
        padding: const EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            image: DecorationImage(
              image: NetworkImage(networkimgurl),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.darken,
              ),
            )),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
            title1,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                title2,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              )
            ])),
  );
}

/*

       Title : Asset Image With Opacity Rounded Corner
       Hint : Using COntainer Widget
       Date : 22-12-2022

 assetimagewidgetwithdiwithopacity(
                  context,
                  'assets/images/logo.jpg',
                  'Nature Image' ,
                  'Chennai'

              ),

 */


Widget assetimagewidgetwithdiwithopacity(
    BuildContext context ,
    String networkimgurl,
    String title1,
    String title2

    ) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/3,
        padding: const EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            image: DecorationImage(
              image: AssetImage(networkimgurl),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.darken,
              ),
            )),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                title1,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                title2,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              )
            ])),
  );
}

/*


      Title : Build Burger Widget
      Hint : one Row with 2 container
      Date : 22-12-2022

Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: BuildBurgerWidget(
                          url:
                          "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg",
                          containercolor: Color(0xFF010101),
                          img_width: 200,
                          img_height: 200,
                          btext1: "Beef Berger",
                          btext2: "Onion with Chees",
                          btext3: "\$24.00",
                          btext1textstyle: btext1textstyle,
                          btext2textstyle: btext2textstyle,
                          btext3textstyle: btext3textstyle,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: BuildBurgerWidget(
                            url:
                            "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg",
                            containercolor: Color(0xFF010101),
                            img_width: 200,
                            img_height: 200,
                            btext1: "Beef Berger",
                            btext2: "Onion with Chees",
                            btext3: "\$24.00",
                            btext1textstyle: btext1textstyle,
                            btext2textstyle: btext2textstyle,
                            btext3textstyle: btext3textstyle,
                          )),
                    ],
                  ),
                ),
              ),


 */

class BuildBurgerWidget extends StatelessWidget {
  final String url;
  final Color containercolor;
  final double img_width;
  final double img_height;
  final String btext1;
  final String btext2;
  final String btext3;
  final TextStyle btext1textstyle;
  final TextStyle btext2textstyle;
  final TextStyle btext3textstyle;
  const BuildBurgerWidget({
    Key? key,
    required this.url,
    required this.containercolor,
    required this.img_width,
    required this.img_height,
    required this.btext1,
    required this.btext2,
    required this.btext3,
    required this.btext1textstyle,
    required this.btext2textstyle,
    required this.btext3textstyle,
  }) : super(key: key);

  // final url =
  //     "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          //width: 50,
          //height: 200,
          padding: const EdgeInsets.all(12),
          color: containercolor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                url,
                width: img_width,
                height: img_height,
                fit: BoxFit.cover,
              ),
              Text(
                //"Beef Burger",
                btext1,
                style: btext1textstyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                //"onion with chees",
                btext2,
                style: btext2textstyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                //"\$24.00",
                btext3,
                style: btext3textstyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*
                     Title : Icon Card Widget
                     Hint : Icon Card Widget with Grid Design(May Be use in Dashboard Design)
                     Date : 22-12-2022


Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Expanded(
                            child: Center(
                              child: IconCardWidget(
                                  cardcolor: Color(0xFF40358a),
                                  cwidth: 200,
                                  cheight: 200,
                                  icon: Icons.home,
                                  iconcolor: Color(0xFF00dcff),
                                  iconsize: 48,
                                  text1: "Active",
                                  text2: "2 Times a day",
                                  textstyleheading: textstyleheading,
                                  textstylesubheading: textstylesubheading),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: IconCardWidget(
                                  cardcolor: Color(0xFF40358a),
                                  cwidth: 200,
                                  cheight: 200,
                                  icon: Icons.home,
                                  iconcolor: Color(0xFF00dcff),
                                  iconsize: 48,
                                  text1: "Active",
                                  text2: "2 Times a day",
                                  textstyleheading: textstyleheading,
                                  textstylesubheading: textstylesubheading),
                            ),
                          ),

                        ],),


 */



class IconCardWidget extends StatelessWidget {
  final Color cardcolor;
  final double cwidth;
  final double cheight;
  final IconData icon;
  final Color iconcolor;
  final double iconsize;
  final String text1;
  final String text2;
  final TextStyle textstyleheading;
  final TextStyle textstylesubheading;
  const IconCardWidget({
    Key? key,
    required this.cardcolor,
    required this.cwidth,
    required this.cheight,
    required this.icon,
    required this.iconcolor,
    required this.iconsize,
    required this.text1,
    required this.text2,
    required this.textstyleheading,
    required this.textstylesubheading,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardcolor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      child: Container(
        width: cwidth,
        height: cheight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            Icon(
              icon,
              color: iconcolor,
              size: iconsize,
            ),
            Text(
              text1,
              style: textstyleheading,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              text2,
              style: textstylesubheading,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/*

                     Title : Build Subject Widget
                     Hint : It is used instead of List Tile Design.Black Container left side small image with Border,center Chemistry test display,right side no 2 displayed
                     Date : 22-12-2022

Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildSubject(),
              ),

 */




Widget buildSubject() {
  final urlChemistry =
      'https://images.unsplash.com/photo-1575503802870-45de6a6217c8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';

  return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(8),
        color: Colors.black,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                urlChemistry,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'Chemistry',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white30,
                width: 80,
                height: 80,
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ));
}




/*

                     Title : Build Subject Widget
                     Hint : 4 Icons were display and rounded background and inside icon display
                     Date : 22-12-2022

  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BuildIconWidget(
                    icon: Icons.cake,
                  ),
                  BuildIconWidget(
                    icon: Icons.local_drink,
                  ),
                  BuildIconWidget(
                    icon: Icons.icecream,
                  ),
                  BuildIconWidget(
                    icon: Icons.no_meals,
                  ),
                ],
              ),





 */
class BuildIconWidget extends StatelessWidget {
  final IconData icon;

  const BuildIconWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(icon),
    );
  }
}

/****
 *
 * FlutterRow(),
 */


class FlutterRow extends StatefulWidget {
  @override
  _FlutterRowState createState() => _FlutterRowState();
}

class _FlutterRowState extends State<FlutterRow> {
  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(8),
                  color:Colors.green
              ),
              child: Text("React.js",style: TextStyle(color:Colors.yellowAccent,fontSize:25),),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(8.0),
              decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(8),
                  color:Colors.green
              ),
              child: Text("Flutter",style: TextStyle(color:Colors.yellowAccent,fontSize:25),),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(8),
                  color:Colors.green
              ),
              child: Text("MySQL",style: TextStyle(color:Colors.yellowAccent,fontSize:25),),
            )
          ]
      );
  }
}
/***
 *
 *
 * FlutterText(color:Colors.red)
 */
class FlutterText extends StatelessWidget {
 final  String str;
 final Color color;
  const FlutterText({
    Key? key,
     this.str ='Hello World',
    this.color =Colors.white

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      str,
      style: TextStyle(
        fontSize:20,
        color:color,
        fontWeight: FontWeight.w700,


      ),
    );
  }
}
/***
 *
 *
 * FlutterColumn(color:Colors.red)
 */
class FlutterColumn extends StatelessWidget {
  final  String str;
  final Color color;
  const FlutterColumn({
    Key? key,
    this.str ='Hello World',
    this.color =Colors.white

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          str,
          style: TextStyle(
            fontSize:20,
            color:color,
            fontWeight: FontWeight.w700,


          ),
        ),
        Text(
          str,
          style: TextStyle(
            fontSize:20,
            color:color,
            fontWeight: FontWeight.w700,


          ),
        ),
      ],
    );
  }
}


//Cards

//https://github.com/markclow/flutter_book_examples/blob/master/cards/lib/main.dart

//https://github.com/markclow/flutter_book_examples/blob/master/alert_dialog/lib/main.dart

