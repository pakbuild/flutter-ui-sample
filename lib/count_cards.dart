import 'package:flutter/material.dart';

class CountCards extends StatelessWidget {
  const CountCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(6.0),
        child: Card(
          elevation: 7,
          shadowColor: Colors.black,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: SizedBox(
            width: 108,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 31,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://tse2.mm.bing.net/th?id=OIP.WqwN4SaVcNp2CQVuuAlxugHaIP&pid=Api&P=0"),
                      radius: 100,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '3421',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Received \n Quotes',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
