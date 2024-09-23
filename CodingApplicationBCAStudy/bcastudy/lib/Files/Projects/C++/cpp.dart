import 'package:flutter/material.dart';
import '../../../Components/drawer.dart';
import '../../courses.dart';
import '../../homepage.dart';
import '../../projects.dart';
class Cppprojects extends StatelessWidget {
  const Cppprojects({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const CPPProject(),
    );
  }
}
class CPPProject extends StatelessWidget {
  const CPPProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:drawerBox(),
      appBar:
      AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.cyan,
        iconTheme: const IconThemeData(color: Colors.cyan),
        title: const Center(child:Text('JCA',style: TextStyle(color: Colors.cyan,fontSize: 40),)
        ),
        toolbarHeight: 100,
        actions: [
          IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const projects()));}, icon:const Icon( Icons.arrow_back)),
          IconButton(onPressed:(){
            showModalBottomSheet(context: context, builder: (BuildContext Context){
              return SizedBox(
                  height: 500,
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            side:const BorderSide(
                              color:Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        color: Colors.blue,
                        elevation: 20,
                        child: ListTile(
                          mouseCursor: MouseCursor.defer,
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          title:const Text("Home"),
                          leading:const Icon(Icons.home),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const homePage()));},
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            side:const BorderSide(
                              color:Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        color: Colors.blue,
                        elevation: 20,
                        child: ListTile(
                          mouseCursor: MouseCursor.defer,
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          title:const Text('Courses'),
                          leading: const Icon(Icons.add_box_sharp),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const courses()));},
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            side:const BorderSide(
                              color:Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        color: Colors.blue,
                        elevation: 20,
                        child: ListTile(
                          mouseCursor: MouseCursor.defer,
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          title:const Text('Projects'),
                          leading: const Icon(Icons.add_circle),
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const projects()));},
                        ),
                      ),
                    ],
                  )

              );
            });
          } ,
              icon: const Icon(Icons.menu_book))
        ],
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
            const Center(
              child:Text('C++ Projects',style: TextStyle(fontSize: 40,color: Colors.cyan),),
            ),
            ExpansionTile(title: const Text('Factorial of a Number'),
          leading:const Text('1.',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.cyan
          ),),
          collapsedBackgroundColor: Colors.black,
          backgroundColor: Colors.black,
          collapsedTextColor: Colors.cyan,
          textColor: Colors.lightBlueAccent,
          collapsedIconColor: Colors.cyan,
          iconColor: Colors.lightBlueAccent,
          // trailing: IconButton(onPressed: () { callback(); }, icon: const Icon(Icons.),),
          tilePadding:const EdgeInsets.all(30),
          children: [
            Image.asset('assets/projectImages/cpp/factorial1.png'),
            Image.asset('assets/projectImages/cpp/factorialOutput.png')
          ],
        ),
            ExpansionTile(title: const Text('Create Tables'),
              leading:const Text('2.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),),
              collapsedBackgroundColor: Colors.black,
              backgroundColor: Colors.black,
              collapsedTextColor: Colors.cyan,
              textColor: Colors.lightBlueAccent,
              collapsedIconColor: Colors.cyan,
              iconColor: Colors.lightBlueAccent,
              // trailing: IconButton(onPressed: () { callback(); }, icon: const Icon(Icons.),),
              tilePadding:const EdgeInsets.all(30),
              children: [
                Image.asset('assets/projectImages/cpp/table.png'),
                Image.asset('assets/projectImages/cpp/table_output.png')
              ],
            ),
            ExpansionTile(title: const Text('Fibonnaic Series'),
              leading:const Text('3.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),),
              collapsedBackgroundColor: Colors.black,
              backgroundColor: Colors.black,
              collapsedTextColor: Colors.cyan,
              textColor: Colors.lightBlueAccent,
              collapsedIconColor: Colors.cyan,
              iconColor: Colors.lightBlueAccent,
              // trailing: IconButton(onPressed: () { callback(); }, icon: const Icon(Icons.),),
              tilePadding:const EdgeInsets.all(30),
              children: [
                Image.asset('assets/projectImages/cpp/fibo.png'),
                Image.asset('assets/projectImages/cpp/fiboOutput.png')
              ],
            ),
            ExpansionTile(title: const Text('Greater Three Numbers'),
              leading:const Text('4.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),),
              collapsedBackgroundColor: Colors.black,
              backgroundColor: Colors.black,
              collapsedTextColor: Colors.cyan,
              textColor: Colors.lightBlueAccent,
              collapsedIconColor: Colors.cyan,
              iconColor: Colors.lightBlueAccent,
              // trailing: IconButton(onPressed: () { callback(); }, icon: const Icon(Icons.),),
              tilePadding:const EdgeInsets.all(30),
              children: [
                Image.asset('assets/projectImages/cpp/greaterThreeNumbers.png'),
                Image.asset('assets/projectImages/cpp/greaterThreeNumbersOutput.png')
              ],
            ),
            ExpansionTile(title: const Text('Even or Odd'),
              leading:const Text('5.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),),
              collapsedBackgroundColor: Colors.black,
              backgroundColor: Colors.black,
              collapsedTextColor: Colors.cyan,
              textColor: Colors.lightBlueAccent,
              collapsedIconColor: Colors.cyan,
              iconColor: Colors.lightBlueAccent,
              // trailing: IconButton(onPressed: () { callback(); }, icon: const Icon(Icons.),),
              tilePadding:const EdgeInsets.all(30),
              children: [
                Image.asset('assets/projectImages/cpp/evenodd.png'),
                Image.asset('assets/projectImages/cpp/evenoddOutput.png')
              ],
            ),
            ExpansionTile(title: const Text('Create Matrix using Arrays'),
              leading:const Text('6.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),),
              collapsedBackgroundColor: Colors.black,
              backgroundColor: Colors.black,
              collapsedTextColor: Colors.cyan,
              textColor: Colors.lightBlueAccent,
              collapsedIconColor: Colors.cyan,
              iconColor: Colors.lightBlueAccent,
              // trailing: IconButton(onPressed: () { callback(); }, icon: const Icon(Icons.),),
              tilePadding:const EdgeInsets.all(30),
              children: [
                Image.asset('assets/projectImages/cpp/metrix.png'),
                Image.asset('assets/projectImages/cpp/metrixOutput.png')
              ],
            ),
            ExpansionTile(title: const Text('Calculator'),
              leading:const Text('8.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),),
              collapsedBackgroundColor: Colors.black,
              backgroundColor: Colors.black,
              collapsedTextColor: Colors.cyan,
              textColor: Colors.lightBlueAccent,
              collapsedIconColor: Colors.cyan,
              iconColor: Colors.lightBlueAccent,
              // trailing: IconButton(onPressed: () { callback(); }, icon: const Icon(Icons.),),
              tilePadding:const EdgeInsets.all(30),
              children: [
                Image.asset('assets/projectImages/cpp/calculator.png'),
                Image.asset('assets/projectImages/cpp/calculatorOutput.png')
              ],
            ),
            ExpansionTile(title: const Text('Number Swapping'),
              leading:const Text('9.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),),
              collapsedBackgroundColor: Colors.black,
              backgroundColor: Colors.black,
              collapsedTextColor: Colors.cyan,
              textColor: Colors.lightBlueAccent,
              collapsedIconColor: Colors.cyan,
              iconColor: Colors.lightBlueAccent,
              // trailing: IconButton(onPressed: () { callback(); }, icon: const Icon(Icons.),),
              tilePadding:const EdgeInsets.all(30),
              children: [
                Image.asset('assets/projectImages/cpp/swap.png'),
                Image.asset('assets/projectImages/cpp/swapOutput.png')
              ],
            ),
            ExpansionTile(title: const Text('ASCII Values'),
              leading:const Text('10.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),),
              collapsedBackgroundColor: Colors.black,
              backgroundColor: Colors.black,
              collapsedTextColor: Colors.cyan,
              textColor: Colors.lightBlueAccent,
              collapsedIconColor: Colors.cyan,
              iconColor: Colors.lightBlueAccent,
              // trailing: IconButton(onPressed: () { callback(); }, icon: const Icon(Icons.),),
              tilePadding:const EdgeInsets.all(30),
              children: [
                Image.asset('assets/projectImages/cpp/ASCII.png'),
                Image.asset('assets/projectImages/cpp/ASCIIOutput.png')
              ],
            ),
            ExpansionTile(title: const Text('Check the Size'),
              leading:const Text('11.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan
              ),),
              collapsedBackgroundColor: Colors.black,
              backgroundColor: Colors.black,
              collapsedTextColor: Colors.cyan,
              textColor: Colors.lightBlueAccent,
              collapsedIconColor: Colors.cyan,
              iconColor: Colors.lightBlueAccent,
              // trailing: IconButton(onPressed: () { callback(); }, icon: const Icon(Icons.),),
              tilePadding:const EdgeInsets.all(30),
              children: [
                Image.asset('assets/projectImages/cpp/size.png'),
                Image.asset('assets/projectImages/cpp/sizeOutput.png')
              ],
            ),
          ],
        ) ,
      ),
    );
  }
}

