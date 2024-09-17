import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'blog_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/jpg/background.jpg",
                fit: BoxFit.fill,
              )),
        ),
        ListView(
          children: [
            Image.asset(
              "assets/images/jpg/homeBack.png",
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Text(
                "The Leading\n"
                "Source of - \n"
                "Art News",
                style: TextStyle(
                    color: Color(0xFF050505),
                    fontFamily: "ManualeBold",
                    fontSize: 48.0),
              ),
            ),
            const SizedBox(
              height: 33.0,
            ),
            Row(
              children: [
                Container(
                  height: 2.2,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: const BoxDecoration(color: Colors.black),
                )
              ],
            ),
            const SizedBox(
              height: 33.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogScreen()));
                  },
                  child: Container(
                    height: 60.0,
                    width: 183.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFD099),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Start Reading",
                          style: TextStyle(
                              color: Color(0xFF2F2F2F),
                              fontSize: 18.0,
                              fontFamily: "ManualeSemiBold"),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        SvgPicture.asset("assets/icons/svg/forward.svg")
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    ));
  }
}
