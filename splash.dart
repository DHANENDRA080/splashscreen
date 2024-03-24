import 'package:flutter/material.dart';


class SplashDisplayPage extends StatefulWidget {
  @override
  State<SplashDisplayPage> createState() => _SplashDisplayPage();
}

class _SplashDisplayPage extends State<SplashDisplayPage> {
  @override
  void initState() {
    super.initState();
    // Use Builder widget to get the context
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SplashDisplayPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Display'),
      ),
      body: Center(
       child: Column(
        children: [
           Image.network('https://picsum.photos/250?image=9',width: 300,
       height: 250,
       fit: BoxFit.fill,),
       const SizedBox( height: 20,
       
       ),
       const Text('Learn from anywhere')

        ],
       )
       
      ),
      
      
      );
      
  }
}
