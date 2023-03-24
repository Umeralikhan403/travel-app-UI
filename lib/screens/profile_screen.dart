import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/utils/app_style.dart';
import 'package:travel_app/utils/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/2777898/pexels-photo-2777898.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        color: kLightBlue),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizental! * 3,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Umer Ali Khan',
                              style: kPoppinsBold.copyWith(
                                  color: kDarkBlue,
                                  fontSize:
                                      SizeConfig.blockSizeHorizental! * 4.2),
                            ),
                            Text(
                              'Author and Writer',
                              style: kPoppinsMedium.copyWith(
                                  color: kDarkBlue,
                                  fontSize:
                                      SizeConfig.blockSizeHorizental! * 3),
                            ),
                          ],
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 35,
                            maxWidth: SizeConfig.blockSizeHorizental! * 28,
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              color: kBlue),
                          child: Center(
                            child: Text(
                              'Following',
                              style: kPoppinsMedium.copyWith(
                                  color: kWhite,
                                  fontSize:
                                      SizeConfig.blockSizeHorizental! * 3.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Text(
                'Every pices of Chocolate I ever ate is getting back at me.. desserts are very revengful',
                textAlign: TextAlign.left,
                style: kPoppinsRegular.copyWith(
                    color: kLightGrey,
                    fontSize: SizeConfig.blockSizeHorizental! * 3.5),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockSizeVertical! * 3.5,
                    horizontal: SizeConfig.blockSizeHorizental! * 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kDarkBlue),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '54.21k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizental! * 4,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: kPoppinsMedium.copyWith(
                                color: kLightWhite,
                                fontSize:
                                    SizeConfig.blockSizeHorizental! * 3.4),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizeVertical! * 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kLightWhite),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '2.11k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizental! * 4,
                            ),
                          ),
                          Text(
                            'Posts',
                            style: kPoppinsMedium.copyWith(
                                color: kLightWhite,
                                fontSize:
                                    SizeConfig.blockSizeHorizental! * 3.4),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizeVertical! * 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kLightWhite),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '36.40k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizental! * 4,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: kPoppinsMedium.copyWith(
                                color: kLightWhite,
                                fontSize:
                                    SizeConfig.blockSizeHorizental! * 3.4),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Elly's Post",
                      style: kPoppinsBold.copyWith(
                        color: kDarkBlue,
                        fontSize: SizeConfig.blockSizeHorizental! * 4,
                      )),
                  Text(
                    'Viewall',
                    style: kPoppinsMedium.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizental! * 3.2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              SizedBox(
                child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    height: 100,
                    margin: EdgeInsets.only(
                        bottom: SizeConfig.blockSizeVertical! * 2.5),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 24,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 3),
                                  color: kDarkBlue.withOpacity(0.051))
                            ],
                            borderRadius: BorderRadius.circular(kBorderRadius),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            child: Image.network(
                              'https://images.pexels.com/photos/1450354/pexels-photo-1450354.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizental! * 2.5,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("NEWS policies",
                                  style: kPoppinsRegular.copyWith(
                                    color: kLightGrey,
                                    fontSize:
                                        SizeConfig.blockSizeHorizental! * 3,
                                  )),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 0.4,
                              ),
                              Text(
                                "Irans's raging protests Fifth Iraninan Paralimainary me...",
                                maxLines: 2,
                                style: kPoppinsSemibold.copyWith(
                                  color: kDarkBlue,
                                  fontSize: SizeConfig.blockSizeHorizental! * 4,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 0.7,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/calendar_icon.svg'),
                                  SizedBox(
                                    width: SizeConfig.blockSizeHorizental! * 1,
                                  ),
                                  Text(
                                    "16th May",
                                    style: kPoppinsSemibold.copyWith(
                                      color: kGrey,
                                      fontSize:
                                          SizeConfig.blockSizeHorizental! * 3,
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.blockSizeHorizental! * 20,
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset('assets/time_icon.svg'),
                                      SizedBox(
                                        width:
                                            SizeConfig.blockSizeHorizental! * 1,
                                      ),
                                      Text(
                                        "09:32 pm",
                                        style: kPoppinsSemibold.copyWith(
                                          color: kGrey,
                                          fontSize:
                                              SizeConfig.blockSizeHorizental! *
                                                  3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Popular From Elly',
                    style: kPoppinsBold.copyWith(
                      color: kDarkBlue,
                      fontSize: SizeConfig.blockSizeHorizental! * 4,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              SizedBox(
                height: 143,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 143,
                      width: 248,
                      margin: EdgeInsets.only(
                        right: SizeConfig.blockSizeHorizental! * 2.5,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          kBorderRadius,
                        ),
                        child: Image.network(
                          'https://images.pexels.com/photos/586687/pexels-photo-586687.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
