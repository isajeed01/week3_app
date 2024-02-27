import 'package:flutter/material.dart';
import 'package:week3_app/view/homepage.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  final _formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(key: _formkey,
          child: Column(
            children: [
              TextFormField( controller: _username,  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  },
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)), labelText: 'Username'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField( controller: _password, validator: (value) {
                 if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
                
              }, obscureText: true,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)), labelText: 'Password',),
        
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
        _formkey.currentState!.validate();
        if( _username == null || _password == null){
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('please enter the values')));
        }
        else{
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage() ));
        }

        
              }, child: Text('SUBMIT'))
            ],
          ),
        ),
      ),
    );
  }
}