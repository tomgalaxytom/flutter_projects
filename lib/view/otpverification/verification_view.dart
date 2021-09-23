// ignore_for_file: file_names, unused_field

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  bool _isResendAgain = false;
  bool _isVerified = false;
  bool _isLoading = false;

  String _code = '';

  @override
  void initState() {
    super.initState();
  }

  late Timer _timer;
  int _start = 60;

  void startTimer() {
    setState(() {
      _isResendAgain = true;
    });

    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          if (_start == 0) {
            _start = 60;
            _isResendAgain = false;
            timer.cancel();
          } else {
            _start--;
          }
        });
      },
    );
  }

  verify() {
    setState(() {
      _isLoading = true;
    });

    const oneSec = Duration(milliseconds: 1000);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          _isLoading = false;
          _isVerified = true;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey.shade200),
                child: Transform.rotate(
                  angle: 38,
                  child: const Image(
                    image: AssetImage('images/email.png'),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              const Text(
                "Verification",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Please enter the 6 digit code sent to \n +93 706-399-999",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16, height: 1.5, color: Colors.grey.shade500),
              ),
              const SizedBox(
                height: 30,
              ),
              VerificationCode(
                textStyle: const TextStyle(fontSize: 20.0, color: Colors.black),
                underlineColor: Colors.blueAccent,
                keyboardType: TextInputType.number,
                length: 6,
                onCompleted: (String value) {
                  setState(() {
                    _code = value;
                  });
                },
                onEditing: (bool value) {
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't resive the OTP?",
                    style: TextStyle(
                        fontSize: 14, height: 1.5, color: Colors.grey.shade500),
                  ),
                  TextButton(
                      onPressed: () {
                        if (_isResendAgain) return;
                        startTimer();
                      },
                      child: Text(
                        _isResendAgain
                            ? 'Try again in ' + _start.toString()
                            : "Resend",
                        style: const TextStyle(
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.blueAccent),
                      )),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              MaterialButton(
                disabledColor: Colors.grey.shade300,
                height: 50,
                onPressed: _code.length < 6
                    ? null
                    : () {
                        verify();
                      },
                minWidth: double.infinity,
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: _isLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.white,
                          strokeWidth: 3,
                          color: Colors.black,
                        ),
                      )
                    : _isVerified
                        ? const Icon(
                            Icons.check_circle,
                            color: Colors.white,
                            size: 30,
                          )
                        : const Text(
                            "Verify",
                            style: TextStyle(color: Colors.white),
                          ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
