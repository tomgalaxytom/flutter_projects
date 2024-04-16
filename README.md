# flutter_projects
This is flutter project 

1.githubtutorial
2.Flutter Firebase CLI Very Important_on_march_20 2024
3.Dart very important
4.Flutter very important ui

New Projects Creation:

flutter create fluttercookbook --template=app --platforms=ios,android,macos,web --org=com.codelooms

Firebase Quick Flutter Github:

https://github.com/firebase/quickstart-flutter/tree/main

FLutter CLI:

flutterfire  configure

flutter pub add firebase_core

 flutter pub add firebase_auth

flutter pub add firebase_ui_auth

firebase emulators:start //optional

firebase init emulators //optional



Cloud Firebase Message :


https://console.firebase.google.com/project/my-fb-msg-project/messaging

create a New Compaign:

Enter Notification Title:

Enter Notification Text:
click send test message:

pop up display

Enter Add a FCM registration Token
Then check checkbox and click Test.Then go to Vs code console


I/flutter (28023): Got a message in the foreground
I/flutter (28023): message data: {}
I/flutter (28023): Notification Title: One  // title
I/flutter (28023): Notification Body: One India Tamil 35 //Text 
I/flutter (28023): message is a notifications

Firebase inApp Message:

https://github.com/firebase/quickstart-flutter/tree/main/inappmessaging

When button click it goes to codelooms.com

Enable Inapp API

https://console.cloud.google.com/apis/api/firebaseinappmessaging.googleapis.com/metrics?project=my-inapp-pro

AdMob :

https://github.com/firebase/quickstart-flutter/tree/main/admob

Add AdMob to your Flutter Project.

Package Name:com.codelooms.com.admob

Go and check
flutter_projects/admob/admob_images


Google Analyticts:

https://console.firebase.google.com/project/my-anyself-project/analytics/app/android:com.codelooms.analytics/streamview/realtime~2Foverview%3Fparams%3D_u..pageSize%253D25%2526_r.explorerCard..selmet%253D%255B%2522eventCount%2522%255D%2526_r.explorerCard..seldim%253D%255B%2522eventName%2522%255D%2526_r..layout.pageNumber%253D0&fpn%3D1034162289688

Select Realtime Analytics menu is located sidebar menu

Go and check
flutter_projects/Analytics/images



Json Deserialize:  

https://www.youtube.com/watch?v=8fFoLs9qVQA

https://drive.google.com/file/d/1yN1budCwbtG-CUVOJN_nglN1Ff61npZy/view

Sample json:

[
    {
        "name": "User One",
        "phone": "7777777777",
        "email": "userone@gmail.com",
        "subscription": true,
        "address": {
            "street": "Some Street",
            "landmark": "Some Landmark",
            "city": "Some City",
            "state": "Some City"
        }
    },
    {
        "name": "User Two",
        "phone": "8888888888",
        "email": "usertwo@gmail.com",
        "subscription": true,
        "address": {
            "street": "Some Street",
            "landmark": "Some Landmark",
            "city": "Some City",
            "state": "Some City"
        }
    },
    {
        "name": "User Three",
        "phone": "9999999999",
        "email": "userthree@gmail.com",
        "subscription": true,
        "address": {
            "street": "Some Street",
            "landmark": "Some Landmark",
            "city": "Some City",
            "state": "Some City"
        }
    },
    {
        "name": "User Four",
        "phone": "4444444444",
        "email": "userfour@gmail.com",
        "subscription": true,
        "address": {
            "street": "Some Street",
            "landmark": "Some Landmark",
            "city": "Some City",
            "state": "Some City"
        }
    }
]
Packages
dependencies:
  json_annotation: ^3.0.1
  flutter:
    sdk: flutter

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^0.1.2

dev_dependencies:
  build_runner: ^1.0.0
  json_serializable: ^3.3.0

Model:

user.dart

import 'package:json_annotation/json_annotation.dart';
import 'address.dart';
part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  String name, phone, email;
  bool subscription;
  Address address;

  User({this.name, this.phone, this.email, this.subscription, this.address});

  factory User.fromJson(Map<String,dynamic> data) => _$UserFromJson(data);

  Map<String,dynamic> toJson() => _$UserToJson(this);

}

address.dart

import 'package:json_annotation/json_annotation.dart';
part 'address.g.dart';

@JsonSerializable()
class Address {
  String street,landmark,city,state;

  Address({this.street,this.landmark,this.city,this.state});

  factory Address.fromJson(Map<String,dynamic> data) => _$AddressFromJson(data);

  Map<String,dynamic> toJson() => _$AddressToJson(this);

}
Cmd:
flutter pub run build_runner build

