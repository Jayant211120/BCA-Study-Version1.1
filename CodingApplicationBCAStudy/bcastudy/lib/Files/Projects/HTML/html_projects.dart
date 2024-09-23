import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../Components/drawer.dart';
import '../../courses.dart';
import '../../homepage.dart';
import '../../projects.dart';
class HtmlCSSprojects extends StatelessWidget {
  const HtmlCSSprojects({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HTMLCSSProject(),
    );
  }
}
class HTMLCSSProject extends StatelessWidget {
  HTMLCSSProject({super.key});
  // First Video
  final YoutubePlayerController _controller1 = YoutubePlayerController(initialVideoId: 'vK93X8kX2fs',flags: const YoutubePlayerFlags(
      autoPlay: false
  ));
  //Second Video
  final YoutubePlayerController _controller2 = YoutubePlayerController(initialVideoId: 'IYi4QeYOFHY',flags: const YoutubePlayerFlags(
      autoPlay: false
  ));
  //Third Video
  final YoutubePlayerController _controller3 = YoutubePlayerController(initialVideoId: 'ckHk5cwMG14',flags: const YoutubePlayerFlags(
      autoPlay: false
  ));
  //Fourth Video
  final YoutubePlayerController _controller4 = YoutubePlayerController(initialVideoId: '2DJvnn0xuGc',flags: const YoutubePlayerFlags(
      autoPlay: false
  ));
  //Fifth Video
  final YoutubePlayerController _controller5 = YoutubePlayerController(initialVideoId: 'piwoHqkmJrc',flags: const YoutubePlayerFlags(
      autoPlay: false
  ));
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
              child:Text('HTML CSS Projects',style: TextStyle(fontSize: 40,color: Colors.cyan),),
            ),
            ExpansionTile(title: const Text('Sticky Navigation Bar'),
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
                Image.asset('assets/projectImages/HTML/navbar.png'),
                Image.asset('assets/projectImages/HTML/navbarcss1.png'),
                Image.asset('assets/projectImages/HTML/navbarcss2.png'),
                YoutubePlayer(
                  controller:_controller1,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                ),
              ],
            ),
            ExpansionTile(title: const Text('Registration Form'),
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
                Image.asset('assets/projectImages/HTML/registration.png'),
                Image.asset('assets/projectImages/HTML/registrationcss1.png'),
                Image.asset('assets/projectImages/HTML/registrationcss2.png'),
                Image.asset('assets/projectImages/HTML/registrationcss3.png'),
                YoutubePlayer(
                  controller:_controller2,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                ),
              ],
            ),
            ExpansionTile(title: const Text('Login Form'),
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
                Image.asset('assets/projectImages/HTML/login.png'),
                Image.asset('assets/projectImages/HTML/logincss1.png'),
                Image.asset('assets/projectImages/HTML/logincss2.png'),
                Image.asset('assets/projectImages/HTML/logincss3.png'),
                YoutubePlayer(
                  controller:_controller3,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                ),
              ],
            ),
            ExpansionTile(title: const Text('Creative Button'),
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
                Image.asset('assets/projectImages/HTML/button.png'),
                Image.asset('assets/projectImages/HTML/buttoncss.png'),
                YoutubePlayer(
                  controller:_controller4,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                ),
              ],
            ),
            ExpansionTile(title: const Text('Connect Multiple Pages in HTML'),
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
                Image.asset('assets/projectImages/HTML/multipagehtml1.png'),
                Image.asset('assets/projectImages/HTML/multipagecss1.png'),
                Image.asset('assets/projectImages/HTML/multipagecss1.2.png'),
                Image.asset('assets/projectImages/HTML/multipagecss1.3.png'),
                Image.asset('assets/projectImages/HTML/multipagehtml2.png'),
                Image.asset('assets/projectImages/HTML/mulpagecss2.1.png'),
                Image.asset('assets/projectImages/HTML/multipagecss2.2.png'),
                Image.asset('assets/projectImages/HTML/multipagecss2.3.png'),
                Image.asset('assets/projectImages/HTML/multipagehtml3.png'),
                Image.asset('assets/projectImages/HTML/multipagecss3.1.png'),
                Image.asset('assets/projectImages/HTML/multipagecss3.2.png'),
                Image.asset('assets/projectImages/HTML/multipagecss3.3.png'),
                Image.asset('assets/projectImages/HTML/multipage4html.png'),
                Image.asset('assets/projectImages/HTML/multipage4.1.png'),
                Image.asset('assets/projectImages/HTML/multipagecss4.2.png'),
                Image.asset('assets/projectImages/HTML/multipagecss4.3.png'),
                YoutubePlayer(
                  controller:_controller5,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                ),
              ],
            ),
          ],
        ) ,
      ),
    );
  }
}

