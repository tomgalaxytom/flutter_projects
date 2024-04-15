Flutter Firebase CLI Very Important

Add Firebase to your Flutter app

Error creation 

Firebase CLI v7.0.0 is incompatible with Node.js v6.17.1 Please upgrade Node.js to version >= 8.0.0
Solution From Stack overflow

Node Install url:

https://nodejs.org/en/download/

1.npm install -g firebase-tools@10.9.2   (CMD)

2.firebase login (CMD)

3.Then click Yes (CMD)

4. Go to Google Sign in Page

5.Give Allow Permission

6.It goes to Firebase CliLogin Successfull Page

Woohoo!
Firebase CLI Login Successful
You are logged in to the Firebase Command-Line interface. You can immediately close this window and continue using the CLI.
http://localhost:9005/?state=842918015&code=4/0AeaYSHCxf5lbaicTOfivbOOaYmWHLrsFob007L5mzJb_e-XspBLmCtDY37kJH5GnvhYFcg&scope=email%20https://www.googleapis.com/auth/userinfo.email%20openid%20https://www.googleapis.com/auth/cloudplatformprojects.readonly%20https://www.googleapis.com/auth/firebase%20https://www.googleapis.com/auth/cloud-platform&authuser=0&prompt=consent  -  URL

7.Go to terminal enter below command

     dart pub global activate flutterfire_cli  (CMD)

8.After dart pub global activate flutterfire_cli  cmd

+ ansi_styles 0.3.2+1s... (2.5s)
+ args 2.4.2
+ async 2.11.0
+ boolean_selector 2.1.1
+ characters 1.3.0
+ ci 0.1.0
+ cli_util 0.3.5 (0.4.1 available)
+ clock 1.1.1
+ collection 1.18.0
+ dart_console 1.2.0
+ deep_pick 0.10.0 (1.0.0 available)
+ ffi 2.1.2
+ file 6.1.4 (7.0.0 available)
+ flutterfire_cli 0.2.7
+ http 0.13.6 (1.2.1 available)
+ http_parser 4.0.2
+ interact 2.2.0
+ intl 0.18.1 (0.19.0 available)
+ json_annotation 4.8.1
+ matcher 0.12.16+1
+ meta 1.12.0
+ path 1.9.0
+ petitparser 6.0.2
+ platform 3.1.4
+ process 4.2.4 (5.0.2 available)
+ pub_semver 2.1.4
+ pub_updater 0.2.4 (0.4.0 available)
+ pubspec 2.3.0
+ quiver 3.2.1
+ source_span 1.10.0
+ stack_trace 1.11.1
+ stream_channel 2.1.2
+ string_scanner 1.2.0
+ term_glyph 1.2.1
+ test_api 0.7.0
+ tint 2.0.1
+ typed_data 1.3.2
+ uri 1.0.0
+ win32 5.3.0
+ xml 6.5.0
+ yaml 3.1.2
Building package executables... (7.3s)
Built flutterfire_cli:flutterfire.
Installed executable flutterfire.
Warning: Pub installs executables into $HOME/.pub-cache/bin, which is not on your path.
You can fix that by adding this to your shell's config file (.bashrc, .bash_profile, etc.):
  export PATH="$PATH":"$HOME/.pub-cache/bin"
Activated flutterfire_cli 0.2.7.


9.Next (only mac)

mervinthomas-3:~ apple$ echo 'export PATH="$PATH":"$HOME/.pub-cache/bin"'>>~/.bash_profile
mervinthomas-3:~ apple$ tail -2 ~/.bash_profile
export PATH="$PATH":"$HOME/.pub-cache/bin”


10.New Projects Creation:

flutter create demo --template=app --platforms=ios,android,macos,web --org=com.google.firebase.presents    (CMD)

flutter create fluttercookbook --template=app --platforms=ios,android,macos,web --org=com.codelooms    (CMD)


