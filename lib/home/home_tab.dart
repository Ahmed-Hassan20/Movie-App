import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie/home/popular_movie_carousel_slider.dart';
import 'package:movie/home/recommended_list.dart';
import 'package:movie/home/up_coming_list.dart';
import '../my_theme.dart';

class HomeTab extends StatefulWidget {
  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.blackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PopularMoviesCarouselSlider(),
            SizedBox(
              height: 20.h,
            ),
            UpComingList(),
            SizedBox(
              height: 18.h,
            ),
            RecommendedList(),
          ],
        ),
      ),
    );
  }
}
