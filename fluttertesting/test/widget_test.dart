import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows building and interacting
  // with widgets in the test environment.
  testWidgets('MyWidget has a title and message', (tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(const MyWidget(
      title: 'Test', message: 'M',
      age:25
      ));

    // Create the Finders.
    final titleFinder = find.text('Test');
    final messageFinder = find.text('M');
    final ageFinder = find.text('M');

    // Use the `findsOneWidget` matcher provided by flutter_test to
    // verify that the Text widgets appear exactly once in the widget tree.
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
    expect(ageFinder, findsOneWidget);

    
  });

  testWidgets('finds a Text widget', (tester) async {
  // Build an App with a Text widget that displays the letter 'H'.
  await tester.pumpWidget(const MaterialApp(
    home: Scaffold(
      body: Text('Hello'),
    ),
  ));

  // Find a widget that displays the letter 'H'.
  expect(find.text('Hello'), findsOneWidget);
});
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
    required this.title,
    required this.message,
    required this.age,
  });

  final String title;
  final String message;
  final int age;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: age.toString(),
      home: Scaffold(
        appBar: AppBar(
          title:  Text(title),
        ),
        body: Center(
          child: Text(message),
        ),
      ),
    );
  }
}