Firebase Initialise in main.dart

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}




11. Firebase core add

flutter pub add firebase_core  (CMD)

12.After flutter pub add firebase_core  (CMD)

Resolving dependencies... 
+ firebase_core 2.27.1
+ firebase_core_platform_interface 5.0.0
+ firebase_core_web 2.12.0
+ flutter_web_plugins 0.0.0 from sdk flutter
+ js 0.6.7 (0.7.1 available)
  leak_tracker 10.0.0 (10.0.4 available)
  leak_tracker_flutter_testing 2.0.1 (3.0.3 available)
  leak_tracker_testing 2.0.1 (3.0.1 available)
  material_color_utilities 0.8.0 (0.11.1 available)
  meta 1.11.0 (1.12.0 available)
+ plugin_platform_interface 2.1.8
  test_api 0.6.1 (0.7.0 available)
  vm_service 13.0.0 (14.2.0 available)
+ web 0.5.1
Changed 7 dependencies!
8 packages have newer versions incompatible with dependency constraints.
Try `flutter pub outdated` for more information.
mervinthomas-3:demo apple$ flutter pub outdated
Showing outdated packages.
[*] indicates versions that are not the latest available.
Package Name  Current  Upgradable  Resolvable  Latest  
direct dependencies: all up-to-date.
dev_dependencies: all up-to-date.
all dependencies are up-to-date.

13. Enter flutterfire  configure Command

Hint:  Windows  flutterfire configure is not working windows

 flutterfire configure is not working windows.

Solution: 
Sample Path :  C:\Users\YOU-USER-NAME\AppData\Local\Pub\Cache\bin


When step 7 followed in windows one windows path will create.
Copy that path with bin
Go to the environment variable and system variable and select the path  and paste it.it will work.

The

mervinthomas-3:demo apple$  flutterfire configure (CMD)

