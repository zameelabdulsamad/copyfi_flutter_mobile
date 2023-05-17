import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomAppBar(

        notchMargin: 8.0,
        color: Colors.white,
        child: SizedBox(
          height: 72.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {

                },
              ),
              IconButton(
                icon: const Icon(Icons.location_on),
                onPressed: () {

                },
              ),
              const SizedBox(width: 64.0),
              IconButton(
                icon: const Icon(Icons.folder),
                onPressed: () {

                },
              ),
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {

                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: const Icon(Icons.add),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


    );
  }
}
