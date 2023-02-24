import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /* String fullName = '';
  @override
  void initState() {
    super.initState();
    getPostById();
  }

  Future<Post> getPostById() async {
    http.Response postFuture = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    if (postFuture.statusCode == 200) {
      print(postFuture.body);
      return Post.fromJson(jsonDecode(postFuture.body));
    } else {
      throw Exception('Error');
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      actions: <Widget>[
        IconButton(onPressed: () => {}, icon: Icon(Icons.settings))
      ],
    )); /* Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            TextField(
              onChanged: (value) => setState(() {
                fullName = value;
              }),
              decoration: InputDecoration(
                hintText: "Full",
              ),
            ),
            IconButton(
                onPressed: () => print(fullName),
                icon: Icon(Icons.ac_unit_outlined)),
            Center(
                child: FutureBuilder<Post>(
              future: getPostById(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.body);
                } else if (snapshot.hasError) {
                  return Text(snapshot.hasError.toString());
                }
                return CircularProgressIndicator();
              },
            )),
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        ); */
  }
}
