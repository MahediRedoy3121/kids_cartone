import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class problem extends StatefulWidget {
  const problem({ Key? key }) : super(key: key);

  @override
  State<problem> createState() => _problemState();
}

class _problemState extends State<problem> {

  final List <String> url_image = [
   

    
    "https://cdn-bcikh.nitrocdn.com/VCMuauOnKdIuGHOdXXWcAEouHFNRgAdk/assets/static/optimized/rev-edbb0b5/wp-content/uploads/2020/11/meena-game-theme-with-meena-raju-and-mithu.jpeg",
    "https://s1.dmcdn.net/v/SuqKQ1WSlrIUnxqXL/x720",
    "https://i.ytimg.com/vi/kP9TfCWaQT4/maxresdefault.jpg",
    "https://s2.dmcdn.net/v/SSsup1VNoEVqlxwFr/x1080",

  ];
final List <String> urlimage = [
    "https://images.pexels.com/photos/4406335/pexels-photo-4406335.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/4406335/pexels-photo-4406335.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/4406335/pexels-photo-4406335.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/4406335/pexels-photo-4406335.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
     "https://images.pexels.com/photos/4406335/pexels-photo-4406335.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/4406335/pexels-photo-4406335.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/4406335/pexels-photo-4406335.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/4406335/pexels-photo-4406335.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/4406335/pexels-photo-4406335.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  ];






  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              child: CarouselSlider.builder(
                      options: CarouselOptions(
                  // height: 200,
            // aspectRatio: 10,
            // viewportFraction: 0.5,
            initialPage: 0,
            enableInfiniteScroll: true,
            // reverse: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
                 
            // autoPlayAnimationDuration: Duration(milliseconds: 800),
            // autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            scrollDirection: Axis.horizontal,
                      ),
                        itemCount: url_image.length, 
                        itemBuilder: (context , index, realindex){
                          
                          final urlimages = url_image [index];
                          
                          return GestureDetector(
                            onTap: (){
                              
                            },
                            child:buildImage(urlimages, index) ,
                          );
                     
                        }, 
                       ),
            ),
          Expanded(
            child: Container(
                         width: double.infinity,
              child: GridView.builder(
                itemCount: urlimage.length,
                 gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 3,crossAxisSpacing: 8,mainAxisSpacing: 8,
                   childAspectRatio: .7
                   ), 
                 itemBuilder: (context, index){
                   return Container(
                     child: 
                     
                     Image.network(urlimage [index],fit: BoxFit.cover,),
                   );
                 }),
            ),
          )




          ],
        ),
      ),
    );
  }
  Widget buildImage (String urlimages, int index) => Container(
    width: MediaQuery.of(context).size.width /1 ,
  margin: const EdgeInsets.symmetric(horizontal: 5),
  color: Colors.grey ,
  child: Image.network( urlimages,fit: BoxFit.cover,)

);

}