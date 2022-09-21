import 'package:cw7_1/screens/second.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var chooseColor = [
    Colors.orangeAccent,
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent,
  ];

  TextEditingController controller = TextEditingController();

  var chosenColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: chosenColor,
      appBar: AppBar(
        title: Text('دفتر اليوميات'),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Spacer(
              flex: 3,
            ),
            Text('اختر اللون المفضل', style: TextStyle(fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                chooseColor.length,
                (index) => GestureDetector(
                  onTap: () {
                    chosenColor = chooseColor[index];
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: chooseColor[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text('ماذا تريد ان تكتب', style: TextStyle(fontSize: 24)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: controller,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  )),
            ),
            Spacer(
              flex: 3,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(
                        message: controller.text, color: chosenColor),
                  ),
                );
              }),
              child: Container(
                height: 64,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text('حفظ',
                    style: TextStyle(fontSize: 24, color: Colors.white)),
              ),
            )
          ],
        )),
      ),
    );
  }
}
