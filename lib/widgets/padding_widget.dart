import 'package:aliment/widgets/animate_button.dart';
import 'package:flutter/material.dart';

class PaddingWidget extends StatefulWidget {
  const PaddingWidget({super.key});

  @override
  State<PaddingWidget> createState() => _PaddingWidgetState();
}

class _PaddingWidgetState extends State<PaddingWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 103.5),
            child: SizedBox(
              child: Image.asset(
                "assets/images/frame_image.png",
                width: 256,
                height: 256,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 35),
            child: SizedBox(
              width: 235,
              height: 30,
              child: Text(
                "Best prices & Deals",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Color(0xFFFF800B)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: SizedBox(
              child: Text(
                "Find your favorite Meals at the best prices with exclusive deals only on aliments app.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 114,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: const Color(0xFFFF800B),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 54),
                      //class chaqirilayabdi
                      child: AnimatedButtonPage(
                        text: "Login",
                        backgroundColor: const Color(0xffFFFFFF),
                        textColor: const Color(0xff000000),
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  //class chaqirilayabdi
                  AnimatedButtonPage(
                      text: "Crate an account",
                      backgroundColor: const Color(0xff161616),
                      textColor: const Color(0xffFFFFFF))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
