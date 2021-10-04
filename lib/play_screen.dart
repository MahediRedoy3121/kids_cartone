import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class play_screen extends StatefulWidget {
  const play_screen({ Key? key }) : super(key: key);

  @override
  _play_screenState createState() => _play_screenState();
}

class _play_screenState extends State<play_screen> {

final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'Hz2As2q8TMo',
    
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      enableCaption: false,
      forceHD: false
    )
   
);

@override
  void initState() {
    // TODO: implement initState
    YoutubePlayerController(initialVideoId: 'Hz2As2q8TMo');
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Play screen"),
      ),
      body: Column(
        children: [
          YoutubePlayer(
          
    controller: _controller,
    showVideoProgressIndicator: true,
    progressIndicatorColor: Colors.red,
    ),

    const SizedBox(
      height: 10,
    ),


     Expanded(
            child: Container(
                         width: double.infinity,
              child: GridView.builder(
                itemCount: 10,
                 gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 3,crossAxisSpacing: 8,mainAxisSpacing: 8,
                  //  childAspectRatio: 
                   ), 
                 itemBuilder: (context, index){
                   return Container(
                     child: 
                       YoutubePlayer(
            
    controller: _controller,
    showVideoProgressIndicator: true,
    progressIndicatorColor: Colors.red,
    ),
                     
                   );
                 }),
            ),
          )


        ],
      ),
      
    );
  }
}