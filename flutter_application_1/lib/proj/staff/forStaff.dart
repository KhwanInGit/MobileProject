
import 'package:flutter/material.dart';
import 'package:flutter_application_1/proj/login.dart';
import 'package:intl/intl.dart';

class forStaff extends StatefulWidget {
  const forStaff({super.key});

  @override
  State<forStaff> createState() => _forStaffState();
}

class _forStaffState extends State<forStaff> {
  final String formattedDate =
      DateFormat('MM/dd/yyyy').format(DateTime.now()); // Format current date
  
  bool _sw = false;


  void addRoom() async {
    String? req = await showDialog(
      context: context,
      builder: (BuildContext context) {
        // Declare the dropdown options
        List<String> roomTypes = ['Large size', 'Medium size', 'Small size'];
        String? selectedRoomType;

        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Icon(Icons.image, size: 50,),
                            SizedBox(width: 8),
                            Text('Insert Image'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter room name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Dropdown
                      DropdownButton<String>(
                        value: selectedRoomType,
                        hint: const Text('Select Room Size'),
                        isExpanded: true,
                        items: roomTypes.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedRoomType = newValue;
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'Add');
                      },
                      child: const Text('Add'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'Cancel');
                      },
                      child: const Text('Cancel'),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }

  // editaleart
  void editalert() async {
    List<String> roomTypes = ['Large size', 'Medium size', 'Small size'];
    String? selectedRoomType; // Add state for selected room type

    String? edit = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Edit room'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/ProjectMbile_image_File/TableLargeRoom.png',
                    width: 150,
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Edit name', 
                        ),
                      ),
                      const SizedBox(height: 10),
                      DropdownButton<String>(
                        value: selectedRoomType,
                        hint: const Text('Select Room Size'),
                        isExpanded: true,
                        items: roomTypes.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedRoomType = newValue;
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Close the dialog with a response
                        Navigator.pop(context, 'Save');
                      },
                      child: const Text('Save'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Close the dialog with a response
                        Navigator.pop(context, 'Cancel');
                      },
                      child: const Text('Cancel'),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }

  // when click the text btn
  void disabledalert() async {
    String? dis = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Row(
                children: [
                  const Text('Student request'),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: editalert,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/ProjectMbile_image_File/TableMediumRoom.png',
                    width: 150,
                    height: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Room Name: Meeting Room1'),
                      const Text('Room Size: Large size(20 people)'),
                      const Text('Date: xx/xx/xxxx'),
                      Column(
                        children: [
                          Switch(
                            value: _sw,
                            onChanged: (value) {
                              setState(() {
                                _sw = value;
                              });
                            },
                          ),
                          Center(child: Text('Disable : $_sw')),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              actions: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // close the dialog with a response
                        Navigator.pop(context, 'Submit');
                      },
                      child: const Text('Submit'),
                    ),
                    TextButton(
                      onPressed: () {
                        // close the dialog with a response
                        Navigator.pop(context, 'Cancel');
                      },
                      child: const Text('Cancel'),
                    ),
                  ],
                )
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Meeting Room',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 142, 172, 205),
          toolbarHeight: 51,
        ),
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 142, 172, 205),
          child: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black54,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.dashboard),
                text: 'Dashboard',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Home Tab
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Room List',
                                  style: TextStyle(
                                      color: Color(0xFF5B8DBE),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              IconButton(
                                onPressed: addRoom,
                                icon: Icon(
                                  Icons.add_box_rounded,
                                  color: Colors.green[700],
                                  size: 35,
                                ),
                              ),
                            ],
                          ),

                          // room 1
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                      ),
                                      child: Image.asset(
                                        'assets/images/ProjectMbile_image_File/TableLargeRoom.png',
                                        width: 150,
                                        height: 100,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: GestureDetector(
                                        onTap: disabledalert,
                                        child: const Text(
                                          "Meeting Room1",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Text('Size:Large(20 People)'),
                                    const SizedBox(height: 5)
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, left: 3),
                                        child: Row(
                                          children: [
                                            const Text('08:00-10:00'),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 1),
                                              child: SizedBox(
                                                width: 108,
                                                height: 30,
                                                child: FilledButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.red[700],
                                                  ),
                                                  onPressed: () {},
                                                  child: const Text('Disable'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, left: 3),
                                        child: Row(
                                          children: [
                                            const Text('10:00-12:00'),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 1),
                                              child: SizedBox(
                                                width: 108,
                                                height: 30,
                                                child: FilledButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.amber[700],
                                                  ),
                                                  onPressed: () {},
                                                  child: const Text('Pending'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, left: 3),
                                        child: Row(
                                          children: [
                                            const Text('13:00-15:00'),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 1),
                                              child: SizedBox(
                                                width: 108,
                                                height: 30,
                                                child: FilledButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.green[700],
                                                  ),
                                                  onPressed: () {},
                                                  child: const Text('Free'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, left: 3),
                                        child: Row(
                                          children: [
                                            const Text('15:00-17.00'),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 1),
                                              child: SizedBox(
                                                width: 108,
                                                height: 30,
                                                child: FilledButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.green[700],
                                                  ),
                                                  onPressed: () {},
                                                  child: const Text('Free'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // room2
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                        ),
                                        child: Image.asset(
                                          'assets/images/ProjectMbile_image_File/TableSmallRoom.png',
                                          width: 150,
                                          height: 100,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: disabledalert,
                                          child: const Text(
                                            "Meeting Room2",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text('Size:Small(5 People)'),
                                      const SizedBox(height: 5)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('08:00-10:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.green[700],
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Free'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('10:00-12:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.grey[700],
                                                    ),
                                                    onPressed: () {},
                                                    child:
                                                        const Text('Reserved'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('13:00-15:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.green[700],
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Free'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('15:00-17.00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.green[700],
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Free'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // room3
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                        ),
                                        child: Image.asset(
                                          'assets/images/ProjectMbile_image_File/TableMediumRoom.png',
                                          width: 150,
                                          height: 100,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: disabledalert,
                                          child: const Text(
                                            "Meeting Room3",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text('Size:Medium(10 People)'),
                                      const SizedBox(height: 5)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('08:00-10:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.green[700],
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Free'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('10:00-12:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.amber[700],
                                                    ),
                                                    onPressed: () {},
                                                    child:
                                                        const Text('Pending'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('13:00-15:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.amber[700],
                                                    ),
                                                    onPressed: () {},
                                                    child:
                                                        const Text('Pending'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('15:00-17.00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.green[700],
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Free'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // room4
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                        ),
                                        child: Image.asset(
                                          'assets/images/ProjectMbile_image_File/TableMediumRoom.png',
                                          width: 150,
                                          height: 100,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: disabledalert,
                                          child: const Text(
                                            "Meeting Room4",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text('Size:Medium(10 People)'),
                                      const SizedBox(height: 5)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('08:00-10:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.grey[700],
                                                    ),
                                                    onPressed: () {},
                                                    child:
                                                        const Text('Reserved'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('10:00-12:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.grey[700],
                                                    ),
                                                    onPressed: () {},
                                                    child:
                                                        const Text('Reserved'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('13:00-15:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.green[700],
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Free'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('15:00-17.00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.green[700],
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Free'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // room 5
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                        ),
                                        child: Image.asset(
                                          'assets/images/ProjectMbile_image_File/TableLargeRoom.png',
                                          width: 150,
                                          height: 100,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: disabledalert,
                                          child: const Text(
                                            "Meeting Room5",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text('Size: Large(20 People)'),
                                      const SizedBox(height: 5)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('08:00-10:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.green[700],
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Free'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('10:00-12:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.green[700],
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Free'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('13:00-15:00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.green[700],
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Free'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 3),
                                          child: Row(
                                            children: [
                                              const Text('15:00-17.00'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1),
                                                child: SizedBox(
                                                  width: 108,
                                                  height: 30,
                                                  child: FilledButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.green[700],
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Free'),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // dashboard Tab
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 16, 50, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //the word "Dashboard"
                    Column(
                      children: [
                        const Text(
                          'Dashboard',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5B8DBE),
                          ),
                        ),

                        //slot box row1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //free slot box
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const Text(
                                    'Free slot',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.green[700],
                                        borderRadius: BorderRadius.circular(8)),
                                    child: const Center(
                                      child: Text(
                                        '13',
                                        style: TextStyle(
                                          fontSize: 27,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //pending slot box
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Column(
                                children: [
                                  const Text(
                                    'Pending slot',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.amber[700],
                                        borderRadius: BorderRadius.circular(8)),
                                    child: const Center(
                                      child: Text(
                                        '3',
                                        style: TextStyle(
                                          fontSize: 27,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        //slot box row2
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //reserved slot box
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Column(
                                children: [
                                  const Text(
                                    'Reserved slot',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[700],
                                        borderRadius: BorderRadius.circular(8)),
                                    child: const Center(
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 27,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //disable slot box
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const Text(
                                    'Disable slot',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.red[700],
                                        borderRadius: BorderRadius.circular(8)),
                                    child: const Center(
                                      child: Text(
                                        '3',
                                        style: TextStyle(
                                          fontSize: 27,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // total slot
                    const Padding(
                      padding: EdgeInsets.fromLTRB(70, 20, 70, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total room:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total slot:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '20',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Free slot:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '13',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Pending slot:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Disable slot:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Reserved slot:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Profile Tab
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),

                  // Log Out Button
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16.0), // Adjusts horizontal position
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () async {
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                ));
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          label: const Text(
                            'Log Out',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[700],
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Name
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Raze",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "username: razeinsite",
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              "Staff",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // Line under name and role
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Divider(
                      color: Colors.black54,
                      thickness: 1.0,
                    ),
                  ),
                  const SizedBox(height: 10),

                  //the word "History"
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'History',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Card History
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Date/Time:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('day/month/year, 00:00 AM'),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Room:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Meeting Room1'),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Status:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Approved',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Student:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Reyna'),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Approver:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('KrapaoKai'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Card History2
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Date/Time:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('day/month/year, 00:00 AM'),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Room:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Meeting Room3'),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Status:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Disapproved',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Student:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Lightning Mcqueen'),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Approver:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Krapao'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