i Found 18 Firebase projects.                                                   
✔ Select a Firebase project to configure your Flutter application with · cl-ott (cl-ott) 
? Which platforms should your configuration support (use arrow keys & space to s✔ Which platforms should your configuration support (use arrow keys & space to select)? · ios, macos, web 
i Firebase ios app com.google.firebase.presents.demo is not registered on Firebase project cl-ott.
i Registered a new Firebase ios app on Firebase project cl-ott.                 
i Firebase macos app com.google.firebase.presents.demo.RunnerTests is not registered on Firebase project cl-ott.
i Registered a new Firebase macos app on Firebase project cl-ott.               
i Firebase web app demo (web) is not registered on Firebase project cl-ott.     
i Registered a new Firebase web app on Firebase project cl-ott.                 
Firebase configuration file lib/firebase_options.dart generated successfully with the following Firebase apps:
Platform  Firebase App Id
web       1:186419238970:web:f706bd591e24074ac0fd03
ios       1:186419238970:ios:cc9c22efc0107fdec0fd03
macos     1:186419238970:ios:db50bb04a89ed999c0fd03
Learn more about using this file and next steps from the documentation:
 > https://firebase.google.com/docs/flutter/setup
mervinthomas-3:demo apple$

Note: Just select android then give enter

Flutter Firebase New Authentication:

https://github.com/firebase/quickstart-flutter/tree/main/authentication


flutter pub add firebase_core

 flutter pub add firebase_auth

flutter pub add firebase_ui_auth

firebase emulators:start

firebase init emulators

? Please select an option: Use an existing project
? Select a default Firebase project for this directory: (Use arrow keys)
❯ authfb (authfb)  // select authfb

Output:

? Which Firebase emulators do you want to set up? Press Space to select emulators, then Enter to confirm your choices. 

i  Writing configuration info to firebase.json...
i  Writing project information to .firebaserc...

✔  Firebase initialization complete!

Flutter clean

Working directory:

/Users/apple/Public/mobapps/flutter/stalin/fbauth  working good



Go to Firebase Console and add user

https://console.firebase.google.com/u/0/project/authfb/authentication/users

For example:

User:

stalingalaxy@gmail.com / galaxy12#

Go to Sign in method:

Add New Provider:

Enable Email/Password 

14.Multidex Enabled Support:

File Path:  Android /app/build.gradle

plugins {
   id "com.android.application"
   id "kotlin-android"
   id "dev.flutter.flutter-gradle-plugin"
}

def localProperties = new Properties()
def localPropertiesFile = rootProject.file('local.properties')
if (localPropertiesFile.exists()) {
   localPropertiesFile.withReader('UTF-8') { reader ->
       localProperties.load(reader)
   }
}

def flutterVersionCode = localProperties.getProperty('flutter.versionCode')
if (flutterVersionCode == null) {
   flutterVersionCode = '1'
}

def flutterVersionName = localProperties.getProperty('flutter.versionName')
if (flutterVersionName == null) {
   flutterVersionName = '1.0'
}

android {
   namespace "com.google.firebase.presents.demo"
   compileSdk flutter.compileSdkVersion
   ndkVersion flutter.ndkVersion

   compileOptions {
       sourceCompatibility JavaVersion.VERSION_1_8
       targetCompatibility JavaVersion.VERSION_1_8
   }

   kotlinOptions {
       jvmTarget = '1.8'
   }

   sourceSets {
       main.java.srcDirs += 'src/main/kotlin'
   }

   defaultConfig {
       // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
       applicationId "com.google.firebase.presents.demo"
       // You can update the following values to match your application needs.
       // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration.
       minSdkVersion flutter.minSdkVersion
       targetSdkVersion flutter.targetSdkVersion
       versionCode flutterVersionCode.toInteger()
       versionName flutterVersionName
       multiDexEnabled true
   }

   buildTypes {
       release {
           // TODO: Add your own signing config for the release build.
           // Signing with the debug keys for now, so `flutter run --release` works.
           signingConfig signingConfigs.debug
       }
   }
}

flutter {
   source '../..'
}

dependencies {
   implementation 'com.android.support:multidex:1.0.3'
}


15.Fire Base Project Creation:

https://console.firebase.google.com/

Required Packages:

flutter pub add google_sign_in

firebase_core: ^2.27.1
firebase_auth: ^4.17.9
google_sign_in: ^6.2.1

Go to Console link

Add New Projects









Click Android Project:




Office Vscode  Keystore:


keytool -list -v -keystore C:\Users\NIC\.android\debug.keystore








Enter android package name:

Go to android->app->src->AndroidManifest.xml
Enter Package name:

Com.example.basefire
Debug signing certificate SHA-1


Mac 

keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android

Generate SHA-1 for Flutter/React-Native/Android-Native app

Enter   Password  : android



Select sha key and Paste it



Save Console



Sample Code for Google Sign in:


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Sign-In Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await _handleSignIn(context);
          },
          child: const Text('Sign in with Google'),
        ),
      ),
    );
  }

  Future<void> _handleSignIn(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        final UserCredential userCredential =
            await _auth.signInWithCredential(credential);
        final User? user = userCredential.user;

        if (user != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => UserInfoPage(user: user),
            ),
          );
        } else {
          // Show error message or handle sign-in failure
          print('Sign-in failed');
        }
      } else {
        // Show error message or handle sign-in failure
        print('Sign-in failed');
      }
    } catch (e) {
      print('Error during Google sign-in: $e');
      // Show error message or handle sign-in failure
    }
  }
}

class UserInfoPage extends StatelessWidget {
  final User user;

  const UserInfoPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              await GoogleSignIn().signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, ${user.displayName}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              'Email: ${user.email}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Text(
              'User ID: ${user.uid}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}


Flutter Face Book Firebase


URL : https://firebase.flutter.dev/docs/auth/social/

https://developers.facebook.com/apps/

Click particular Projects












