import 'package:flutter/material.dart';

void main() {
  runApp(RadioCheckboxDemo());
}

class RadioCheckboxDemo extends StatefulWidget {
  final Map<String, dynamic> categories = {
    "CheckBox_list": [
      {"category_id": "5", "category_name": "Barber"},
      {"category_id": "3", "category_name": "Carpanter"},
      {"category_id": "7", "category_name": "Cook"}
    ],
  };
  RadioCheckboxDemo({Key? key}) : super(key: key);

  @override
  _RadioCheckboxDemoState createState() => _RadioCheckboxDemoState();
}

class _RadioCheckboxDemoState extends State<RadioCheckboxDemo> {
  int _groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Radio and Checkbox Sample"),
        ),
        body: Center(
            child: Column(
          children: [
            customRadioBtn(_groupValue, "Checkbox 0", 0, chooseRadioValue),
            customRadioBtn(_groupValue, "Checkbox 1", 1, chooseRadioValue),
            customRadioBtn(_groupValue, "Checkbox 2", 2, chooseRadioValue),
            Expanded(
                child: CustomCheckBox(
              categories: widget.categories,
            ))
          ],
        )),
      ),
    );
  }

  RadioListTile<int> customRadioBtn(
      int groupValue, String title, int value, Function onChanged) {
    return RadioListTile(
      value: value,
      groupValue: groupValue,
      onChanged: chooseRadioValue,
      title: Text(title),
    );
  }

  void chooseRadioValue(newValue) {
    setState(() {
      _groupValue = int.parse(newValue.toString());
      print(_groupValue);
    });
  }
}

class CustomCheckBox extends StatefulWidget {
  final Map<String, dynamic>? categories;
  const CustomCheckBox({Key? key, this.categories}) : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  final List _selecteCategorys = [];

  void _onCategorySelected(bool selected, categoryId) {
    if (selected == true) {
      setState(() {
        _selecteCategorys.add(categoryId);
        print(categoryId);
      });
    } else {
      setState(() {
        _selecteCategorys.remove(categoryId);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.categories!['CheckBox_list']?.length,
        itemBuilder: (BuildContext context, int index) {
          return CheckboxListTile(
            value: _selecteCategorys.contains(
                widget.categories!['CheckBox_list'][index]['category_id']),
            onChanged: (selected) {
              _onCategorySelected(selected!,
                  widget.categories!['CheckBox_list'][index]['category_id']);
            },
            title: Text(
                widget.categories!['CheckBox_list'][index]['category_name']),
          );
        });
  }
}
