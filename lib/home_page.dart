import 'package:flutter/material.dart';
import 'package:flutter_appui/count_cards.dart';
import 'package:flutter_appui/list_tile.dart';
import 'package:flutter_appui/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 229, 213, 205),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              ListTile(
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "GYQ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "Overview",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 11.0,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red),
                      child: const Text('Weekly'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CountCards(),
                  CountCards(),
                  CountCards(),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                color: Colors.white,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Received | 23' '\nQuotes',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Enquiries',
                          style: TextStyle(color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'History',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ),
              const ListTile(
                title: SearchBar(),
                trailing: Icon(
                  Icons.settings_applications_outlined,
                  size: 50,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const ProfList(),
              const ProfList(),
              const ProfList(),
              const ProfList(),
              const ProfList(),
              const ProfList(),
              const ProfList(),
            ],
          ),
        ),
      ),
    );
  }
}
