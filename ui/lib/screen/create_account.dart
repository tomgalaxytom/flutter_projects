import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/custombutton.dart';
class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key, required String title}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF4B39EF),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height ,
        decoration: BoxDecoration(
          color: tertiaryColor,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.network(
              'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014__340.jpg',
            ).image,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                color:secondaryBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7,
                    color: Color(0x4D090F13),
                    offset: Offset(0, 3),
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 56, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (!(Theme.of(context).brightness ==
                                Brightness.dark))
                              Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Tata_Consultancy_Services_Logo.svg/2560px-Tata_Consultancy_Services_Logo.svg.png',
                                width: 200,
                                height: 60,
                                fit: BoxFit.fitWidth,
                              ),
                            if (Theme.of(context).brightness == Brightness.dark)
                              Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Tata_Consultancy_Services_Logo.svg/2560px-Tata_Consultancy_Services_Logo.svg.png',
                                width: 200,
                                height: 60,
                                fit: BoxFit.fitWidth,
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Get Started Below,',
                              style: title1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                               // controller: _model.emailAddressController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  labelStyle:
                                      bodytext1,
                                  hintText: 'Enter your email here...',
                                  hintStyle:
                                      bodytext1,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          lineGreyColor,
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
                                  filled: true,
                                  fillColor: secondaryBackgroundColor,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 24, 0, 24),
                                ),
                                style: bodytext2,
                                // validator: _model
                                //     .emailAddressControllerValidator
                                //     .asValidator(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                //controller: _model.passwordController,
                                //obscureText: !_model.passwordVisibility,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle:
                                      bodytext1,
                                  hintText: 'Enter your email here...',
                                  hintStyle:
                                      bodytext1,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                         lineGreyColor,
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
                                  filled: true,
                                  fillColor: secondaryBackgroundColor,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 24, 24, 24),
                                  suffixIcon: InkWell(
                                    onTap: () => {},
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      
                                         Icons.visibility_off_outlined,
                                      color: Color(0xFF95A1AC),
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: bodytext2,
                                
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                              child: MyButton(
                                buttonText: "Create Account" ,
                                width: 230,
                                height: 50,
                                onTap: (){
                                print("object");
                              },),
                            ),
                          ],
                        ),
                      ),


     
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 40),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                'Already Have an Account?',
                                style: bodytext1,
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                
                                  onPressed: () {},
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: turquiseColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                            )

                          ],
                        ),
                      ),
                    
                    
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
