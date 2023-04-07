// import 'package:flutter/material.dart';
// import './beranda.dart';
// import './materi.dart';
// import './akun.dart';

// class Landing extends StatefulWidget {
//   @override
//   _LandingState createState() => new _LandingState();
// }

// class _LandingState extends State<Landing> {
//   int _bottomNavCurrentIndex = 0;
//   List<Widget> _container = [new Beranda(), new Materi(), new Akun()];

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: _container[_bottomNavCurrentIndex],
//       bottomNavigationBar: new BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           onTap: (index) {
//             setState(() {
//               _bottomNavCurrentIndex = index;
//             });
//           },
//           currentIndex: _bottomNavCurrentIndex,
//           items: [
//             BottomNavigationBarItem(
//                 activeIcon: new Icon(
//                   Icons.home,
//                   color: Colors.amber,
//                 ),
//                 icon: new Icon(
//                   Icons.home,
//                   color: Colors.grey,
//                 ),
//                 label:  'Beranda',
//                 )])
//           );
//   }
// }
