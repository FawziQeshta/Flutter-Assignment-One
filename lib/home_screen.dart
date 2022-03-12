import 'package:assigment_one/custom_widget.dart';
import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text(
          'عاصمة فلسطين',
          style: TextStyle(fontSize: 26, fontFamily: 'Amiri-Regular'),
        ),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/image.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'مدينة القدس',
              style: TextStyle(
                fontSize: 26, fontFamily: 'Amiri-Regular', color: Color(0xFF616161)
              ),
            ),
            CustomWidget(label: 'القدس', value: 'الاسم'),
            CustomWidget(label: '١٢٥ كم', value: 'المساحة'),
            CustomWidget(label: '٣٥٨٠٠٠ نسمة', value: 'السكان'),
            CustomWidget(label: 'فلسطين', value: 'الدولة'),
            CustomWidget(label: 'فوزي قشطة', value: 'اسم الطالب'),
          ],
        ),
      ),
    );
  }
}
