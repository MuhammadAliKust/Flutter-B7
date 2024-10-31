import 'package:arid_student/screeen_b.dart';
import 'package:flutter/material.dart';

class DialogBoxView extends StatelessWidget {
  const DialogBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Box View"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Message"),
                      content:
                          const Text("Your order has been place successfully."),
                      actions: [
                        TextButton(onPressed: () {}, child: const Text("Yes")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("No")),
                      ],
                    );
                  });
            },
            child: const Text("Show Dialog Box")),
      ),
    );
  }
}
