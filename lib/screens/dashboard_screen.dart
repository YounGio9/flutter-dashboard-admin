import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isExpanded = false;
  var selectedIndex = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController brandController = TextEditingController();
  TextEditingController carNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        NavigationRail(
          extended: isExpanded,
          backgroundColor: Color.fromARGB(255, 17, 100, 168),
          unselectedIconTheme: IconThemeData(color: Colors.white, opacity: 1),
          selectedIconTheme: IconThemeData(color: Colors.black87),
          unselectedLabelTextStyle: TextStyle(color: Colors.white),
          selectedLabelTextStyle: TextStyle(color: Colors.black),
          destinations: [
            NavigationRailDestination(
                icon: Icon(Icons.home), label: Text("Home")),
            NavigationRailDestination(
                icon: Icon(Icons.add), label: Text("Ajouter")),
            NavigationRailDestination(
                icon: Icon(Icons.person), label: Text("Profile")),
            NavigationRailDestination(
                icon: Icon(Icons.settings), label: Text("Parametres")),
          ],
          selectedIndex: selectedIndex,
          onDestinationSelected: (value) => setState(() {
            selectedIndex = value;
          }),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(60.0),
            child: SingleChildScrollView(
                child: selectedIndex == 0
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isExpanded = !isExpanded;
                                    });
                                  },
                                  icon: Icon(Icons.menu)),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://randomuser.me/api/portraits/men/46.jpg"),
                                radius: 26.0,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                  child: Card(
                                      child: Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.article,
                                            size: 26.0,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Voitures disponibles",
                                            style: TextStyle(
                                                fontSize: 26.0,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Text("6 voitures",
                                          style: TextStyle(
                                              fontSize: 45,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ))),
                              Flexible(
                                  child: Card(
                                      child: Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.article,
                                            size: 26.0,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Voitures en location",
                                            style: TextStyle(
                                                fontSize: 26.0,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Text("6 voitures",
                                          style: TextStyle(
                                              fontSize: 45,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ))),
                              Flexible(
                                  child: Card(
                                      child: Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.article,
                                            size: 26.0,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Voitures en reservation",
                                            style: TextStyle(
                                                fontSize: 26.0,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Text("2 Voitures",
                                          style: TextStyle(
                                              fontSize: 45,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ))),
                              Flexible(
                                  child: Card(
                                      child: Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.monetization_on,
                                              size: 26.0),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Revenu",
                                            style: TextStyle(
                                                fontSize: 26.0,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Text("220 000 FCFA",
                                          style: TextStyle(
                                              fontSize: 45,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ))),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("6 voitures",
                                      style: TextStyle(
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "2 nouvelles voitures",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  )
                                ],
                              ),
                              Container(
                                width: 290,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Entrez le nom de la voiture",
                                      prefixIcon: Icon(Icons.search),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black26))),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_back),
                                label: Text((DateTime.now()).toString(),
                                    style: TextStyle(color: Colors.blue)),
                              ),
                              Row(
                                children: [
                                  DropdownButton(
                                      hint: Text("Trier par"),
                                      items: [
                                        DropdownMenuItem(
                                            value: "Date", child: Text("Date")),
                                        DropdownMenuItem(
                                            value: "Notes",
                                            child: Text("Notes")),
                                        DropdownMenuItem(
                                            value: "Vues", child: Text("Vues")),
                                      ],
                                      onChanged: (value) {}),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  DropdownButton(
                                      hint: Text("Trier par"),
                                      items: [
                                        DropdownMenuItem(
                                            value: "Date", child: Text("Date")),
                                        DropdownMenuItem(
                                            value: "Notes",
                                            child: Text("Notes")),
                                        DropdownMenuItem(
                                            value: "Vues", child: Text("Vues")),
                                      ],
                                      onChanged: (value) {})
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              DataTable(
                                  headingRowColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => Colors.grey.shade200),
                                  columns: [
                                    DataColumn(label: Text("id")),
                                    DataColumn(
                                        label: Text("Nom de la voiture")),
                                    DataColumn(label: Text("Date d'ajout")),
                                    DataColumn(
                                      label: Text("Vues"),
                                    )
                                  ],
                                  rows: [
                                    DataRow(cells: [
                                      DataCell(Text("195423")),
                                      DataCell(Text("Nissan Almera")),
                                      DataCell(Text("${DateTime.now()}")),
                                      DataCell(Text("12 vues")),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text("25868")),
                                      DataCell(Text("Mercedes ML350")),
                                      DataCell(Text("${DateTime.now()}")),
                                      DataCell(Text("48 vues")),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text("877165")),
                                      DataCell(Text("Toyota RAV-4")),
                                      DataCell(Text("${DateTime.now()}")),
                                      DataCell(Text("50 vues")),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text("18497")),
                                      DataCell(Text("BMW X6")),
                                      DataCell(Text("${DateTime.now()}")),
                                      DataCell(Text("28 vues")),
                                    ])
                                  ]),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text("1",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 17, 100, 168))))
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    : selectedIndex == 1
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                SizedBox(
                                  width: 850,
                                  child: Column(children: [
                                    TextField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Nom de la voiture',
                                        hintText: 'Ex: PRADO',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    TextField(
                                      controller: carNumberController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Numero matricule',
                                        hintText: '159687',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    TextField(
                                      controller: brandController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Marque',
                                        hintText: 'Ex: peugeot',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    ElevatedButton(
                                        child: Text('Ajouter'),
                                        onPressed: () => showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: Text("Alert Message"),
                                                  content: Text(nameController
                                                              .text.isEmpty ||
                                                          brandController
                                                              .text.isEmpty ||
                                                          carNumberController
                                                              .text.isEmpty
                                                      ? 'Veuillez bien remplir le formulaire'
                                                      : 'V??hicule ajout??'),
                                                  actions: <Widget>[
                                                    new ElevatedButton(
                                                      child: new Text('OK'),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                    )
                                                  ],
                                                );
                                              },
                                            )),
                                  ]),
                                )
                              ])
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                TextField(
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'User Name',
                                    hintText: 'Enter Your Name',
                                  ),
                                )
                              ])),
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}
