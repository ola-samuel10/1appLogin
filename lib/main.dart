import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'image/app.png',
                  width: 130,
                  height: 130,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 0,
                        child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                           
                            Text(
                              'Welcome Back,',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'SAMUEL OLAJIDE',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 50),
                      const Expanded(
                        flex: 0,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('image/sam.jpeg'),
                        ),
                      )
                    ],
                  ),
                ),
               const SizedBox(height: 50,),
                Row(
                  children: const [
                    Text('Enter your login password to proceed'),
                  ],
                ),
                 const SizedBox(height: 10,),
               TextField(
                  decoration: InputDecoration(
                     filled: true,
                  fillColor: const Color.fromARGB(255, 237, 238, 238),
                    suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.visibility_off, color: Colors.grey,)),
                    contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                    border: const OutlineInputBorder(),
                    labelText: 'Enter your password',
                    labelStyle: const TextStyle( color: Colors.black, fontSize: 13),
                    hintText: 'Enter valid password',
                    
                  ),
                ),
                
                const SizedBox(height: 10),
                SizedBox(
                  width: 450,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: const Color.fromARGB(255, 224, 1, 94),
                    ),
                    child: const Text('sign in', style: TextStyle( fontSize: 18, fontWeight: FontWeight.w500),),
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: const TextSpan(
                    text: 'Forgot your password?',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: ' Reset here',
                        style: TextStyle(
                          color: Color.fromARGB(255, 224, 1, 94),
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                 const SizedBox(height: 0,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.fingerprint_outlined, color: Color.fromARGB(255, 224, 1, 94), size: 50,),),
                const SizedBox(height: 30,),

                RichText(
                  text: const TextSpan(
                    text: 'Not Samuel?',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                    children: [
                      TextSpan(
                        text: ' Sign out',
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Color.fromARGB(255, 224, 1, 94),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 70,),
                const Text('V1.2.0'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
