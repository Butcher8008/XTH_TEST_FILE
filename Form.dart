import 'package:flutter/material.dart';

class FormPractise extends StatefulWidget {
  const FormPractise({super.key});

  @override
  State<FormPractise> createState() => _FormPractise();
}

class _FormPractise extends State<FormPractise> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailEditingController=TextEditingController();
  TextEditingController nameEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailEditingController,
              decoration: const InputDecoration(
                labelText: 'Enter your email',
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Please enter text";
                }
                return null;
              },
            ),
            TextFormField(
              controller: nameEditingController,
              decoration: const InputDecoration(
                labelText: 'Enter your name ',
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Enter name";
                }
                return null;
              },
            ),
            ElevatedButton(onPressed: (){
              if(_formkey.currentState!.validate()){
                const ScaffoldMessenger(child: SnackBar(content: Text('Entering data')));
              }
            }, child: const Text('Enter'))
          ],
        ),
      ),
    );
  }
  @override
  void dispose(){
    nameEditingController.dispose();
    emailEditingController.dispose();
    super.dispose();
  }
}
