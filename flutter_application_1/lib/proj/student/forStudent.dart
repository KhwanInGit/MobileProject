
import 'package:flutter/material.dart';
import 'package:flutter_application_1/proj/login.dart';
import 'package:intl/intl.dart';

class forStudent extends StatefulWidget {
  const forStudent({super.key});

  @override
  State<forStudent> createState() => _forStudentState();
}

class _forStudentState extends State<forStudent> {

  final String formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now()); // Format current date
  void reqAlert() async {
    String? req = await showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            title: const Text('Student request'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/ProjectMbile_image_File/TableLargeRoom.png',
                  width: 150,
                  height: 100,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Room Name: Meeting Room1'),
                    Text('Room Size: Large size(20 people)'),
                    Text('Date: xx/xx/xxxx'),
                    Text('Time slot: xx:xx-xx:xx'),
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
                      // close the dialog
                      Navigator.pop(context, 'Submit');
                    },
                    child: const Text('Submit'),
                  ),
                  TextButton(
                    onPressed: () {
                      // close the dialog
                      Navigator.pop(context, 'Cancel');
                    },
                    child: const Text('Cancel'),
                  ),
                ],
              )
            ],
          );
        }
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
                icon: Icon(Icons.schedule),
                text: 'Check Status',
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
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Room List',
                        style: TextStyle(
                            color: Color(0xFF5B8DBE),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
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
                              const Text('Meeting Room1'),
                              const Text('Size:Large(20 People)'),
                              const SizedBox(height: 5)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 3),
                                  child: Row(
                                    children: [
                                      const Text('08:00-10:00'),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 1),
                                        child: SizedBox(
                                          width: 108,
                                          height: 30,
                                          child: FilledButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.red[700],
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
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 3),
                                  child: Row(
                                    children: [
                                      const Text('10:00-12:00'),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 1),
                                        child: SizedBox(
                                          width: 108,
                                          height: 30,
                                          child: FilledButton(
                                            style: ElevatedButton.styleFrom(
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
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 3),
                                  child: Row(
                                    children: [
                                      const Text('13:00-15:00'),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 1),
                                        child: SizedBox(
                                          width: 108,
                                          height: 30,
                                          child: FilledButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.green[700],
                                            ),
                                            onPressed: reqAlert,
                                            child: const Text('Free'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 3),
                                  child: Row(
                                    children: [
                                      const Text('15:00-17.00'),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 1),
                                        child: SizedBox(
                                          width: 108,
                                          height: 30,
                                          child: FilledButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.green[700],
                                            ),
                                            onPressed: reqAlert,
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
                                const Text('Meeting Room2'),
                                const Text('Size:Small(5 People)'),
                                const SizedBox(height: 5)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('08:00-10:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: reqAlert,
                                              child: const Text('Free'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('10:00-12:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.grey[700],
                                              ),
                                              onPressed: () {},
                                              child: const Text('Reserved'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('13:00-15:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: reqAlert,
                                              child: const Text('Free'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('15:00-17.00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: reqAlert,
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
                                const Text('Meeting Room3'),
                                const Text('Size:Medium(10 People)'),
                                const SizedBox(height: 5)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('08:00-10:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: reqAlert,
                                              child: const Text('Free'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('10:00-12:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
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
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('13:00-15:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
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
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('15:00-17.00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: reqAlert,
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
                                const Text('Meeting Room4'),
                                const Text('Size:Medium(10 People)'),
                                const SizedBox(height: 5)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('08:00-10:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.grey[700],
                                              ),
                                              onPressed: () {},
                                              child: const Text('Reserved'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('10:00-12:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.grey[700],
                                              ),
                                              onPressed: () {},
                                              child: const Text('Reserved'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('13:00-15:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: reqAlert,
                                              child: const Text('Free'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('15:00-17.00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: reqAlert,
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
                                const Text('Meeting Room5'),
                                const Text('Size: Large(20 People)'),
                                const SizedBox(height: 5)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('08:00-10:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: reqAlert,
                                              child: const Text('Free'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('10:00-12:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: reqAlert,
                                              child: const Text('Free'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('13:00-15:00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: reqAlert,
                                              child: const Text('Free'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Row(
                                      children: [
                                        const Text('15:00-17.00'),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 1),
                                          child: SizedBox(
                                            width: 108,
                                            height: 30,
                                            child: FilledButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.green[700],
                                              ),
                                              onPressed: reqAlert,
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
            
            // Requests Tab
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/ProjectMbile_image_File/TableLargeRoom.png',
                    height: 184,
                    width: 257,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Room Name: Meeting Room1',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Room Size: Large size (20 People)',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Date: $formattedDate', // Display the dynamic date here
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Time Slot: 08:00 - 10:00',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  // Row for Status and Pending
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Status:',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 7),
                        decoration: BoxDecoration(
                          color: Colors.amber[700],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Pending',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ],
                  ),
                ],
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
                    padding: const EdgeInsets.only(right: 16.0), // Adjusts horizontal position
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
                              "Reyna",
                              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "username: reynayourfriend",
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              "Student",
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
                                Text('day/month/year , 00:00 AM'),
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
