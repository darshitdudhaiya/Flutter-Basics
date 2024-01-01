import 'dart:convert';

import 'package:demo/icecream/common/icecream_card.dart';
import 'package:demo/icecream/models/icecream.dart';
import 'package:demo/icecream/views/icecream_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IcecreamView extends StatelessWidget {
  const IcecreamView({super.key});

  Future<List<Icecream>?> getAllIcecreams() async {
    final icecreamsJson = await rootBundle.loadString("assets/icecerams.json");
    await Future.delayed(const Duration(seconds: 1));

    final decodedIcecreams = IcecreamData.fromJson(json.decode(icecreamsJson));
    return decodedIcecreams.icecreams;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Icecream",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Text("We have something yummy for you",
              style: Theme.of(context).textTheme.bodySmall!),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FutureBuilder(
                    future: getAllIcecreams(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        final icecreams = snapshot.data;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width,
                              height: MediaQuery.sizeOf(context).height / 2,
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  final icecream = icecreams[index];
                                  return InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                IcecreamDetailView(
                                                    icecream: icecream),
                                          ),
                                        );
                                      },
                                      child: IcecreamCard(icecream: icecream));
                                },
                                scrollDirection: Axis.horizontal,
                                itemCount: icecreams!.length,
                              ),
                            ),
                          ],
                        );
                      } else {
                        return const Center(
                            child: CircularProgressIndicator.adaptive());
                      }
                    })
              ],
            ),
          ))
        ],
      ),
    );
  }
}
