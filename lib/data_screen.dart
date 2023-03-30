import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datascreen extends StatefulWidget {
  const Datascreen({Key? key}) : super(key: key);

  @override
  State<Datascreen> createState() => _DatascreenState();
}

class _DatascreenState extends State<Datascreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  List<Map<String, String>> _dataList = [];

  TextEditingController dateinput = TextEditingController();
  String _selectedGender = '';
  bool isChecked = false;

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a name';
                        }
                        return null;
                      },
                      controller: _nameController,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.orange),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.orange,
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                          labelStyle: TextStyle(color: Colors.orange),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.orange))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a name';
                        }
                        return null;
                      },
                      controller: _emailController,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.orange),
                          ),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.orange,
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.orange),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.orange))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a name';
                        }
                        return null;
                      },
                      controller: _phoneController,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.orange),
                          ),
                          prefixIcon: Icon(
                            Icons.phone_android_sharp,
                            color: Colors.orange,
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(color: Colors.orange),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.orange))),
                    ),
                  ),
                  Container(
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select the database';
                        }
                        return null;
                      },
                      controller: dateinput,
                      //editing controller of this TextField
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.orange),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.orange)),
                          prefixIcon: Icon(
                            Icons.calendar_today,
                            color: Colors.orange,
                          ),
                          // icon: Icon(Icons.calendar_today,color: Colors.purple,), //icon of text field
                          labelText: "Date Of Birth",
                          labelStyle: TextStyle(
                              color: Colors.orange) //label text of field
                          ),
                      readOnly: true,
                      //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1990),
                            //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            dateinput.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                  ))),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Select gender:',
                            style: TextStyle(fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Radio<String>(
                                  value: 'male',
                                  groupValue: _selectedGender,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedGender = value!;
                                    });
                                  },
                                ),
                                const Text('Male'),
                                Radio<String>(
                                    activeColor: Colors.orange,
                                    value: 'Female',
                                    groupValue: _selectedGender,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedGender = value!;
                                      });
                                    }),
                                const Text('Female'),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Row(
                    children: [
                      Checkbox(
                          side: const BorderSide(color: Colors.orange),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      const Text(
                        'I have read and agree to the terms of service',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          _dataList.add({
                            'name': _nameController.text,
                            'email': _emailController.text,
                            'phone': _phoneController.text,
                            'selectedGender': _selectedGender.toString(),
                            'dateinput': dateinput.text,
                          });

                          _nameController.clear();
                          _emailController.clear();
                          _phoneController.clear();
                          // _selectedGender.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SecondScreen(dataList: _dataList),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 20),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final List<Map<String, String>> dataList;

  SecondScreen({required this.dataList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return DataTable(
            columnSpacing: 15,
            // ignore: prefer_const_literals_to_create_immutables
            columns: [
              const DataColumn(
                  label: Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              const DataColumn(
                  label: Text(
                'email',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              const DataColumn(
                  label: Text('phone',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              const DataColumn(
                  label: Text('Gender',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              const DataColumn(
                  label: Text('D.O.B',
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text(dataList[index]['name']!)),
                DataCell(Text(dataList[index]['email']!)),
                DataCell(Text(dataList[index]['phone']!)),
                DataCell(Text(dataList[index]['selectedGender']!)),
                DataCell(Text(dataList[index]['dateinput']!)),
              ]),
            ],
          );
        },
      ),
    );
  }
}
