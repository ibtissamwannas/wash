import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wash/navigation_bottom.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: height * 0.12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "LOGO",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "تسجيل الدخول",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "لتسجيل دخول اضف رقم الجوالك أدناه, وسيتم",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ".ارسال رسالة نصفية للتحقق من الرقم المضاف",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: width * 0.24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: .5, color: Color(0xFF707070)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/flag.png',
                          width: 35,
                          height: 35,
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Container(
                    width: width * 0.6,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          hintText: "5xxxxxxxx",
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF969A9D),
                            fontWeight: FontWeight.w300,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  color: Color(0xFF707070), width: .5)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  color: Color(0xFF707070), width: .5)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  color: Color(0xFF707070), width: .5))),
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3C3C43),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigation()),
                  );
                },
                child: Container(
                  height: height * 0.08,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(255, 1, 89, 161)),
                  child: Center(
                      child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.08,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                    child: Text(
                  "الدخول كزائر",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 1, 89, 161)),
                )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: width * 0.38,
                    height: 1,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "أو عبر",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                    width: width * 0.38,
                    height: 1,
                    color: Colors.grey.withOpacity(0.5),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.grey.withOpacity(0.1),
                      border: Border.all(
                        width: .5,
                        color: Colors.grey.withOpacity(0.9),
                      ),
                    ),
                    child: Image.asset(
                      'assets/facebook.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.grey.withOpacity(0.1),
                      border: Border.all(
                        width: .5,
                        color: Colors.grey.withOpacity(0.9),
                      ),
                    ),
                    child: Image.asset(
                      'assets/facebook.png',
                      width: 10,
                      height: 10,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.grey.withOpacity(0.1),
                      border: Border.all(
                        width: .5,
                        color: Colors.grey.withOpacity(0.9),
                      ),
                    ),
                    child: Image.asset(
                      'assets/facebook.png',
                      width: 10,
                      height: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
