import 'package:flutter/material.dart';

// completed
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CodePage(),
    );
  }
}

class CodePage extends StatelessWidget {
  final TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Code Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Логотип (изображение)
            Image.asset('assets/logo.png', width: 150),

            // Инструкция для ввода кода
            Text(
              'Введите код (необязательно) и нажмите "Растау" для продолжения.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            // Поле ввода текста
            SizedBox(height: 20),
            TextField(
              controller: codeController,
              decoration: InputDecoration(
                hintText: 'Введите код',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),

            // Кнопка "Растау"
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Переход на экран Home (реализуйте свою логику)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Растау'),
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(child: Text('Добро пожаловать на домашний экран!')),
    );
  }
}
