import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shamo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 136, 135, 236)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'shamo 전문적인 메모 공유 에플리케이션'),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(400,80),
              ),
              onPressed: () {showDialog(
  context: context, 
  barrierDismissible: false,
  builder: (context) {
    return AlertDialog(
      icon: const Icon(Icons.note_add),
      iconColor: Color.fromARGB(255, 93, 57, 151),
      title: const Text("메모장 생성"),
      content: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'code'),
          ),
          const Text(
            "친구와 약속한 코드를 작성하세요.\n코드는 알잘딱하게 가능합니다.",
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        
        ElevatedButton(
          onPressed: () {}, 
          child: const Text("만들기")
        ),
      FilledButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          child: const Text("아니요")
        )],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
);}, 
              child: Text('만들기',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)
              ),
            ),ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(400,80),
              ),
              onPressed: () {showDialog(
  context: context, 
  barrierDismissible: false,
  builder: (context) {
    return AlertDialog(
      icon: const Icon(Icons.note_add),
      iconColor: Color.fromARGB(255, 93, 57, 151),
      title: const Text("메모장 입장"),
      content: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'code'),
          ),
          const Text(
            "친구와 약속한 코드를 작성하세요.\n코드는 알잘딱하게 가능합니다.",
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        
        ElevatedButton(
          onPressed: () {}, 
          child: const Text("입장")
        ),
      FilledButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          child: const Text("아니요")
        )],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
);}, 
              child: Text('입장',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)
              ),
            ),
          ],
        ),
      ),
    );
  }
}