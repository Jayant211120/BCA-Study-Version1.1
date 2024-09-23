import 'package:bcastudy/Components/appbar.dart';
import 'package:flutter/material.dart';
import 'Statistics/statisticsTheoryList.dart';
class mathsContent2 extends StatelessWidget {
  const mathsContent2({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const theory(),
    );
  }
}
class theory extends StatelessWidget {
  const theory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
          flexibleSpace:const appbar(text1: 'Home', text2: 'Courses', text3: 'Projects')
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
            const Center(
              child:Text('Statistics',style: TextStyle(fontSize: 40,color: Colors.cyan),),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const statisticsTheoryList()));},style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan
                            ),child:Image.asset('assets/Images/maths.png'),)
                        ),
                        const Text('Statistics',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),

                    // --------------------
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan
                            ),child:Image.asset('assets/Images/html.png'),)

                        ),
                        const Text('Set',style: TextStyle(fontSize: 20,height: 4),),
                      ],
                    ),
                  ]
              ),
            ),

            //  ----Second Row
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan
                            ),child:Image.asset('assets/Images/css3.png'),)
                        ),
                        const Text('P&C',style: TextStyle(fontSize: 20,height:4)),
                      ],
                    ),

                    // --------------------
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan
                            ),child:Image.asset('assets/Images/javascript.png'),)
                        ),
                        const Text('Probability',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),

                  ]
              ),
            ),

            //   ----------Third Row
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children:[ Container(height: 100,width: 100,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                      ),
                          child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyan
                          ),child:Image.asset('assets/Images/php.png'),)
                      ),
                        const Text('Trigonometry',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),
                    // --------------------
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan
                            ),child:Image.asset('assets/Images/maths.png'),)
                        ),
                        const Text('Vector',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),
                  ]
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan
                            ),child:Image.asset('assets/Images/C.jpg'),)
                        ),
                        const Text('Progression',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),

                    // --------------------
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan
                            ),child:Image.asset('assets/Images/c++.webp'),)
                        ),
                        const Text('Deter/Met',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),

                  ]
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan
                            ),child:Image.asset('assets/Images/python.png'),)
                        ),
                        const Text('Quadratic Equation',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),

                    // --------------------
                    Column(
                      children: [
                        Container(height: 100,width: 100,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [Colors.blueAccent,Colors.purple]),
                        ),
                            child:ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan
                            ),child:Image.asset('assets/Images/dsa.png'),)
                        ),
                        const Text('Coor.Geom.',style: TextStyle(fontSize: 20,height:4),),
                      ],
                    ),

                  ]
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}

