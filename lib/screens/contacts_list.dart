import 'package:bytebank/screens/contact_form.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Card(
                child: ListTile(
                  title: Text(
                    'Diogo',
                    style: TextStyle(fontSize: 24),
                  ),
                  subtitle: Text(
                    '1000',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(_createRoute())
              .then((newContact) => debugPrint(newContact.toString()));
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ContactForm(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(2.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
