import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:async';
import 'package:ss_agriqulture_pvt_ltd/util/constants.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<String> carouselImages = [
    'assets/image/dishes/poha.jpeg',
    'assets/image/dishes/cocktail.jpeg',
    'assets/image/dishes/maggie.jpeg',
    'assets/image/dishes/poha.jpeg',
    'assets/image/dishes/cocktail.jpeg',
    'assets/image/dishes/cocktail.jpeg',
    // Add more image URLs as needed
  ];

  // Timer for automatic page sliding
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // Start the timer for automatic sliding
    _startTimer();
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    _timer.cancel();
    super.dispose();
  }

  // Function to handle automatic sliding
  void _startTimer() {
    const Duration slideDuration = const Duration(seconds: 3);

    _timer = Timer.periodic(slideDuration, (timer) {
      if (_currentPage < (carouselImages.length - 1)) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      // Animate to the next page
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500), // Adjust animation duration
        curve: Curves.easeInOut, // Adjust animation curve
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile1(),
      desktop: desktop1(),
    );
  }

  Widget mobile1() {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Responsive carousel
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              // Calculate the number of items to display based on screen width
              int itemCount = sizingInformation.isDesktop ? 3 : 1;

              return Container(
                height: 400, // Adjust the height as needed
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: (carouselImages.length / itemCount).ceil(),
                  itemBuilder: (context, index) {
                    // Calculate the start and end indices based on itemCount
                    int startIndex = index * itemCount;
                    int endIndex = (index + 1) * itemCount;

                    // Create a sublist of image URLs to display on this page
                    List<String> sublist = carouselImages.sublist(
                      startIndex,
                      endIndex.clamp(0, carouselImages.length),
                    );

                    // Create a row of Image widgets from the sublist of image URLs
                    return Row(
                      children: sublist.map((imageUrl) {
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              imageUrl,
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
              );
            },
          ),
          // Add any other content below the carousel
          // Example: Text('Other content goes here'),
          Container(
            height: 400, // Adjust the height as needed
            color: Colors.grey, // Background color for the space below carousel
            child: Center(
              child: Text(
                'Additional Content Below Carousel',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget desktop1() {
    return SingleChildScrollView(
      
      child: Container(
        height: h,
        width: w,
        child: Column(
          children: [
            // Responsive carousel
            ResponsiveBuilder(
              builder: (context, sizingInformation) {
                // Calculate the number of items to display based on screen width
                int itemCount = sizingInformation.isDesktop ? 3 : 1;
      
                return Container(
                  height: 200, // Adjust the height as needed
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: (carouselImages.length / itemCount).ceil(),
                    itemBuilder: (context, index) {
                      // Calculate the start and end indices based on itemCount
                      int startIndex = index * itemCount;
                      int endIndex = (index + 1) * itemCount;
      
                      // Create a sublist of image URLs to display on this page
                      List<String> sublist = carouselImages.sublist(
                        startIndex,
                        endIndex.clamp(0, carouselImages.length),
                      );
                      // Create a row of Image widgets from the sublist of image URLs
                      return Row(
                        children: sublist.map((imageUrl) {
                          return Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                imageUrl,
                                fit: BoxFit.cover, // Adjust the fit as needed
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                );
              },
            ),
            // Add any other content below the carousel
            // Example: Text('Other content goes here'),
            Container(
              height: 400, // Adjust the height as needed
              color: Colors.white, // Background color for the space below carousel
              child: Center(
                child: Text(
                  'Additional Content Below Carousel',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}