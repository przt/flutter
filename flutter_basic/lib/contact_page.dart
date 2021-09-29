import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String number;

  const Contact(this.name, this.number);
}

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key, required this.contacts}) : super(key: key);

  final List<Contact> contacts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index].name),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(contact: contacts[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.contact}) : super(key: key);

  // Declare a field that holds the Todo.
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(contact.number),
      ),
    );
  }
}
