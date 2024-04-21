# fluttertesting

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Unit Testing For COunter App URl:

https://docs.flutter.dev/cookbook/testing/unit/introduction

1.create a counter file in lib/folder

2.Create a another file in test folder and their name is counter_test.dart

3.Running below command

flutter test test/counter_test.dart

Output Will come 

All Test Passed
if some error display 

Test start, increment, decrement value should be decremented [E]                              
  Expected: <-2>
    Actual: <-1>
  
  package:matcher                                     expect
  package:flutter_test/src/widget_tester.dart 474:18  expect
  test/counter_test.dart 25:7                         main.<fn>.<fn>
  

To run this test again: /Users/apple/SDK/flutter/bin/cache/dart-sdk/bin/dart test /Users/apple/Public/mobapps/flutter/tom/flutter-projects/fluttertesting/test/counter_test.dart -p vm --plain-name 'Test start, increment, decrement value should be decremented'
00:03 +2 -1: Some tests failed.           

i can change -1 to -2
