import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String text;
  final VoidCallback onUpdate;
  final VoidCallback onDelete;

  const TodoItem(
      {super.key,
      required this.text,
      required this.onUpdate,
      required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      child: InkWell(
        onTap: onUpdate,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child:
                    Text(text, maxLines: 3, overflow: TextOverflow.ellipsis)),
            IconButton(
                onPressed: onDelete,
                icon: const Icon(Icons.highlight_remove_outlined))
          ],
        ),
      ),
    );
  }
}
