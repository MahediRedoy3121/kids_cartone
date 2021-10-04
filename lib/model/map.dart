

import 'package:flutter/cupertino.dart';


class youtube {
  String title;
  String url;
  String tag;

  youtube(
    {
      required this.title,
      required this.url,
      required this.tag
    }
  );

}

// List <youtube> data = [
//   youtube (title: "Gopal Bhar Episode781"
//                   "Gopal Bhar Episode782"
//                   "Gopal Bhar Episode783",
//           url : "https://www.youtube.com/embed/Hz2As2q8TMo"
//                   "https://www.youtube.com/embed/RBd0mcci2Tc" 
//                   "https://www.youtube.com/embed/hxtesR-lpW4")
// ];


List <String> gopalvar = ["Gopal Bhar Episode781",
                  "Gopal Bhar Episode782",
                  "Gopal Bhar Episode783",];
    var name= gopalvar.map((e) => gopalvar.length);

List <String> gopalvarurl = ["https://www.youtube.com/embed/Hz2As2q8TMo",
                  "https://www.youtube.com/embed/RBd0mcci2Tc" ,
                  "https://www.youtube.com/embed/hxtesR-lpW4",];
    var name1= gopalvar.map((e) => gopalvarurl.length);