
import 'package:flutter/material.dart';
import 'package:flutter_application_1/proj/login.dart';
import 'package:intl/intl.dart';

class forApprover extends StatefulWidget {
  const forApprover({super.key});

  @override
  State<forApprover> createState() => _forApproverState();
}

class _forApproverState extends State<forApprover> {
  late final String formattedDate; // Use late final

  @override
  void initState() {
    super.initState();
    formattedDate =
        DateFormat('dd/MM/yyyy').format(DateTime.now()); // Initialize here
  }

  // Sample data for demonstration
  final List<Map<String, String>> roomRequests = [
    {
      'image': 'assets/images/ProjectMbile_image_File/TableLargeRoom.png',
      'roomName': 'Meeting Room1',
      'roomSize': 'Large size',
      'timeSlot': '12:00 - 14:00',
      'status': 'Pending',
      'student': 'Reyna'
    },
    {
      'image': 'assets/images/ProjectMbile_image_File/TableMediumRoom.png',
      'roomName': 'Meeting Room2',
      'roomSize': 'Medium size',
      'timeSlot': '12:00 - 14:00',
      'status': 'Pending',
      'student': 'Reyna'
    },
    {
      'image': 'assets/images/ProjectMbile_image_File/TableSmallRoom.png',
      'roomName': 'Meeting Room3',
      'roomSize': 'Small size',
      'timeSlot': '12:00 - 14:00',
      'status': 'Pending',
      'student': 'Lightning Mcqueen'
    },
    {
      'image': 'assets/images/ProjectMbile_image_File/TableLargeRoom.png',
      'roomName': 'Meeting Room4',
      'roomSize': 'Large size',
      'timeSlot': '12:00 - 14:00',
      'status': 'Pending',
      'student': 'Lightning Mcqueen'
    },
    {
      'image': 'assets/images/ProjectMbile_image_File/TableLargeRoom.png',
      'roomName': 'Meeting Room5',
      'roomSize': 'Large size',
      'timeSlot': '12:00 - 14:00',
      'status': 'Pending',
      'student': 'Lightning Mcqueen'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Meeting Room',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
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
                text: 'Status',
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
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ],
                          ),
                          // room 1
                          Container(
                            // color: Colors.grey,
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
            // Requests Tab
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Approve or Disapprove',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 142, 172, 205),
                      ),
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: roomRequests.length,
                    itemBuilder: (context, index) {
                      final request = roomRequests[index];
                      return GestureDetector(
                        onTap: () => _showPopupCard(context, request, index),
                        child: Card(
                          shadowColor: Colors.grey,
                          color: const Color.fromARGB(217, 217, 217, 217),
                          margin: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: [
                              // Room Image
                              Container(
                                width: 100,
                                height: 100,
                                child: Image.asset(
                                  request['image']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // Room Details
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Room Name: ${request['roomName']}',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Room Size: ${request['roomSize']}',
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Text(
                                            request['student']!,
                                            style:
                                                const TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 18, vertical: 3),
                                            decoration: BoxDecoration(
                                              color: Colors.amber[700],
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: const Text(
                                              'Pending',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 6),
                                          Text(
                                            request['timeSlot']!,
                                            style:
                                                const TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
                              "Yasuo",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "username: inwzayasuo007",
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              "Approver",
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

  void _showPopupCard(
      BuildContext context, Map<String, String> request, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Display room details here
              Container(
                width: 257,
                height: 184,
                child: Image.asset(
                  request['image']!,
                  fit: BoxFit.cover,
                ),
              ),
              Text('Room Name: ${request['roomName']}'),
              Text('Room Size: ${request['roomSize']}'),
              Text(
                'Date: $formattedDate', // Display the dynamic date here
                style: const TextStyle(fontSize: 14),
              ),
              Text('Time Slot: ${request['timeSlot']}'),
              Text('Student: ${request['student']}'),
            ],
          ),
          actions: [
            // Centered buttons for Approve and Disapprove actions
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle Approve action here
                    setState(() {
                      roomRequests
                          .removeAt(index); // Remove the request from the list
                    });
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        Colors.green, // Green background for Approve
                  ),
                  child: const Text(
                    'Approve',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ), // Add some spacing between buttons
                TextButton(
                  onPressed: () {
                    // Handle Disapprove action here
                    setState(() {
                      roomRequests
                          .removeAt(index); // Remove the request from the list
                    });
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        Colors.red, // Red background for Disapprove
                  ),
                  child: const Text(
                    'Disapprove',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

Widget _buildSlotBox(String title, String value, Color? color) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(title),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// Helper method to create a stat row.
Widget _buildStatRow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(label),
        Text(value),
      ],
    ),
  );
}
