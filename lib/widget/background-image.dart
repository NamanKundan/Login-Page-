// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

class Background_image extends StatelessWidget {
  const Background_image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          Color.fromARGB(135, 3, 244, 192),
          Color.fromRGBO(64, 211, 214, 0.22)
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image3.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
