import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridTileBar Example'),
        ),
        body: MyGridView(),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(4, (index) {
        return Container(
            margin: EdgeInsets.all(5),
            child: GridTile(
              header: Text('Header $index'),
              child: Image.network(
                'https://picsum.photos/400/300',
                fit: BoxFit.cover,
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text('Item $index'),
                subtitle: Text('Subtitle $index'),
                trailing: IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.white,
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
              ),
            ));
      }),
    );
  }
}
