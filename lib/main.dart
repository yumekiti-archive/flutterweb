import 'package:flutter/material.dart';
import 'dart:convert';

// リクエスト用
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  build(BuildContext) {
    return MaterialApp(
      title: 'Flutter Request',
      home: Scaffold(

        // アプリバー
        appBar: AppBar(
          title: const Text('Flutter Request'),
        ),

        // ぼでぇー
        body: Center(
          child: Text(req().toString()),
        ),

      ),
    );
  }
}

Future<http.Response> req() async {

    final url = 'https://www.google.com/';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to fetch image URL');
    }

}