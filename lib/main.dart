import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter iOS .ipa Export'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(),
              const Text('Hello AmirAbbas, I\'m running on iOS!'),
              const Text(
                'Telegram:   @amir_a14\nGithub:       @amir14a',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // 按钮点击事件
                  print('Button clicked');
                },
                child: const Text('Click me'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
