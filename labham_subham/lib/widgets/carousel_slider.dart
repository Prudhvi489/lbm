import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

List images = [
  // "assets/slider_images/house-ceremonnny.png"
"assets/slider_images/slider1.png",
  "assets/slider_images/slider2.png",
  "assets/slider_images/slider3.png",
  "assets/slider_images/slider4.png"

  // "assets/slider_images/image1.png",
  // "assets/slider_images/image2.png",
  // "assets/slider_images/image3.png",

  // "assets/slider_images/ image1.jpeg",
  // "assets/slider_images/ image2.jpeg",
  // "assets/slider_images/ image2.jpeg",
  // "assets/slider_images/ image2.jpeg",
  // "assets/slider_images/ image.webp",
  // "assets/slider_images/ image3.jpeg",
  // "assets/slider_images/ image5.jpeg"
];

class Carousel extends StatefulWidget {
  const Carousel({Key? key, required this.sizingInformation}) : super(key: key);
  final sizingInformation;
  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  // final List<Widget> imageSliders = images
  //     .map((item) => Container(
  //   child: Container(
  //     margin: const EdgeInsets.all(5.0),
  //     child: ClipRRect(
  //         borderRadius: const BorderRadius.all(Radius.circular(5.0)),
  //         child: Stack(
  //           children: <Widget>[
  //             Image.asset(item, fit: BoxFit.fitWidth, width: double.infinity, height: widget.sizingInformation.deviceScreenType == DeviceScreenType.desktop ? 500: 300 ),
  //             Positioned(
  //               bottom: 0.0,
  //               left: 0.0,
  //               right: 0.0,
  //               child: Container(
  //                 decoration: const BoxDecoration(
  //                   gradient: LinearGradient(
  //                     colors: [
  //                       Color.fromARGB(200, 0, 0, 0),
  //                       Color.fromARGB(0, 0, 0, 0)
  //                     ],
  //                     begin: Alignment.bottomCenter,
  //                     end: Alignment.topCenter,
  //                   ),
  //                 ),
  //                 padding: const EdgeInsets.symmetric(
  //                     vertical: 10.0, horizontal: 20.0),
  //                 // child: Text(
  //                 //   'No. ${images.indexOf(item)} image',
  //                 //   style: const TextStyle(
  //                 //     color: Colors.white,
  //                 //     fontSize: 20.0,
  //                 //     fontWeight: FontWeight.bold,
  //                 //   ),
  //                 // ),
  //               ),
  //             ),
  //           ],
  //         )),
  //   ),
  // ))
  //     .toList();

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    final List<Widget> imageSliders = images
        .map((item) => Container(
              child: Container(
                margin: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(item,
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: widget.sizingInformation.deviceScreenType ==
                                    DeviceScreenType.desktop
                                ?  MediaQuery.of(context).size.height*0.5
                                : 200),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: const BoxDecoration(
                              // gradient: LinearGradient(
                              //   colors: [
                              //     // Color.fromARGB(200, 0, 0, 0),
                              //     // Color.fromARGB(0, 0, 0, 0)
                              //   ],
                              //   begin: Alignment.bottomCenter,
                              //   end: Alignment.topCenter,
                              // ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            // child: Text(
                            //   'No. ${images.indexOf(item)} image',
                            //   style: const TextStyle(
                            //     color: Colors.white,
                            //     fontSize: 20.0,
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return Container(
      width: MediaQuery.of(context).size.width,
      // padding: const EdgeInsets.symmetric(horizontal: 20),
      // color: Colors.red,
      child: Column(
        children: [
          // CarouselSlider.builder(
          //   itemCount: images.length,
          //   options: CarouselOptions(
          //       height: 500,
          //       viewportFraction: 1,
          //       autoPlay: true,
          //       enlargeCenterPage:false,
          //       pageSnapping: true,
          //       onPageChanged: (index, reason) {
          //         setState(() {
          //           _current = index;
          //         });
          //       }
          //   ),
          //   itemBuilder: (context, index, realIndex) {
          //     return Container(
          //         width: double.infinity,
          //         color: Colors.red,
          //         margin: const EdgeInsets.symmetric(horizontal: 20),
          //         child: Image.network(
          //           images[index],
          //           fit: BoxFit.cover,
          //         )
          //     );
          //   },
          //
          // ),
          CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                height: widget.sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop
                    ? MediaQuery.of(context).size.height*0.5
                    : 200,
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 1,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == entry.key ? Colors.orange : Colors.grey
                      // color: (Theme.of(context).brightness == Brightness.dark
                      //     ? Colors.red
                      //     : Colors.orange)
                      //     .withOpacity(_current == entry.key ? 1 : 0.4)
                      ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
