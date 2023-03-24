import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/utils/size_config.dart';

import '../utils/app_style.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  const FullScreenSlider(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: kLighterWhite,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 40,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                kBorderRadius,
                              ),
                              border: Border.all(
                                color: kWhite,
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'assets/arrow_back_icon.svg',
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                kBorderRadius,
                              ),
                              border: Border.all(
                                color: kWhite,
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'assets/bookmark_white_icon.svg',
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              transform: Matrix4.translationValues(0, -14, 0),
              child: Text(
                'Unravel mysteries\nof the Maldives',
                style: kPoppinsBold.copyWith(
                  color: kDarkBlue,
                  fontSize: SizeConfig.blockSizeHorizental! * 7,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizental! * 2.5,
              ),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  kBorderRadius,
                ),
                border: Border.all(
                  color: Colors.blue,
                ),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 13,
                    backgroundColor: kBlue,
                    backgroundImage: NetworkImage(
                      'https://ps.w.org/avatar-3d-creator/assets/icon-256x256.png?rev=2648611',
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizental! * 2.5,
                  ),
                  Text(
                    'Keanu Carpent May 17 • 8 min read',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: kPoppinsRegular.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blockSizeHorizental! * 3,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Maldives is an archipelagic state located in South Asia, situated in the Indian Ocean. It lies southwest of Sri Lanka and India, about 750 kilometres (470 miles; 400 nautical miles) from the Asian continent\'s mainland. The chain of 26 atolls stretches across the Equator from Ihavandhippolhu Atoll in the north to Addu Atoll in the south.\n\nComprising a territory spanning roughly 90,000 square kilometres (35,000 sq mi) including the sea, land area of all the islands comprises 298 square kilometres (115 sq mi), Maldives is one of the world\'s most geographically dispersed sovereign states and the smallest Asian country as well as one of the smallest Muslim-majority countries by land area and, with around 557,751 inhabitants, the 2nd least populous country in Asia. Malé is the capital and the most populated city, traditionally called the "King\'s Island" where the ancient royal dynasties ruled for its central location.',
                style: kPoppinsMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizental! * 4,
                  color: kDarkBlue,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> imageList = [
  'https://images.pexels.com/photos/2531237/pexels-photo-2531237.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/1450354/pexels-photo-1450354.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/1024973/pexels-photo-1024973.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({Key? key}) : super(key: key);

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 1;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: imageList
              .map(
                (item) => Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: SizeConfig.blockSizeVertical! * 50,
                    width: double.infinity,
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 52,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: SvgPicture.asset(
                          _current == entry.key
                              ? 'assets/carousel_indicator_enabled.svg'
                              : 'assets/carousel_indicator_disabled.svg',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
