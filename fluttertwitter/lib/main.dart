import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:twitter_login/twitter_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Twitter Login',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  Future<UserCredential?> signInWithTwitter() async {
    // Create a TwitterLogin instance
    final twitterLogin = TwitterLogin(
      apiKey: 'B4IrwSS5TNEvZrRaisGJWZxen',
      apiSecretKey: '3o9faaix2rqkDIOnlvqnWT9TI6V0Mv14TJ6unXohHOoAI4DnXj',
      redirectURI: 'https://www.codelooms.com/',
    );

    // Trigger the sign-in flow
    final authResult = await twitterLogin.login();

    // Create a credential from the access token
    final twitterAuthCredential = TwitterAuthProvider.credential(
      accessToken: authResult.authToken!,
      secret: authResult.authTokenSecret!,
    );

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(twitterAuthCredential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twitter Login Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Call signInWithTwitter function when the button is clicked
            final userCredential = await signInWithTwitter();
            // Handle the result if needed
            if (userCredential != null) {
              // User signed in successfully
              print(
                  'User signed in with Twitter: ${userCredential.user!.displayName}');
            } else {
              // Failed to sign in
              print('Failed to sign in with Twitter');
            }
          },
          child: const Text('Login with Twitter'),
        ),
      ),
    );
  }
}
