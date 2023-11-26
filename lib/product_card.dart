import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String img;

  const ProductCard(
      {super.key, required this.title, required this.price, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          // color: const Color.fromRGBO(216, 240, 253, 1),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white10.withAlpha(80)),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 118, 196, 238).withAlpha(100),
                blurRadius: 10.0,
                spreadRadius: 0.0,
              ),
            ],
            color: Colors.white.withOpacity(0.2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '\$$price',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Image.asset(
                  img,
                  height: 175,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}