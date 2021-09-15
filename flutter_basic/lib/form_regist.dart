import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum Gender {
  male,
  female,
}

class FormRegistration extends StatefulWidget {
  const FormRegistration({Key? key}) : super(key: key);

  @override
  _FormRegistrationState createState() => _FormRegistrationState();
}

class _FormRegistrationState extends State<FormRegistration> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  TextEditingController _controllerConfirmPassword = TextEditingController();
  TextEditingController _controllerDate = TextEditingController();

  Gender? _gender;

  bool _checkBoxAgreement = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          TextField(
            controller: _controllerEmail,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: 'Email',
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 5.0),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: _controllerName,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_circle_rounded),
              labelText: 'Name',
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 5.0),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: _controllerPassword,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              suffixIcon: Icon(Icons.remove_red_eye),
              labelText: 'Password',
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 5.0),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: _controllerConfirmPassword,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: 'Confirm Password',
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 5.0),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          RadioListTile(
            title: Text('Male'),
            value: Gender.male,
            groupValue: _gender,
            onChanged: (Gender? value) {
              _gender = value;
              setState(() {});
            },
          ),
          RadioListTile(
            title: Text('Female'),
            value: Gender.female,
            groupValue: _gender,
            onChanged: (Gender? value) {
              _gender = value;
              setState(() {});
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: _controllerDate,
            readOnly: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.calendar_today),
              labelText: 'Date Of Birth',
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 5.0),
              ),
            ),
            onTap: () async {
              DateTime? dateA = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2030),
              );
              if (dateA == null) return;
              String text =
                  '${dateA.year}-${format(dateA.month)}-${format(dateA.day)}';
              _controllerDate.text = text;
            },
          ),
          Row(
            children: [
              Column(
                children: [
                  Checkbox(
                      value: _checkBoxAgreement,
                      onChanged: (bool? value) {
                        _checkBoxAgreement = value ?? false;
                        setState(() {});
                      }),
                ],
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                    width: 220,
                    height: 50,
                    child: Text(
                      'Creating an account means you are okay with our Terms of Service and Our Privacy Policy',
                      textAlign: TextAlign.left,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(40.0)),
                  SizedBox(
                    width: 340,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      Text(_controllerEmail.text),
                                      Text(_controllerName.text),
                                      Text(_controllerPassword.text),
                                      Text(_controllerConfirmPassword.text),
                                      Text(_controllerDate.text),
                                      Text(_gender.toString()),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Text('Sign Up'),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

String format(int number) {
  if (number < 10) return '0$number';
  return '$number';
}
