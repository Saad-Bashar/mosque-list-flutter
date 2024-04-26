import 'package:flutter/material.dart';
import 'package:mosque_list_app/data/models/mosque.dart';

class MosqueListItem extends StatelessWidget {
  final Mosque mosque;

  const MosqueListItem({super.key, required this.mosque});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Card(
        child: ListTile(
          leading: Image.network(mosque.img,
              width: 100, height: 100, fit: BoxFit.cover),
          title: Text(mosque.name),
          subtitle: Text(mosque.addressFull),
          trailing: Text('Distance: ${mosque.distance} km'),
        ),
      ),
    );
  }
}
