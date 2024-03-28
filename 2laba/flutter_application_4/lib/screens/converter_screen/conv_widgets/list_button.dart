import 'package:flutter/material.dart';
import '../../list_screen/list_screen.dart';

class ListButton extends StatelessWidget {
  const ListButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const ListScreen()), // Відкриття нового екрану
        );
      },
      child: const Text('Open New Screen'),
    );
  }
}
