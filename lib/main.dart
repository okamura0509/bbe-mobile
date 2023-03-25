import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SNAPSHOT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        backgroundColor: Colors.black12.withOpacity(0.5),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Container(
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  onPrimary: Colors.white,
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: SizedBox(
                                  width: 70,
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.search),
                                      Text('▼'),
                                    ],
                                  ),
                                )),
                          ),
                          Center(
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  onPrimary: Colors.white,
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: SizedBox(
                                  width: 70,
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.search),
                                      Text('▼'),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  )),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                  ))),
            ),
            GestureDetector(
              child: ListTile(
                title: Text('ホーム',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
          ],
        )),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TimeRecorder('20230309'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget TimeRecorder(String time) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey, //色
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(1, 1),
                  ),
                ],
                color: Colors.grey[100],
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                        height: 50,
                        color: Colors.grey[500],
                        child: Row(
                          children: [
                            Text(
                              'イベント申請情報',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                    Card(
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            time,
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                onPrimary: Colors.white,
                                elevation: 8,
                                shape: const StadiumBorder(),
                                // shape: RoundedRectangleBorder(
                                //   borderRadius:
                                //       BorderRadius.circular(10),
                                // ),
                              ),
                              child: Text('出社')),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                onPrimary: Colors.white,
                                elevation: 8,
                                shape: const StadiumBorder(),
                              ),
                              child: Text('退勤')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
