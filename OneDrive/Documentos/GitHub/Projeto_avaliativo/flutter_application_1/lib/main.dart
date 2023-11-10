import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'bio_link',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void generateNewPair() {
    current = WordPair.random();
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
          ),
          SizedBox(height: 20),
          InkWell(
            child: Text('intagram'),
          ),
          SizedBox(height: 10),
          InkWell(
            child: Text('Portifolio'),
          ),
          SizedBox(height: 10),
          InkWell(
            child: Text('fecebook'),
          ),
          SizedBox(height: 10),
          InkWell(
            child: Text('WhatsApp'),
          ),
        ],
      ),
    );
  }
}
