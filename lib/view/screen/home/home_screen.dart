import 'package:dfdflutter_app/view/style/k_color.dart';
import 'package:dfdflutter_app/view/style/k_textStyle.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff100D40),
          bottom: TabBar(
            isScrollable: true,
            padding: const EdgeInsets.only(
                left: 30, right: 30, bottom: 10, top: 10),
            unselectedLabelColor: KColor.gray,
            labelColor: Colors.black,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(12), // Creates border
                color: Colors.white),
            tabs: [
              Tab(
                  icon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('Sales', style: KTextStyle.button))),
              Tab(
                  icon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('Purchase', style: KTextStyle.button))),
              Tab(
                  icon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('Expense', style: KTextStyle.button,))),
            ],
          ),
          title: Row(
            children: [
              Text('Dhaka General Store'),
              Spacer(),
              Text('3 Pending'),
              SizedBox(width: 10),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset('assets/images/Vector.png', height: 19.53, width:15.82,fit: BoxFit.cover,),
                  Positioned(
                    right: 0,
                    top: -6,
                    child: Container(
                      alignment: Alignment.topRight,
                      height: 10,width: 10,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),),
                  )
                ],
              )
            ],
          ),
        ),
        body: Column(
          children:  [
            // Container(
            //   width: double.infinity,
            //   height: 80,
            //   //constraints: BoxConstraints(maxHeight: 300.0),
            //   child: Column(
            //     children: [
            //       Container(
            //         color:KColor.grey,
            //         height: 40,
            //         width: double.in,
            //         child: Material(
            //           color: KColor.grey,
            //           child: TabBar(
            //             isScrollable: true,
            //               // padding: const EdgeInsets.only(
            //               //     left: 30, right: 30, bottom: 10, top: 10),
            //               unselectedLabelColor: KColor.gray,
            //               labelColor: Colors.black,
            //               indicator: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(12), // Creates border
            //                   color: Colors.white),
            //             tabs: [
            //               Tab(icon: Icon(Icons.directions_car)),
            //               Tab(icon: Icon(Icons.directions_transit)),
            //               Tab(icon: Icon(Icons.directions_bike)),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 350,
              child: TabBarView(
                children: <Widget>[
                  Icon(Icons.flight, size: 350),
                  Icon(Icons.directions_transit, size: 350),
                  Icon(Icons.directions_car, size: 350),
                  // Icon(Icons.directions_bike, size: 350),
                  // Icon(Icons.directions_boat, size: 350),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
