import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController(viewportFraction: 1);
  var _currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: height * 0.05, start: width * 0.05, end: width * 0.05),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.blue),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/flag.png',
                            width: 45,
                            height: 45,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: width * 0.03,
                        ),
                        child: Text(
                          "مرحبا, محمد",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text("طريق الملك فهد , الرياض السعودية"),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Icon(
                    Icons.notifications,
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            SizedBox(
              height: height * 0.3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: pageController,
                  itemBuilder: (context, index) => Stack(
                        children: [
                          Image.asset(
                            "${images[index]}",
                            fit: BoxFit.cover,
                            width: width * 1,
                          ),
                        ],
                      ),
                  itemCount: images.length),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            DotsIndicator(
              dotsCount: images.length,
              position: _currentPageValue,
              decorator: DotsDecorator(
                color: Colors.black87, // Inactive color
                activeColor: Colors.pink.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  start: width * 0.05, end: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "أطلب الان",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: width * 0.9,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                offset: const Offset(
                                  3.0,
                                  3.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(
                                  0,
                                  0,
                                ),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ),
                              //BoxShadow
                            ],
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/discount.png',
                                width: width * 0.3,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(start: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "اسم الخدمة",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 150,
                                        child: Text(
                                          "نص تعريفي عن الخدمة المقدمة",
                                          style: TextStyle(
                                            color: Colors.grey.withOpacity(0.5),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "100 ر.س",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.6)),
                                child: Icon(Icons.shopping_cart),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List images = [
    'assets/discount.png',
    'assets/discount.png',
    'assets/discount.png',
    'assets/discount.png',
  ];
}
