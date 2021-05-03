import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HTTP requests')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text(
                'GET',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _makeGetRequest,
            ),
            ElevatedButton(
              child: Text(
                'POST',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _makePostRequest,
            ),
            ElevatedButton(
              child: Text(
                'PUT',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _makePutRequest,
            ),
            ElevatedButton(
              child: Text(
                'DELETE',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _makeDeleteRequest,
            ),
          ],
        ),
      ),
    );
  }

  // Button onPressed methods

  void _makeGetRequest() async {
    // make GET request
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    Response response = await get(url);
    // sample info available in response
    int statusCode = response.statusCode;
    Map<String, String> headers = response.headers;
    String contentType = headers['content-type'];
    String json = response.body;
    print('Json $json');
    // TODO convert json to object...
  }

  void _makePostRequest() async {}

  void _makePutRequest() async {}

  void _makeDeleteRequest() async {}
}
