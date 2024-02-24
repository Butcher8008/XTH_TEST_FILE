import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textEditingController = TextEditingController();
  
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _textEditingController,
          decoration: const InputDecoration(
              labelText: 'Enter Any text',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                      color: Color(0x0ff84421),
                      width: 2,
                      style: BorderStyle.solid))),
        ),
        ElevatedButton(onPressed: () {
          setState(() {
            text = _textEditingController.text;
          });
        }, child: const Text('Show Text')),
        const SizedBox(
          height: 20,
        ),
        Container(
            decoration: const BoxDecoration(color: Colors.white70),
            child: Text(
                "Entered Text: $text",
              style: const TextStyle(fontSize: 24),
            ))
      ],
    ));
  }
  @override
  void dispose(){
    _textEditingController.dispose();
    super.dispose();
  }
}
