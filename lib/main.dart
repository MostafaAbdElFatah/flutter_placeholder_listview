import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:pk_skeleton/pk_skeleton.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
      Center(
        //child:getPKSkeletonPlaceholder()
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          getTextShimmerPlaceholder(),
          //getListShimmerPlaceholder(),
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme
                .of(context)
                .textTheme
                .display1,
          ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget getPKSkeletonPlaceholder() {

    return PKCardListSkeleton(
      isCircularImage: true,
      isBottomLinesActive: true,
      length: 10,
    );

  }



  Widget getTextShimmerPlaceholder() {
    return
      SizedBox(
        width: 200.0,
        height: 100.0,
        child: Shimmer.fromColors(
          baseColor: Colors.grey,
          highlightColor: Colors.white,
          child: Text(
            'Shimmer',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight:
              FontWeight.bold,
            ),
          ),
        ),
      );
  }

  Widget getListShimmerPlaceholder() {
    return
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
          child: Column(
            children: [0, 1, 2, 3, 4, 5, 6]
                .map((_) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(),
//                  Container(
//                    width: 48.0,
//                    height: 48.0,
//                    color: Colors.white,
//                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
//                        Container(
//                          width: double.infinity,
//                          height: 100,
//                          color: Colors.white,
//                        ),
                        Container(
                          width: double.infinity,
                          height: 8.0,
                          color: Colors.white,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(vertical: 2.0),
                        ),
                        Container(
                          width: double.infinity,
                          height: 8.0,
                          color: Colors.white,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(vertical: 2.0),
                        ),
                        Container(
                          width: 40.0,
                          height: 8.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
                .toList(),
          ),
        ),
      );
  }


}
