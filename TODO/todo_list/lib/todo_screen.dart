import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'todo_model_class.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  final List<ToDoModelClass> todoList = [];

  void showBottomSheet(bool isEdit, [ToDoModelClass? task]) {
    if (isEdit && task != null) {
      titleController.text = task.title;
      descriptionController.text = task.description;
      dateController.text = task.date;
    } else {
      clearControllers();
    }

    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              Text(
                isEdit ? "Edit Task" : "Add Task",
                style: GoogleFonts.quicksand(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: "Title",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: "Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: dateController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: "Date",
                  suffixIcon: const Icon(Icons.calendar_today),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2030),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      dateController.text =
                          DateFormat.yMMMd().format(pickedDate);
                    });
                  }
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                onPressed: () {
                  if (titleController.text.isEmpty ||
                      descriptionController.text.isEmpty ||
                      dateController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("All fields are required")),
                    );
                  } else {
                    if (isEdit && task != null) {
                      setState(() {
                        task.title = titleController.text;
                        task.description = descriptionController.text;
                        task.date = dateController.text;
                      });
                    } else {
                      setState(() {
                        todoList.add(ToDoModelClass(
                          title: titleController.text,
                          description: descriptionController.text,
                          date: dateController.text,
                        ));
                      });
                    }
                    Navigator.pop(context);
                    clearControllers();
                  }
                },
                child: Text(isEdit ? "Save" : "Add"),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  void clearControllers() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void deleteTask(ToDoModelClass task) {
    setState(() {
      todoList.remove(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do App"),
        backgroundColor: Colors.teal,
      ),
      body: todoList.isEmpty
          ? const Center(child: Text("No tasks added yet"))
          : ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                final task = todoList[index];
                return ListTile(
                  title: Text(task.title),
                  subtitle: Text("${task.description}\n${task.date}"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.teal),
                        onPressed: () => showBottomSheet(true, task),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => deleteTask(task),
                      ),
                    ],
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showBottomSheet(false),
        child: const Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
