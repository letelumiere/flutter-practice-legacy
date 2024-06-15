import "package:flutter/material.dart";
import "package:project/successPage.dart";

import "package:project/user.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/success': (context) => const SuccessPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _key = GlobalKey<FormState>();
  late String _username, _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test App"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _key,
          child: Column(
            children: [
              usernameInput(),
              const SizedBox(height: 15),
              emailInput(),
              const SizedBox(height: 15),
              submitButton(),
            ],
          )  
        ),
      ),
    );
  }

  Widget usernameInput(){
    return TextFormField(
      autofocus: true,
      validator: (val){
        if(val!.isEmpty){
          return 'The input is empty';
        }else{
          return null;
        }
      },
      onSaved: (username) => _username = username as String,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Input your username,',
        labelText: 'Username',
        labelStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }

  Widget emailInput(){
    return TextFormField(
      autofocus: true,
      validator: (val){
        if(val!.isEmpty){
          return 'The input is empty';
        }else{
          return null;
        }
      },
      onSaved: (email) => _email = email as String,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Input your email adress,',
        labelText: 'Email Adress',
        labelStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: (){
        if(_key.currentState!.validate()){
          _key.currentState!.save();
          Navigator.pushNamed(context, '/success', arguments: User(_username, _email));
        }
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        child: const Text("제출", style: TextStyle(fontSize: 10)),
      )
    );
  }
    
} 