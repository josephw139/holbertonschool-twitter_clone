import 'package:flutter/material.dart';
import 'package:twitter/widgets/bottom_bar_menu.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/3177/3177440.png'),
                      radius: 20,
                    )),
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintStyle: TextStyle(color: Colors.grey[500], fontSize: 20),
                    contentPadding: const EdgeInsets.fromLTRB(30, 15, 0, 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: (Colors.grey[200])!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2),
                    ),
                  ),
                )),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                  child: const Icon(Icons.settings_outlined,
                      color: Color.fromARGB(255, 112, 186, 246), size: 30),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenuBar(),
    );
  }
}
