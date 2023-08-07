import 'package:flutter/material.dart';

import '../widgets/format_text.dart';

class SephaScreen extends StatefulWidget {
  const SephaScreen({super.key});
  @override
  State<SephaScreen> createState() => _SephaScreenState();
}

int counter = 0, index = 0, round = 0;
// ignore: non_constant_identifier_names
List<String> list_PraiseAllah = [
  "سبحان اللَه",
  "الحمد للًه ",
  "اللَّهُ أَكْبَرُ",
];

class _SephaScreenState extends State<SephaScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Center(
          child: Text(
            'فَذَكِّرْ إِنْ نَفَعَتِ الذِّكْرَى ',
            style: TextStyle(fontSize: 20),
          ),
        ),
        flexibleSpace: const Image(
          image: AssetImage('assets/images/isla.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/isla.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(

          children: [
            const Spacer(),
            Text(
              list_PraiseAllah[index],
              style: formatTextForName(),
            ),
            const SizedBox(height: 10),
            Text(
              "${counter + 1}",
              style: formatText(30),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  _incrementCounter();
                });
              },
              child: Container(
                width: width * 0.4,
                height: height * 0.19,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    "اضغط",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 0),
                          color: Color(0xffffffff),
                          blurRadius: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text(
                      "البدأ مرة اخري",
                      style: formatText(20),
                    ),
                    onPressed: () {
                      setState(() {
                        _resetCounter();
                      });
                    },
                  ),
                  Text("  رقم الدورة : $round", style: formatText(20)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _incrementCounter() {
    counter++;
    if (counter == 33) {
      counter = 0;
      index++;
      if (index == 3) {
        index = 0;
        round++;
      }
    }
  }

  void _resetCounter() {
    counter = 0;
    index = 0;
    round = 0;
  }

  // ignore: unused_element
  void _oldIncrementCounter() {
    if ((counter == 33 || counter == 66 || counter == 99) && index < 2) {
      index++;
    } else if (index == 2 && counter == 99) {
      index = 0;
      round++;
      counter = 0;
    }
    counter++;
  }
}




