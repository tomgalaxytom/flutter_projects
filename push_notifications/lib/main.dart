// Copyright 2022 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Background message handler :
// https://firebase.google.com/docs/cloud-messaging/flutter/receive#background_messages
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(MyApp(state: ApplicationState()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.state});

  final ApplicationState state;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Firebase Cloud Messaging', state: state),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title, required this.state});

  final ApplicationState state;

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListenableBuilder(
          listenable: widget.state,
          builder: (context, child) => Column(
            children: <Widget>[
              const Image(
                  image: AssetImage('assets/fcm_horizontal_lockup_light.png')),
              Visibility(
                visible: widget.state.messagingAllowed,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Click the "Subscribe To Weather" button below to subscribe to the'
                        ' "weather" topic. Messages sent to the weather topic will be'
                        ' received.',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('FCM Token: ${widget.state.fcmToken}'),
                    ),

                    ElevatedButton(
  onPressed: () {
    widget.state.subscribeToTopic('weather').then((_) {
      widget.state.setNotificationData("Subscribed to Weather", "");
    });
  },
  child: const Text('Subscribe To Weather'),
),
                    // ElevatedButton(
                    //   onPressed: () => widget.state.subscribeToTopic('weather'),
                    //   child: const Text('Subscribe To Weather'),
                    // ),
                      Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                          widget.state._ftitle,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                           widget.state._messageData,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    )
                 
                  ],
                ),
              ),
              Visibility(
                visible: !widget.state.messagingAllowed,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Thi quickstart requires notification permissions to be'
                        ' activated.',
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => widget.state.requestMessagingPermission(),
                      child: const Text('Request Notification Permission'),
                    ),
                    
                 
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }
String _ftitle = "Title will appear here";
  String _messageData = "Message text will appear here";
  String get ftitle => _ftitle;
  String get messageData => _messageData;
  late FirebaseMessaging firebaseMessaging;

  String _fcmToken = '';

  String get fcmToken => _fcmToken;

  bool _messagingAllowed = false;

  bool get messagingAllowed => _messagingAllowed;

  void setNotificationData(String title, String data) {
    _ftitle = title;
    _messageData = data;
    notifyListeners();
  }

  Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    firebaseMessaging = FirebaseMessaging.instance;

    firebaseMessaging.onTokenRefresh.listen((token) {
      _fcmToken = token;
      debugPrint(token);
      notifyListeners();
      // If necessary send token to application server.

      // Note: This callback is fired at each app startup and whenever a new
      // token is generated.
    });

    // Replace this with your key for web apps.
    const vapidKey = '';
    firebaseMessaging.getToken(vapidKey: vapidKey).then((token) {
      if (token != null) {
        _fcmToken = token;
        debugPrint(token);
        notifyListeners();
      }
    });

    firebaseMessaging.getNotificationSettings().then((settings) {
      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        _messagingAllowed = true;
        notifyListeners();
      }
    });

    FirebaseMessaging.onMessage.listen((remoteMessage) {
      debugPrint('Got a message in the foreground');
      debugPrint('message data: ${remoteMessage.data}');

      if (remoteMessage.notification != null) {
        print('Notification Title: ${remoteMessage.notification!.title!}');
        print('Notification Body: ${remoteMessage.notification!.body}');
        debugPrint('message is a notification');

       setNotificationData(
      remoteMessage.notification!.title!,
      remoteMessage.notification!.body!,
    );
  




        // On Android, foreground notifications are not shown, only when the app
        // is backgrounded.
      }
    });
  }

  Future<void> requestMessagingPermission() async {
    NotificationSettings settings = await firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      _messagingAllowed = true;
      notifyListeners();
    }

    debugPrint('Users permission status: ${settings.authorizationStatus}');
  }

  Future<void> subscribeToTopic(String topic) async {
    await firebaseMessaging.subscribeToTopic(topic);
  }
}
