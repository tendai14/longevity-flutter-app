import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contact'),
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView(
          children: [
            // Note: Same code is applied for the TextFormField as well
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.blueGrey), //<-- SEE HERE
                    ),
                    hintText: 'Full Name'),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.blueGrey), //<-- SEE HERE
                    ),
                    hintText: 'Email'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                maxLines: 8,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.blueGrey), //<-- SEE HERE
                    ),
                    hintText: 'Message'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Material(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 200,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      'Send Message',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Typicons.social_instagram,
                  color: Colors.white,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(
                Typicons.social_facebook,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Typicons.social_twitter,
                color: Colors.white,
              ),
              label: '',
            ),
          ],
        ));
  }
}
