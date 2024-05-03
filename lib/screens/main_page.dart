import 'package:book_ticket/screens/profile.dart';
import 'package:book_ticket/screens/reservation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

int selected = 0;
List<String> costs = ['300', '250', '350', '500', '200'];
List<String> countries = ['Kiwi', 'Doha', 'Saudi', 'Qatar', 'Jordan'];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 500,
            decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 40, 25, 0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.green,
                          child: Text(
                            'Y',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Welcome back Youssef',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Row(
                    children: [
                      Text(
                        'CAI',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Spacer(),
                      Text(
                        'Mon 5 FEB',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Search here",
                        prefixIcon: Icon(
                          Icons.home,
                          color: Colors.green,
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Your Last Travel',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 400,
              left: 50,
              child: Container(
                width: 300,
                height: 270,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    width: 300,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    // Adjust the width as needed
                    child: Column(
                      children: [
                        Text(
                          '${costs[index]}\$',
                          style: const TextStyle(
                              color: Colors.green, fontSize: 22),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Text('Mon 5 FEB',
                                  style: TextStyle(color: Colors.white)),
                              Spacer(),
                              Text('Mon 5 FEB',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              const Text('CAI',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 22)),
                              const Spacer(),
                              Text(countries[index],
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 22)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Lottie.asset('assets/PlaneAnim.json',
                            height: 100, width: 280),
                      ],
                    ),
                  ),
                  itemCount: costs.length,
                  separatorBuilder: (context, index) => Container(
                    color: Colors.white,
                    width: 20,
                  ),
                ),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Reserve()));
          });
        },
        child: const Icon(Icons.airplane_ticket_outlined),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        elevation: 50,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
            if (selected == 1) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const ProfileScreen()));
              selected = 0;
            } else {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const MainPage()));
            }
          });
        },
        items: const [
          BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
