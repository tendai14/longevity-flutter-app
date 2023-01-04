import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:longevity/ui/contact_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  final Uri _url = Uri.parse(
      'https://docs.google.com/presentation/d/1tisoT2x47hfGxYFzyXwI7lZuvptHVulq/edit');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Center(
            child: Text(
              'Products',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
              height: 400.0,
              enableInfiniteScroll: false,
              autoPlay: false,
              initialPage: 0,
              enlargeCenterPage: false),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            child: const Text('Surgical Equipments'),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Image.asset('assets/images/medical_img.jpeg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 20),
                          child: Row(
                            children: const [
                              Text(
                                'Price:  ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('\$20us'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 20),
                          child: Row(
                            children: const [
                              Text(
                                'Availability:  ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'In stock',
                                style: TextStyle(
                                    backgroundColor: Colors.greenAccent),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 20),
                          child: Row(
                            children: const [
                              Text(
                                'Contact:  ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('+263789447661'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 20),
                          child: Row(
                            children: [
                              const Text(
                                'Link:  ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: _launchUrl,
                                child: const Text(
                                  'Click here for product documentation',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                    ));
              },
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Material(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(50),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: const ContactPage()));
              },
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                child: const Text(
                  'Book a Demo',
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
