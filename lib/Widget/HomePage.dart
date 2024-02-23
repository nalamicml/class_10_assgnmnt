import 'package:flutter/material.dart';
import 'package:assgnmnt_10_3/Widget/TextBox.dart';

class ContactList extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'Alma Christensen', email: 'alma.christensen@example.com'),
    Contact(name: 'Malo Gonzalez', email: 'malo.gonzalez@example.com'),
    Contact(name: 'Miguel Owens', email: 'miguel.owens@example.com'),
    Contact(name: 'Lilou Dumont', email: 'lilou.dumont@example.com'),
    Contact(name: 'Ashley Stewart', email: 'ashley.stewart@example.com'),
    Contact(name: 'Roman Zhang', email: 'roman.zhang@example.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          //elevation: 5,
          title: Text(
            'Contacts',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextBox()),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(
                    contacts[index].name[0], // Display first letter of name
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.blue, // You can customize the color
                ),
                title: Text(contacts[index].name),
                subtitle: Text(contacts[index].email),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Contact {
  final String name;
  final String email;

  Contact({required this.name, required this.email});
}
