import 'package:flutter/material.dart';
import 'package:taskapplication/StateManagement/register_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    Provider.of<RegistrationProvider>(context, listen: false).getDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RegistrationProvider>(
        builder: (context, registration, child) {
      return SafeArea(
        child: Scaffold(
          //appBar: AppBar(title: const Text("Details")),
          body: registration.loading == true
              ? const Center(child: CircularProgressIndicator())
              : ListView(
                  // height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,

                  children: [
                      Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height / 2.1,
                              color: Colors.black12,
                              child: ListView.builder(
                                  itemCount: registration
                                      .getDetailsData!.datas[0].eq.length,
                                  itemBuilder: (context, i) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Card(
                                        elevation: 3,
                                        //height: MediaQuery.of(context).size.height *0.02,
                                        child: SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.2,
                                          child: Column(
                                            children: [
                                              const SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  const Text(
                                                    "Event type",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration
                                                        .getDetailsData!
                                                        .datas[0]
                                                        .eq[i]
                                                        .eventType,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  const Text(
                                                    "Event Location",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration
                                                        .getDetailsData!
                                                        .datas[0]
                                                        .eq[i]
                                                        .eventLocation,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 30),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  const Text(
                                                    "Equip reference",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration
                                                        .getDetailsData!
                                                        .datas[0]
                                                        .eq[i]
                                                        .equipReference,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  const Text(
                                                    "Equip code",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration
                                                        .getDetailsData!
                                                        .datas[0]
                                                        .eq[i]
                                                        .isoEquipCode,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 30),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  const Text(
                                                    "Description",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration
                                                        .getDetailsData!
                                                        .datas[0]
                                                        .eq[i]
                                                        .locationName,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  const Text(
                                                    "Loco code",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration.getDetailsData!
                                                        .datas[0].eq[i].locode,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  })),
                          const SizedBox(height: 5),
                          Container(
                              height: MediaQuery.of(context).size.height / 2,
                              color: Colors.black26,
                              child: ListView.builder(
                                  itemCount: registration.getDetailsData!
                                      .datas[0].transport.length,
                                  itemBuilder: (context, i) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Card(
                                        elevation: 3,
                                        //height: MediaQuery.of(context).size.height *0.02,
                                        child: SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.2,
                                          child: Column(
                                            children: [
                                              const SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  const Text(
                                                    "Vessel name",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration
                                                        .getDetailsData!
                                                        .datas[0]
                                                        .transport[i]
                                                        .vesselName,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  const Text(
                                                    "Event Location",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration
                                                        .getDetailsData!
                                                        .datas[0]
                                                        .eq[i]
                                                        .eventLocation,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 30),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  const Text(
                                                    "Event type",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration
                                                        .getDetailsData!
                                                        .datas[0]
                                                        .eq[i]
                                                        .eventType,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  const Text(
                                                    "Equip location",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration
                                                        .getDetailsData!
                                                        .datas[0]
                                                        .eq[i]
                                                        .eventLocation,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 30),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  const Text(
                                                    "Time",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration
                                                        .getDetailsData!
                                                        .datas[0]
                                                        .eq[i]
                                                        .timezone,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  const Text(
                                                    "Country",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    registration.getDetailsData!
                                                        .datas[0].eq[i].country,
                                                    style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                              //const  SizedBox(height: 20)
                              )
                        ],
                      )
                    ]),
        ),
      );
    });
  }
}
