import 'package:fluent_ui/fluent_ui.dart';
import 'package:todo_app_1/widget/todo_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: _getAppBar(),
      pane: _getNavigationPane(),
      content: _getNavigationBody(),
    );
  }

  _getAppBar() {
    return NavigationAppBar(
        title: const Text(
          'Todo App',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
        actions: Row(
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: OutlinedButton(
                  child: const Text('Create Todo'),
                  onPressed: (){
                    showDialog(context: context, builder: (cntx) {
                      return const TodoDialog();
                    });
                  }),
            ),
            const SizedBox(width: 20,)
          ],
        )
    );
  }

  _getNavigationPane() {
    return NavigationPane(
        header: const FlutterLogo(
          style: FlutterLogoStyle.horizontal,
          size: 100,
        ),
        selected: selectedIndex,
        onChanged: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          PaneItem(icon: const Icon(FluentIcons.to_do_logo_outline), title: const Text('Todo List'),),
          PaneItem(icon: const Icon(FluentIcons.settings), title: const Text('Settings'),),
        ]
    );
  }

  _getNavigationBody() {
    return NavigationBody(
        index: selectedIndex,
        children: [
          Container(child: const Center(child: Text('Todo List'),),),
          Container(child: const Center(child: Text('Settings'),),),
      ]);
  }
}
