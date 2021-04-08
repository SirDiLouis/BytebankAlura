import 'package:bytebank/components/route_animation.dart';
import 'package:bytebank/screens/contacts_list.dart';
import 'package:bytebank/screens/transactions_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset('images/bytebank_logo.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _FeatureItem(
                  name: 'Transfer',
                  icon: Icons.monetization_on,
                  onClick: () {
                    Navigator.of(context).push(
                      createRoute(
                          toClass: ContactsList(),
                          vertical: 1.0,
                          horizontal: 0.0),
                    );
                    print('Transfer was click');
                  },
                ),
                _FeatureItem(
                  name: 'Transfer feed',
                  icon: Icons.description,
                  onClick: () => Navigator.of(context).push(
                    createRoute(
                        toClass: TransactionsList(),
                        vertical: 1.0,
                        horizontal: 0.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onClick;

  const _FeatureItem(
      {@required this.name, @required this.icon, @required this.onClick})
      : assert(icon != null),
        assert(onClick != null);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: Theme.of(context).primaryColor,
      child: InkWell(
        onTap: () => onClick(),
        child: Container(
          height: 100,
          width: 150,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 32,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
