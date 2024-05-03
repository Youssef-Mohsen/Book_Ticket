import 'package:flutter/material.dart';

class Reserve extends StatelessWidget {
  Reserve({super.key});

  final List<IconData> icons = [
    Icons.home,
    Icons.location_on,
    Icons.calendar_month,
    Icons.person,
    Icons.child_care,
    Icons.monetization_on
  ];
  final List<String> captions = [
    'Flying From',
    'Flying To',
    'Returning',
    'Adults',
    'Children',
    'Price'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 700,
            child: ListView.separated(
              itemCount: icons.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: captions[index],
                      prefixIcon: Icon(
                        icons[index],
                        color: Colors.green,
                      )),
                ),
              ),
              separatorBuilder: (context, index) => Container(
                color: Colors.white,
                height: 30,
                width: 100,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.green,
            height: 45,
            minWidth: 100,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            onPressed: () {},
            child: const Text(
              'Book Now',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
