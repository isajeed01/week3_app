import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomNavigationBar(  type: BottomNavigationBarType.fixed, items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.alarm,),label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.message),label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: '')
    ]),
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_sharp),
          title: Text(
            'Dr.Upul',
            style: TextStyle(color: Colors.blue),
          ),
          centerTitle: true,
          actions: const [
            CircleAvatar(
              child: Icon(
                Icons.phone,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.video_call,
                  color: Colors.black,
                )),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(14.0),
            child: Column(
              children: [
                startwidget(),
                SizedBox(
                  height: 20,
                ),
                endwidget(),
                SizedBox(
                  height: 20,
                ),
                startwidget(),
                SizedBox(height: 20,),
                endwidget(),
                SizedBox(height: 20,),
                smallrowwidget(),
                SizedBox(height: 20,),
                startwidget(),
                SizedBox(height: 10,),
                endwidget(),
                SizedBox(height: 20,),
                startwidget(),
                SizedBox(height: 10,),
                Row(children: [
          
                ],)
        
                
              ],
            ),
          ),
        ));
  }
}

class smallrowwidget extends StatelessWidget {
  const smallrowwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: Center(child: Text('rorem ipsum dolor sit adisipcing elit')),
          height: 40,
          width: 300,
          decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }
}

class endwidget extends StatelessWidget {
  const endwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: Center(child: Text('rorem ipsum dolor sit adisipcing elit')),
          height: 40,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }
}

class startwidget extends StatelessWidget {
  const startwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Center(child: Text('rorem ipsum dolor sit adisipcing elit')),
          height: 40,
          width: 300,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 204, 204),
              borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }
}