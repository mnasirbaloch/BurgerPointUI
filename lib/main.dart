import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackWidgetExample(),
    ),
  );
}

class StackWidgetExample extends StatefulWidget {
  const StackWidgetExample({super.key});
  @override
  State<StackWidgetExample> createState() => _StackWidgetExampleState();
}

class _StackWidgetExampleState extends State<StackWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(133, 243, 239, 239),
        elevation: 0,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        actions: const [
          Icon(
            Icons.search_rounded,
          ),
          SizedBox(
            width: 10,
          )
        ],
        // centerTitle: true,
        // title: const Text("Habibi Burger"),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.menu),
        //     onPressed: () {},
        //   ),
        // ],
        iconTheme: const IconThemeData(color: Colors.blue, size: 30),
      ),
      drawer: createHomeDrawer(),
      body: Container(
        color: const Color.fromARGB(133, 243, 239, 239),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20.0,
                top: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Habibi Burgers",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  // Icon(Icons.home)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                createBurgerItem(
                  burgerImagePath: "assets/images/burger1.jpg",
                  burgerTitle: "CheeseBurger",
                  burgerWeight: "150 g",
                  burgerPrice: 649.99,
                ),
                createBurgerItem(
                  burgerImagePath: "assets/images/burger2.jpg",
                  burgerTitle: "Chicken-Deluxe",
                  burgerWeight: "240 g",
                  burgerPrice: 749.99,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                createBurgerItem(
                  burgerImagePath: "assets/images/burger3.jpg",
                  burgerTitle: "HamBurger ",
                  burgerWeight: "320 g",
                  burgerPrice: 849.99,
                ),
                createBurgerItem(
                  burgerImagePath: "assets/images/burger4.jpg",
                  burgerTitle: "Big John",
                  burgerWeight: "650 g",
                  burgerPrice: 949.99,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                createBurgerItem(
                  burgerImagePath: "assets/images/burger3.jpg",
                  burgerTitle: "HamBurger ",
                  burgerWeight: "450 g",
                  burgerPrice: 599.99,
                ),
                createBurgerItem(
                  burgerImagePath: "assets/images/burger4.jpg",
                  burgerTitle: "Big John",
                  burgerWeight: "650 g",
                  burgerPrice: 949.99,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                createBurgerItem(
                  burgerImagePath: "assets/images/burger5.jpg",
                  burgerTitle: "Spicy Chicken ",
                  burgerWeight: "500 g",
                  burgerPrice: 549.99,
                ),
                createBurgerItem(
                  burgerImagePath: "assets/images/burger6.jpg",
                  burgerTitle: "Crunchy Burger",
                  burgerWeight: "750 g",
                  burgerPrice: 1049.99,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                createBurgerItem(
                  burgerImagePath: "assets/images/burger7.jpg",
                  burgerTitle: "Spicy Burger ",
                  burgerWeight: "320 g",
                  burgerPrice: 849.99,
                ),
                createBurgerItem(
                  burgerImagePath: "assets/images/burger8.jpg",
                  burgerTitle: "Mix Burger",
                  burgerWeight: "650 g",
                  burgerPrice: 949.99,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget createMenuItem(
    IconData iconData, String name, DrawerItemListener listener) {
  return InkWell(
    onTap: listener,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
          child: Icon(
            iconData,
            size: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
          child: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

typedef DrawerItemListener = void Function();
Drawer createHomeDrawer() {
  return Drawer(
    backgroundColor: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
              // image: DecorationImage(
              //     image: AssetImage("assets/images/kk.jpg"),
              //     opacity: 0.2,
              //     fit: BoxFit.fill),
              ),
          child: DrawerHeader(
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.api,
                        color: Colors.red,
                        size: 40,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          children: [
                            TextSpan(
                              text: 'Habibi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Burger',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        createMenuItem(
          Icons.dashboard,
          "Dashboard",
          () {},
        ),
        createMenuItem(
          Icons.food_bank,
          "Foods&Drinks",
          () {},
        ),
        createMenuItem(
          Icons.message,
          "Messages",
          () {},
        ),
        createMenuItem(
          Icons.payment,
          "Bills",
          () {},
        ),
        createMenuItem(
          Icons.settings,
          "Seetings",
          () {},
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.only(left: 20),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 1),
                    top: BorderSide(color: Colors.black12, width: 1),
                  ),
                ),
                child: const Text("Others"),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        createMenuItem(
          Icons.notifications,
          "Notifications",
          () {},
        ),
        createMenuItem(
          Icons.support_agent,
          "Support",
          () {},
        ),
        const SizedBox(
          height: 50,
          // width: 100,
        ),
        Flexible(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/abd.png"),
                  fit: BoxFit.fitHeight),
            ),
          ),
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              "Muhammad Nasir",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0),
            child: Text(
              "Premium User",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              "Open Profile",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 5, top: 20),
          margin: const EdgeInsets.all(0),
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 0.5,
              ),
            ),
          ),
          child: const Positioned(
            bottom: 0,
            child: Text(
              "@copyright habibi 20221",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget createBurgerItem(
    {required String burgerImagePath,
    required String burgerTitle,
    required String burgerWeight,
    required double burgerPrice}) {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(30),
    decoration: const BoxDecoration(
      // shape: BoxShape.circle,
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(
          50,
        ),
        bottomRight: Radius.circular(
          50,
        ),
      ),
    ),
    // ),
    // color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 110,
          height: 80,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  burgerImagePath,
                ),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  50,
                ),
                topRight: Radius.circular(
                  50,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            burgerTitle,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            burgerWeight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            'Rs\. $burgerPrice',
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              // fontSize: 20,
            ),
          ),
        ),
      ],
    ),
  );
}
