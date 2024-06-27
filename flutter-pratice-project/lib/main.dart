import 'package:flutter/material.dart';
import 'package:project/photoView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> imagePaths = [
    'https://cdn.pixabay.com/photo/2023/04/30/09/43/flower-7960192_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/04/30/22/01/ocean-7961695_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/05/21/07/59/iceberg-8008071_1280.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: ListView.builder(
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return GestureDetector( //각 image의 slider를 보여주기
              onTap: () {
                Navigator.of(context) 
                    .push(MaterialPageRoute(builder: (context) {
                  return PhotoViewPage(
                      imagePaths: imagePaths, currentIndex: index);
                }));
              },
              child: Image(
                image: NetworkImage(imagePaths[index]),
              ),
            );
          },
        ));
  }
}
/*
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
//          Navigator.pushNamed(context, '/success', arguments: User(_username, _email));
        }
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        child: const Text("제출", style: TextStyle(fontSize: 10)),
      )
    );
  }
}
*/  
 