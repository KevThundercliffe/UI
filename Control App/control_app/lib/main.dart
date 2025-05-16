import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/electronics': (context) => Electronic(),
        '/electroniccontrol': (context) => ElectronicControl(),
        '/support': (context) => Support(),
        '/energy': (context) => Energy(),
      }
    );
  }
}

class Home extends StatefulWidget{
  @override
  _homeState createState() => _homeState();
}
class _homeState extends State<Home> {
    bool toggle = false;
    @override
    
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 79, 129),
        toolbarHeight: 100,
        title: Center( child : Image.asset("assets/images/Logo.png", fit: BoxFit.cover),) 
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 18, 79, 129),
        height: 120,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: () {
            Navigator.pushReplacementNamed(context, '/support');
          },
           child: Text("Support", style: TextStyle(fontSize: 22, color: Colors.white))),

          TextButton(onPressed: () {
            Navigator.pushReplacementNamed(context, '/energy');
          },
            child: Text("Energy Use", style: TextStyle(fontSize: 22, color: Colors.white))),

          TextButton(onPressed: () {},
            child: Text("Log Out", style: TextStyle(fontSize: 22, color: Colors.white))),
        ])
       
      ),
      backgroundColor: Color.fromARGB(255, 42, 47, 78),
      body: Center(child: IconButton(onPressed: () {
        setState(() {toggle = true;});
        Navigator.pushReplacementNamed(context, '/electronics');
      },
      icon: Image.asset(toggle ? "assets/images/ButtonOn.png" : "assets/images/ButtonOff.png"),))
    );
  }
}

class Electronic extends StatefulWidget{
  @override
  _electroState createState() => _electroState();
}
class _electroState extends State<Electronic> {
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 79, 129),
        toolbarHeight: 100,
        centerTitle: true,
        title: IconButton(onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        }, icon: Image.asset("assets/images/Logo.png"),)
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 18, 79, 129),
        height: 120,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: () {
            Navigator.pushReplacementNamed(context, '/support');
          },
           child: Text("Support", style: TextStyle(fontSize: 22, color: Colors.white))),

          TextButton(onPressed: () {
            Navigator.pushReplacementNamed(context, '/energy');
          },
            child: Text("Energy Use", style: TextStyle(fontSize: 22, color: Colors.white))),

          TextButton(onPressed: () {},
            child: Text("Log Out", style: TextStyle(fontSize: 22, color: Colors.white))),
        ])
      ),
            backgroundColor: Color.fromARGB(255, 42, 47, 78),
            body: Align(
              alignment: Alignment.topLeft,
              child:
              InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/electroniccontrol');
              },
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: 250,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: 
                 Text(
                    "Light 1",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                )
              )
            ),
            floatingActionButton: Transform.translate(offset: Offset(12, -35),
            child: FloatingActionButton(
              onPressed:(){

              },
               child: Icon(Icons.add),
               ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

class ElectronicControl extends StatefulWidget{
  @override
  _electrocontrolState createState() => _electrocontrolState();
}
class _electrocontrolState extends State<ElectronicControl> {
    int light = 0; 
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 79, 129),
        toolbarHeight: 100,
        centerTitle: true,
        title: IconButton(onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        }, icon: Image.asset("assets/images/Logo.png"),)
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 18, 79, 129),
        height: 120,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: () {
              Navigator.pushReplacementNamed(context, '/support');
          },
           child: Text("Support", style: TextStyle(fontSize: 22, color: Colors.white))),

          TextButton(onPressed: () {
            Navigator.pushReplacementNamed(context, '/energy');
          },
            child: Text("Energy Use", style: TextStyle(fontSize: 22, color: Colors.white))),

          TextButton(onPressed: () {},
            child: Text("Log Out", style: TextStyle(fontSize: 22, color: Colors.white))),
        ])
      ),
            backgroundColor: Color.fromARGB(255, 42, 47, 78),
            body: Padding(
            padding: const EdgeInsets.all(24.0),
           child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           InkWell(
           onTap: () {},
           borderRadius: BorderRadius.circular(8),
           child: Container(
           width: 250,
           padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
           decoration: BoxDecoration(
            color: const Color.fromARGB(255, 19, 60, 94),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            "Light 1",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      SizedBox(height: 40),
      Text(
        "Brightness: $light%",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      Slider(
        value: light.toDouble(),
        min: 0,
        max: 100,
        divisions: 100,
        label: "$light",
        activeColor: Colors.blueAccent,
        inactiveColor: Colors.white24,
        onChanged: (double value) {
          setState(() {
            light = value.toInt();
          });
        },
      ),
    ],
  ),
),
    );
  }
}

class Support extends StatefulWidget{
  @override
  _supportState createState() => _supportState();
}
class _supportState extends State<Support> {
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 79, 129),
        toolbarHeight: 100,
        centerTitle: true,
        title: IconButton(onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        }, icon: Image.asset("assets/images/Logo.png"),)
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 18, 79, 129),
        height: 120,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: () {},
           child: Text("Support", style: TextStyle(fontSize: 22, color: Colors.grey))),

          TextButton(onPressed: () {
            Navigator.pushReplacementNamed(context, '/energy');
          },
            child: Text("Energy Use", style: TextStyle(fontSize: 22, color: Colors.white))),

          TextButton(onPressed: () {},
            child: Text("Log Out", style: TextStyle(fontSize: 22, color: Colors.white))),
        ])
      ),
           backgroundColor: Color.fromARGB(255, 42, 47, 78),
           body: Padding(
  padding: const EdgeInsets.all(16.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Phone Number",
        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          "07930434903",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      Text(
        "Email",
        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          "Support@email.co.uk",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    ],
  ),
),
    );
  }
}

class Energy extends StatefulWidget{
  @override
  _energyState createState() => _energyState();
}
class _energyState extends State<Energy> {
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 79, 129),
        toolbarHeight: 100,
        centerTitle: true,
        title: IconButton(onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        }, icon: Image.asset("assets/images/Logo.png"),)
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 18, 79, 129),
        height: 120,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: () {
            Navigator.pushReplacementNamed(context, '/support');
          },
           child: Text("Support", style: TextStyle(fontSize: 22, color: Colors.white))),

          TextButton(onPressed: () {},
            child: Text("Energy Use", style: TextStyle(fontSize: 22, color: Colors.grey))),

          TextButton(onPressed: () {},
            child: Text("Log Out", style: TextStyle(fontSize: 22, color: Colors.white))),
        ])
      ),
           backgroundColor: Color.fromARGB(255, 42, 47, 78),
           body: Padding(
  padding: const EdgeInsets.all(16.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(child: 
      Text(
        "Cost",
        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      )),
      Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Text(
          "£100",
          style: TextStyle(color: Colors.white, fontSize: 25),
        )),
      ),
      Center(child: 
      Text(
        "Energy Use",
        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      )),
      Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Text(
          "72W",
          style: TextStyle(color: Colors.white, fontSize: 25),
        )),
      ),
    ],
  ),
),
    );
  }
}
