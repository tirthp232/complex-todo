import 'package:complex_todos/screens/todo-list/widgets/custom_task.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatefulWidget {
  CustomDialog({super.key, this.title});

  String? title;

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  var value1 = false;
  var value2 = false;
  String? days;
  @override
  Widget build(BuildContext context) {
    return widget.title == "tag"
        ? AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: value1,
                  onChanged: (v) {
                    setState(() {
                      value1 = v!;
                    });
                  },
                  title: Text("Home"),
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: value2,
                  onChanged: (v) {
                    setState(() {
                      value2 = v!;
                    });
                  },
                  title: Text("Home"),
                ),
              ],
            ),
          )
        : AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile(
                  value: "do not repeat",
                  groupValue: days,
                  onChanged: (v) {
                    setState(() {
                      days = v.toString();
                    });
                  },
                  title: Text("do not repeat"),
                ),
                RadioListTile(
                  value: "Every day",
                  groupValue: days,
                  onChanged: (v) {
                    setState(() {
                      days = v.toString();
                    });
                  },
                  title: Text("Every day"),
                ),
                RadioListTile(
                  value: "Every week",
                  groupValue: days,
                  onChanged: (v) {
                    setState(() {
                      days = v.toString();
                    });
                  },
                  title: Text("Every week"),
                ),
                RadioListTile(
                  value: "Every month",
                  groupValue: days,
                  onChanged: (v) {
                    setState(() {
                      days = v.toString();
                    });
                  },
                  title: Text("Every month"),
                ),
                RadioListTile(
                  value: "custom",
                  groupValue: days,
                  onChanged: (v) {
                    setState(() {
                      days = v.toString();
                    });
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomTask(),
                      ),
                    );
                  },
                  title: Text("custom"),
                ),
              ],
            ),
          );
  }
}
