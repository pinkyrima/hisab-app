import 'package:dfdflutter_app/view/style/k_color.dart';
import 'package:dfdflutter_app/view/style/k_textStyle.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;

  final List<Widget> list = [
    const SliderScreen(
      title: 'Onboarding Title 1',
      subTitle:
          'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Lobortis\nsed elit aliquam ultricies in.',
      backgroundImage: 'assets/images/onboardingImg1.png',
    ),
    const SliderScreen(
      title: 'Onboarding Title 2',
      subTitle:
          'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Lobortis\nsed elit aliquam ultricies in.',
      backgroundImage: 'assets/images/onboardingImg2.png',
    ),
  ];

  PageController _controller = PageController(initialPage: 0);

  onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KColor.white,
      body: Column(
        children: [
          SizedBox(
            height: _height / 5.78,
          ),
          SizedBox(
            height: _height/1.8,
            child: PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              physics: const BouncingScrollPhysics(),
              onPageChanged: onChanged,
              itemBuilder: (context, int index) {
                return list[index];
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(list.length, (int index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height:  10
                    ,
                width: 10
                    ,
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: (index == _currentPage ||
                            index == _currentPage - 1 )
                        ? Colors.black
                        : KColor.grey.withOpacity(0.5)),
              );
            }),
          ),
          // Padding(
          //   padding:  EdgeInsets.symmetric(horizontal: _width/9.39),
          //   child: Image.asset('assets/images/onboardingImg1.png',height: _height/3.65,),
          // ),
          // SizedBox(height: _height/8.20,),
          // Text('')
        ],
      ),
    );
  }
}

///Slider class
class SliderScreen extends StatelessWidget {
  final String title, subTitle, backgroundImage;

  const SliderScreen(
      {required this.title,
      required this.subTitle,
      required this.backgroundImage,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          Image.asset(backgroundImage, height: _height/3.65, fit: BoxFit.cover),
          // GestureDetector(
          //     behavior: HitTestBehavior.translucent,
          //     //onTap: () => context.nextPage(LogInScreen()),
          //     child: Container(height: 25, color: Colors.blue,)
          // ),
          SizedBox(
            height: _height / 10.20,
          ),
          Text(
            title,
            style: KTextStyle.headline8,
          ),
          SizedBox(
            height: _height / 50.75,
          ),
          Text(
            subTitle,
            style: KTextStyle.bodyText2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
