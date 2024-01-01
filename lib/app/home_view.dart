import 'package:demo/Calculator/views/num_calc.dart';
import 'package:demo/icecream/models/icecream.dart';
import 'package:demo/icecream/views/icecream_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: IcecreamView(),
        // child: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       const Text(
        //         'Choose an App',
        //         style: TextStyle(
        //           fontSize: 24,
        //           fontWeight: FontWeight.bold,
        //           color: Colors.blue,
        //         ),
        //       ),
        //       const SizedBox(height: 20),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           ElevatedButton(
        //             style: ElevatedButton.styleFrom(
        //               backgroundColor: Colors.black,
        //               padding: const EdgeInsets.all(15),
        //             ),
        //             onPressed: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const NumCalc(),
        //                 ),
        //               );
        //             },
        //             child: const Icon(
        //               Icons.calculate_outlined,
        //               color: Colors.white,
        //             ),
        //           ),
        //           ElevatedButton(
        //             style: ElevatedButton.styleFrom(
        //               backgroundColor: Colors.black,
        //               padding: const EdgeInsets.all(15),
        //             ),
        //             onPressed: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => const IcecreamView(),
        //                 ),
        //               );
        //             },
        //             child: const Icon(
        //               Icons.icecream_outlined,
        //               color: Colors.white,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
