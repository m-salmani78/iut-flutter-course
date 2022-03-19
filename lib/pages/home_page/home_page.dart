import 'package:flutter/material.dart';
import 'package:new_flutter_project/pages/home_page/widgets/shopping_item_view.dart';
import 'package:new_flutter_project/pages/profile_page/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;
  bool isConfirmed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              const Text("Home Page", style: TextStyle(fontFamily: "Niconne")),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const ProfilePage();
                  },
                ));
              },
              icon: const Icon(Icons.person),
            ),
          ],
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return ShoppingItemView();
          },
        )
        // floatingActionButton: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     FloatingActionButton(
        //       onPressed: () {
        //         setState(() {
        //           number++;
        //         });
        //       },
        //       child: const Icon(Icons.add),
        //     ),
        //     const SizedBox(height: 8),
        //     FloatingActionButton(
        //       onPressed: () {
        //         setState(() {
        //           number--;
        //         });
        //       },
        //       child: const Icon(Icons.remove),
        //     ),
        //   ],
        // ),
        );
  }

  void changeConfirmationState() {
    setState(() {
      isConfirmed = !isConfirmed;
    });
  }
}
