import 'package:flutter/material.dart';
import 'package:table/RawData.dart';
import 'package:table/update.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final _unfocusNode = FocusNode();
  final List<ReportItem> report = [
    ReportItem(
      week: 'Sunday',
      name: 'Fry Rice with chicken',
      count: 4,
      date: '2024/4/7',
    ),
    ReportItem(
      week: 'Monday',
      name: 'Pizza',
      count: 10,
      date: '2024/4/8',
    ),
    ReportItem(
      week: 'Tuesday',
      name: 'Burger',
      count: 7,
      date: '2024/4/9',
    ),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: size.width / 5,
                    child: const Center(
                      child: Text(
                        'Date',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 3.5,
                    child: const Center(
                      child: Text(
                        'Food Name',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 5,
                    child: const Center(
                      child: Text(
                        'Accepted Count',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 3.5,
                    child: const Center(
                      child: Text(
                        'Action',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width,
              height: size.height / 1.27,
              child: ListView.builder(
                  itemCount: report.length,
                  itemBuilder: (BuildContext context, int index) {
                    // changeRequestData.add(contactList as Contacts);
                    var data = report[index];
                    return Column(
                      children: [
                        SizedBox(
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: size.width / 4.5,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          data.week,
                                          // 'Monday',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          data.date,
                                          // '2024-7-5',
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width / 3.5,
                                  child: Center(
                                    child: Text(
                                      data.name,
                                      // 'MOMO',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width / 5,
                                  child: Center(
                                    child: Text(
                                      data.count.toString(),
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width / 3.5,
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  width: 2.0,
                                                  color: Colors.green,
                                                ),
                                                color: Colors.lightGreen,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: IconButton(
                                              onPressed: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      const Color(0xFF161721),
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () => _unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(
                                                                  _unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: SizedBox(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.4,
                                                          child:
                                                              const UpdateWidget(),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              icon:
                                                  const Icon(Icons.edit_sharp),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  width: 2.0,
                                                  color: Colors.red,
                                                ),
                                                color: Colors.redAccent,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.delete_sharp),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
