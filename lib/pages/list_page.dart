import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:task1/widgets/delete_container.dart';
import 'package:task1/widgets/list_container.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);
  static String id = 'ListPage';

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<int> list = [1];
  GlobalKey<AnimatedListState> listKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c1d2c),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Mapp'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              int index = list.length;
              list.insert(0, index + 1);
              listKey.currentState!
                  .insertItem(0, duration: Duration(milliseconds: 500));
            },
            icon: Icon(Icons.add),
            iconSize: 30,
            color: Colors.white,
          ),
          Expanded(
            child: AnimatedList(
              key: listKey,
              initialItemCount: list.length,
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  child: ListContainer(
                    index: list[index],
                    onPressed: () {
                      list.removeAt(index);
                      listKey.currentState!.removeItem(index,
                          duration: Duration(milliseconds: 500),
                          (context, animation) {
                        return SizeTransition(
                          child: DeleteContainer(),
                          sizeFactor: animation,
                        );
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
