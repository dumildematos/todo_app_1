import 'package:fluent_ui/fluent_ui.dart';

class TodoDialog extends StatefulWidget {
  const TodoDialog({Key? key}) : super(key: key);

  @override
  State<TodoDialog> createState() => _TodoDialogState();
}

class _TodoDialogState extends State<TodoDialog> {
  @override
  Widget build(BuildContext context) {
    return ContentDialog(
      title: const Text('Create Todo'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextBox(
            placeholder: 'Title',
          ),
          SizedBox(height: 20,),
          TextBox(
            maxLines: 5,
            minLines: 3,
            placeholder: 'Description',
          ),
          SizedBox(height: 20,),
          Checkbox(
              content: Text('Is Finished'),
              checked: true,
              onChanged: (val) {} ,),
        ],
      ),
      actions: [
        TextButton(
            child: const Text('Cancel'),
            onPressed: (){}
        ),
        TextButton(
            child: const Text('Create'),
            onPressed: (){}
        ),
      ],
    );
  }
}
