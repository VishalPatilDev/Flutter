import 'package:path/path.dart' show join;
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;
List taskCard = [];
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "todoDataBase8.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''CREATE TABLE ToDoTable2(
        id INT,
        task TEXT ,
        explanation TEXT,
        date TEXT
        )''');
    },
  );

  taskCard = await getToDoTaskFromDatabase();
  for (int i = 0; i < taskCard.length; i++) {
    print(taskCard[i]);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoAppp(),
    );
  }
}

class Task {
  final String? image;
  final String task;
  final String explanation;
  final String date;
  final int id;

  const Task({
    this.image,
    required this.task,
    required this.explanation,
    required this.date,
    required this.id
  });

  Map<String, Object?> toDoTask() {
    return {
      'id' : id,
      'task': task,
      'explanation': explanation,
      'date': date,
    };
  }
}

Future<void> insertTask(Task taskobj) async {
  final localDB = await database;
  localDB.insert(
    'ToDoTable2',
    taskobj.toDoTask(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<void> deleteCardInDatabase(Task taskobj) async {
  final localDB = await database;
  await localDB.delete(
    'ToDoTable2',
    where: "id = ?",
    whereArgs: [taskobj.id],
  );
}


Future<void> updateCardInDatabase(Task taskobj) async {
  final localDB = await database;
  Map newCard = await taskobj.toDoTask();
  await localDB.update(
    'ToDoTable2',
    newCard,
    where: "id = ?",
    whereArgs: [taskobj.id],
  );
}

Future<List> getToDoTaskFromDatabase() async {
  final localDB = await database;
  List toDoList = await localDB.query("ToDoTable2");
  return toDoList;
}

class ToDoAppp extends StatefulWidget {
  const ToDoAppp({super.key});

  @override
  State<ToDoAppp> createState() => _ToDoApppState();
}

class _ToDoApppState extends State<ToDoAppp> {
  TextEditingController titleText = TextEditingController();
  TextEditingController descriptionText = TextEditingController();
  TextEditingController dateText = TextEditingController();

  static Color red = const Color.fromRGBO(255, 216, 216, 1);
  static Color blue = const Color.fromRGBO(232, 237, 250, 1);
  static Color yellow = const Color.fromRGBO(250, 249, 232, 1);
  static Color pink = const Color.fromRGBO(250, 232, 250, 1);

  List colorsList = [red, blue, yellow, pink];

  bool isEditPressed = false;
  //List<Task> taskCard = [ ];

  Future updateList() async {
    taskCard = await getToDoTaskFromDatabase();
    return 1;
  }

  int localId = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To-Do List",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 26,
            fontWeight: FontWeight.w700,
            fontFamily: "Quicksand",
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 168, 177),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bottomScreen(0);
        },
        child: const Text("+"),
      ),
      body: ListView.builder(
        itemCount: taskCard.length,
        itemBuilder: (context, index) {
          return Container(
            height: 113,
            width: double.infinity,
            decoration: BoxDecoration(
                color: colorsList[index % colorsList.length],
                borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.only(top: 25, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 23,
                        left: 10,
                      ),
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: const Center(
                        child: Icon(Icons.image),
                      ),
                    ),
                    Container(
                      width: 290,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            taskCard[index]["task"],
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 45,
                            child: Text(
                              taskCard[index]["explanation"],
                              overflow: TextOverflow.fade,
                              style: const TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        taskCard[index]["date"],
                        style: const TextStyle(
                          color: Color.fromRGBO(132, 132, 132, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        
                        onTap: () {
                          setState(() {
                            isEditPressed = true;
                            titleText.text = taskCard[index]["task"];
                            descriptionText.text =
                                taskCard[index]["explanation"];
                            dateText.text = taskCard[index]["date"];
                          });
                          int id = taskCard[index]["id"];
                          bottomScreen(id);
                        },
                        child: const Icon(
                          Icons.edit,
                          size: 13,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () async {
                          //deleteCardInDatabase(index);
                          String title = taskCard[index]["task"];
                          String description =taskCard[index]["explanation"];
                          String date = taskCard[index]["date"];
                          int id = taskCard[index]["id"];
                          await deleteTask(Task(task: title, explanation: description, date: date , id: id));
                          
                        },
                        child: const Icon(
                          Icons.delete,
                          size: 13,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  void submit(String title, String description, String date , int id) async {
    print("task submitted");
    await insertTask(Task(task: title, explanation: description, date: date , id: localId++)); //id: localId++
    await updateList();
    setState(() {});

    for (int i = 0; i < taskCard.length; i++) {
      print(taskCard);
    }
    titleText = TextEditingController();
    descriptionText = TextEditingController();
  }

  void edit(String title, String description, String date, int id) async {
    print("task editted 1 ");
    isEditPressed = false;
    print(id);
    await updateCardInDatabase( Task(task: title, explanation: description, date: date,id: id)); //id: index
    await updateList();
    setState(() {
    titleText.clear();
    descriptionText.clear();
    });
    print("task editted 2 ");
  }

  Future deleteTask(Task taskobj)async {
    await deleteCardInDatabase(taskobj);
    await updateList();
    setState(() {
    });
  }

  void bottomScreen(int id) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Create Task",
                // style: GoogleFonts.quicksand(
                //   textStyle: const TextStyle(
                //     fontSize: 22,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Title",
                    // style: GoogleFonts.quicksand(
                    //   fontSize: 15,
                    //   fontWeight: FontWeight.w400,
                    //   color: const Color.fromRGBO(0, 139, 148, 1),
                    // ),
                  ),
                  TextField(
                    controller: titleText,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Description",
                    // style: GoogleFonts.quicksand(
                    //   fontSize: 15,
                    //   fontWeight: FontWeight.w400,
                    //   color: const Color.fromRGBO(0, 139, 148, 1),
                    // ),
                  ),
                  TextField(
                    controller: descriptionText,
                    minLines: 3,
                    maxLines: null,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Date",
                    // style: GoogleFonts.quicksand(
                    //   fontSize: 15,
                    //   fontWeight: FontWeight.w400,
                    //   color: const Color.fromRGBO(0, 139, 148, 1),
                    // ),
                  ),
                  TextField(
                    controller: dateText,
                    readOnly: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.date_range_rounded),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onTap: () async {
                      DateTime? pickeddate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2025),
                      );
                      String formatedDate =
                          DateFormat.yMMMd().format(pickeddate!);
                      setState(() {
                        dateText.text = formatedDate;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (isEditPressed == false) {
                          // setState(() {
                          // insertTask(Task(task: titleText.text, explanation: descriptionText.text, date: dateText.text));
                          //   updateList();
                          // });
                          submit(titleText.text, descriptionText.text,dateText.text,id);
                        } else {
                          edit(titleText.text, descriptionText.text,dateText.text, id);
                        }
                        Navigator.of(context).pop();
                      },
                      style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          minimumSize: MaterialStatePropertyAll(Size(300, 50)),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(0, 139, 148, 1),
                          )),
                      child: const Text(
                        "Submit",
                        // style: GoogleFonts.inter(
                        //     color: Colors.white,
                        //     fontSize: 20,
                        //     fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}