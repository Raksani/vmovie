import 'package:flutter/material.dart';
import 'package:vmovie_app/constants.dart';
import 'package:vmovie_app/db/database_handler.dart';
import 'package:vmovie_app/db/tmp_movies.dart';
import 'package:vmovie_app/models/movie.dart';
import 'package:vmovie_app/screens/home/components/body.dart';
import 'package:vmovie_app/models/API_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DatabaseHandler handler;

  @override
  void initState() {
    super.initState();

    // initiakize sqlite db
    handler = DatabaseHandler();
    handler.initializeDB().whenComplete(() async {
      // checkpoint
      print("DB Initialized");
      List<Map<String, dynamic>> userMap = getMockMovie();
      List<Movie> listOfUsers = userMap.map((e) => Movie.fromJson(e)).toList();
      await handler.insertUser(listOfUsers);
      await handler.retrieveUsers();

      // rebuild
      rebuildAllChildren(context);
      setState(() {});
    });
  }

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

  void rebuildAllChildren(BuildContext context) {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  void updateMovie(String search) async {
    await apiFetch.fetchData(search);
    rebuildAllChildren(context);
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
                        updateMovie(myController.text);
                      },
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            controller: myController,
                            decoration: const InputDecoration(
                              hintText: 'Movie name',
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
