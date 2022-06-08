import 'package:flutter/material.dart';
import 'package:web_search/next_page.dart';
import 'package:web_search/web_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  WebApi webApi = WebApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search with queries'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(32),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                fillColor: Colors.blueAccent,
                border: OutlineInputBorder(),
              ),
              controller: controller,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                var val = controller.text;
                // webApi.collectApi(val);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => NextPage(val: val)),
                  ),
                );
                // FutureBuilder(
                //   future: webApi.collectApi(val),
                //   builder: ((context, AsyncSnapshot<List<WebModel>> snapshot) {
                //     if (snapshot.hasData) {
                //       return ListView.builder(
                //         itemBuilder: ((context, index) {
                //           var web = snapshot.data![index];
                //           return ListTile(
                //             title: Text(web.title),
                //             subtitle: Text(web.description),
                //           );
                //         }),
                //       );
                //     } else if (snapshot.hasError) {
                //       return const Text('has error');
                //     }
                //     return const CircularProgressIndicator();
                //   }),
                // );
              },
              child: const Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
