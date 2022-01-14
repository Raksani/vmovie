import 'package:flutter/material.dart';
import 'package:vmovie_app/constants.dart';
import 'package:vmovie_app/screens/home/components/body.dart';
import 'package:vmovie_app/models/API_Service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget customSearchBar = const Text('Movie App',
      style: TextStyle(color: Colors.black, fontSize: 25));
  Icon customSearchIcon =
      const Icon(Icons.search, color: Colors.black, size: 30);
  Icon customIcon = const Icon(Icons.search, color: Colors.black, size: 30);
  final myController = TextEditingController();
  APIService apiFetch = APIService();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      elevation: 0,
      title: customSearchBar,
      actions: <Widget>[
        IconButton(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            icon: customIcon,
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(
                    Icons.cancel,
                    color: Colors.black,
                  );
                  customSearchBar = ListTile(
                    leading: IconButton(
                      icon: const Icon(Icons.search,
                          color: Colors.black, size: 30),
                      onPressed: () {
                        print(myController.text);
                        apiFetch.fetchData(myController.text);
                      },
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            controller: myController,
                            decoration: const InputDecoration(
                              hintText: 'type in journal name...',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  customIcon = customSearchIcon;
                  customSearchBar = const Text('Movie App',
                      style: TextStyle(color: Colors.black, fontSize: 25));
                  myController.text = '';
                }
              });
            }),
      ],
    );
  }
}
