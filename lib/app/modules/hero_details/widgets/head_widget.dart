import 'package:flutter/material.dart';

class HeadWidget extends StatelessWidget {
  HeadWidget({
    @required this.name,
    @required this.urlImage,
  });
  final String name;
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            urlImage,
            width: 100,
            height: 100,
          ),
          Expanded(
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
