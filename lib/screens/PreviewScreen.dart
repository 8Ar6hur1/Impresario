
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      onPageChanged: (int page) {},
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/preview/bg_people_one.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              const Image(
                image: AssetImage('assets/preview/img_one_up.png'),
                fit: BoxFit.fitWidth,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Text(
                      'Impresario',
                      style: TextStyle(
                          fontSize: 49,
                          fontFamily: 'StyleScript',
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  const Text(
                    'Your love story begins with Impresario',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'FixelText',
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 105),
                    child: Image.asset(
                      'assets/preview/bg_emoji_one.png',
                      width: 290,
                      height: 290,
                    ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Image(
                  image: AssetImage('assets/preview/img_one_down.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 37),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: null,
                          icon: SvgPicture.asset(
                            'assets/preview/img_btn_preview_back.svg',
                            width: 45,
                            height: 35,
                            color: Colors.transparent,
                          ),
                        ),
                        IconButton(
                          onPressed: () => pageController.jumpToPage(1),
                          icon: SvgPicture.asset(
                            'assets/preview/img_btn_preview_next.svg',
                            width: 70,
                            height: 50,
                          ),
                        ),
                        IconButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/LogicScreen'),
                          icon: SvgPicture.asset(
                            'assets/preview/img_btn_preview_skip.svg',
                            width: 20,
                            height: 15,
                          ),
                        )
                      ],
                    ),
                  )),
              const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 101),
                    child: Text(
                      'Impresario – the place for self-expression\n'
                      'and connections!\n'
                      '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'FixelText',
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ),
                  )),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 170),
                  child: Text(
                    'WELCOME',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'FixelText',
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 220),
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: const SlideEffect(
                        spacing: 7.0,
                        radius: 8.0,
                        dotWidth: 11.0,
                        dotHeight: 4.0,
                        paintStyle: PaintingStyle.fill,
                        strokeWidth: 1.5,
                        dotColor: Color(0x80262626),
                        activeDotColor: Color(0x800D0A07)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/preview/bg_people_two.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              const Image(
                image: AssetImage('assets/preview/img_two_up.png'),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Text(
                      'Impresario',
                      style: TextStyle(
                          fontSize: 49,
                          fontFamily: 'StyleScript',
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Text(
                    'Your love story begins with Impresario',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'FixelText',
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Image(
                  image: AssetImage('assets/preview/img_two_down.png'),
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 37),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => pageController.jumpToPage(0),
                          icon: SvgPicture.asset(
                            'assets/preview/img_btn_preview_back.svg',
                            width: 45,
                            height: 35,
                          ),
                        ),
                        IconButton(
                          onPressed: () => pageController.jumpToPage(2),
                          icon: SvgPicture.asset(
                            'assets/preview/img_btn_preview_next.svg',
                            width: 70,
                            height: 50,
                          ),
                        ),
                        IconButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/LogicScreen'),
                          icon: SvgPicture.asset(
                            'assets/preview/img_btn_preview_skip.svg',
                            width: 20,
                            height: 15,
                          ),
                        )
                      ],
                    ),
                  )),
              const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 101),
                    child: Text(
                      'Here, you can express yourself as\n'
                      'you wish and start your unique!\n'
                      'story.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'FixelText',
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ),
                  )),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 170),
                  child: Text(
                    'SPACE FOR SELF-EXPRESSION',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'FixelText',
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 220),
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: const SlideEffect(
                        spacing: 7.0,
                        radius: 8.0,
                        dotWidth: 11.0,
                        dotHeight: 4.0,
                        paintStyle: PaintingStyle.fill,
                        strokeWidth: 1.5,
                        dotColor: Color(0x80262626),
                        activeDotColor: Color(0x800D0A07)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/preview/bg_people_three.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              const Image(
                image: AssetImage('assets/preview/img_three_up.png'),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Text(
                      'Impresario',
                      style: TextStyle(
                          fontSize: 49,
                          fontFamily: 'StyleScript',
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Text(
                    'Your love story begins with Impresario',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'FixelText',
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Image(
                  image: AssetImage('assets/preview/img_three_down.png'),
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 37),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => pageController.jumpToPage(1),
                          icon: SvgPicture.asset(
                            'assets/preview/img_btn_preview_back.svg',
                            width: 45,
                            height: 35,
                          ),
                        ),
                        IconButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/LogicScreen'),
                          icon: SvgPicture.asset(
                            'assets/preview/img_btn_preview_next.svg',
                            width: 70,
                            height: 50,
                          ),
                        ),
                        IconButton(
                          onPressed: null,
                          icon: SvgPicture.asset(
                            'assets/preview/img_btn_preview_skip.svg',
                            width: 20,
                            height: 15,
                            color: Colors.transparent,
                          ),
                        )
                      ],
                    ),
                  )),
              const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 101),
                    child: Text(
                      'Let\'s get started! Create your profile\n'
                      'and unleash your impressions. Your\n'
                      'love story begins right now!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'FixelText',
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                    ),
                  )),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 170),
                  child: Text(
                    'LET\'S START YOUR STORY NOW',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'FixelText',
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 220),
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: const SlideEffect(
                        spacing: 7.0,
                        radius: 8.0,
                        dotWidth: 11.0,
                        dotHeight: 4.0,
                        paintStyle: PaintingStyle.fill,
                        strokeWidth: 1.5,
                        dotColor: Color(0x80262626),
                        activeDotColor: Color(0x800D0A07)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
