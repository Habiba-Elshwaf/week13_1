import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double counter = 1;
  double rating = 4.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                        color: Colors.white,
                      )),
                  const Spacer(
                    flex: 1,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        size: 20,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        size: 20,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 310,
                  width: 256,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                  ),
                  child: const Image(
                    image: AssetImage('lib/images/week133.jpg'),
                    width: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: const Color(0xff2E2E2E)),
                          onPressed: () {},
                          child: const Text(
                            'S',
                            style: TextStyle(
                              fontFamily: 'Audiowide',
                            ),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: const Color(0xff2E2E2E)),
                          onPressed: () {},
                          child: const Text(
                            'M',
                            style: TextStyle(
                              fontFamily: 'Audiowide',
                            ),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: const Color(0xffE6323E)),
                          onPressed: () {},
                          child: const Text(
                            'L',
                            style: TextStyle(
                              fontFamily: 'Audiowide',
                            ),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: const Color(0xff2E2E2E)),
                          onPressed: () {},
                          child: const Text(
                            'XL',
                            style: TextStyle(
                              fontFamily: 'Audiowide',
                            ),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: const Color(0xff2E2E2E)),
                          onPressed: () {},
                          child: const Text(
                            '2XL',
                            style: TextStyle(
                              fontFamily: 'Audiowide',
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Belgium EURO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Audiowide',
                      )),
                  const Text('20/21 Away By Adidas',
                      style: TextStyle(
                          fontFamily: 'Audiowide', color: Color(0xffA2A2A2))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Rate(
                    iconSize: 22,
                    color: const Color(0xffE6323E),
                    allowHalf: true,
                    allowClear: true,
                    initialValue: 4,
                    readOnly: false,
                    onChange:  (newRating) {
                      setState(() {
                        rating = newRating;
                      });
                    },
                  ),
                   Text('$rating', style: TextStyle(color: Colors.white)),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff2E2E2E),
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove, color: Colors.white),
                          color: const Color(0xffE6323E),
                          onPressed: () {
                            setState(
                              () {
                                counter--;
                              },
                            );
                          },
                        ),
                        Text(
                          '$counter',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add, color: Colors.white),
                          color: const Color(0xffE6323E),
                          onPressed: () {
                            setState(
                              () {
                                counter++;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Details',
                            style: TextStyle(
                                fontFamily: 'Audiowide', color: Colors.white)),
                        const Text('Material: Polyester',
                            style: TextStyle(
                                fontFamily: 'Audiowide', color: Colors.white)),
                        const Text('Shipping: In 5 to 6 Days',
                            style: TextStyle(
                                fontFamily: 'Audiowide', color: Colors.white)),
                        const Text('Returns: Within 20 Days',
                            style: TextStyle(
                                fontFamily: 'Audiowide', color: Colors.white)),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize:const Size(70, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          backgroundColor: const Color(0xffE6323E)),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                            const Text(r'$89'),
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
