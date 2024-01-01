import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo/icecream/models/icecream.dart';
import 'package:flutter/material.dart';

class IcecreamCard extends StatelessWidget {
  const IcecreamCard({
    super.key,
    required this.icecream,
  });

  final Icecream icecream;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Hero(
              tag: icecream.image,
              child: CachedNetworkImage(
                imageUrl: icecream.image,
                fit: BoxFit.cover,
                color: Colors.deepOrange.withOpacity(0.6),
                colorBlendMode: BlendMode.color,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      icecream.flavour,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Text(
                      "\$ ${icecream.price.toString()}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
