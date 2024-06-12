import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  bool isSlected = false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Button"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Elevetd Button",
                  style: (TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Eleveteed Button"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Icon Button",
                  style: (TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.access_time,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Floating Actions Button",
                  style: (TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 10,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.account_box_sharp),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Segmented Button",
                  style: (TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 10,
                ),
                SegmentedButton(
                  multiSelectionEnabled: true,
                  segments: const [
                    ButtonSegment(
                      value: "Day",
                      icon: Icon(
                        Icons.check,
                        size: 15,
                      ),
                    ),
                    ButtonSegment(
                      value: "Week",
                      icon: Icon(
                        Icons.calendar_view_week,
                        size: 15,
                      ),
                    ),
                    ButtonSegment(
                      value: "Month",
                      icon: Icon(
                        Icons.calendar_month,
                        size: 15,
                      ),
                    ),
                    ButtonSegment(
                      value: "Year",
                      icon: Icon(
                        Icons.calendar_month,
                        size: 15,
                      ),
                    ),
                  ],
                  selected: {
                    "Day",
                    "Week",
                    "Month",
                    "Year",
                  },
                  onSelectionChanged: (Set<String> newselection) {
                    setState() {}
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "PopUp Menu Button",
                  style: (TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  child: PopupMenuButton(itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        child: Text('Item 1'),
                      ),
                      const PopupMenuItem(
                        child: Text('Item 2'),
                      ),
                      const PopupMenuItem(
                        child: Text('Item 3'),
                      ),
                    ];
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Close Button",
                  style: (TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  child: CloseButton(
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Text Button",
                  style: (TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 35,
                  width: 105,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Text Button"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Choice Chip",
                  style: (TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChoiceChip(
                      label: Text("Choice Chip"),
                      selected: isSlected,
                      selectedColor: Colors.purpleAccent,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ));
}
