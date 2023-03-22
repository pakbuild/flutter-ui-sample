import 'package:flutter/material.dart';

class ProfList extends StatelessWidget {
  const ProfList({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(6),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.green.shade300,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
              'https://tse1.mm.bing.net/th?id=OIP.0uaH_USCRbg8Ecwdlm9OYADMEy&pid=Api&P=0'),
          backgroundColor: Colors.transparent,
        ),
        title: const Text('Quote for flooring materials'),
        subtitle: Row(
          children: const [
            Text("Quoted Amount : "),
            Text(
              "56.789",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
