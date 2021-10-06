import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String title, description;

  DetailScreen({Key? key, required this.title, required this.description});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _titleText = TextEditingController();
  final TextEditingController _descriptionText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContactApp'),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: _titleText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: widget.title,
                          contentPadding: EdgeInsets.all(20.0),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Name !';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _descriptionText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: widget.description,
                          contentPadding: EdgeInsets.all(20.0),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Phone Number !';
                          }
                          return null;
                        },
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
