import 'dart:core';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:web_search/web_api.dart';
import 'package:web_search/web_model.dart';

class NextPage extends StatefulWidget {
  String val;

  NextPage({Key? key, required this.val}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  WebApi webApi = WebApi();
  // late final _recogniser = TapGestureRecognizer()..onTap = _onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: FutureBuilder(
                future: webApi.collectApi(widget.val),
                builder: (context, AsyncSnapshot<List<WebModel>> snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: Text('Loading...'),
                    );
                  } else {
                    return ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Card(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  snapshot.data![0].value[0].title,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  snapshot.data![0].value[0].description,
                                ),

                                Link(
                                  target: LinkTarget.blank,
                                  uri:
                                      Uri.parse(snapshot.data![0].value[0].url),
                                  builder: (context, followLink) => TextButton(
                                    onPressed: followLink,
                                    child: Text(snapshot.data![0].value[0].url),
                                  ),
                                ),
                                // TextButton(
                                //   onPressed: () async {
                                //     Uri url =
                                //         Uri.parse('snapshot.data![0].value[0].url');

                                //     if (await canLaunchUrl(url)) {
                                //       await launchUrl(url);
                                //     } else {
                                //       throw 'Could not launch $url';
                                //     }
                                //   },
                                //   child: Text(
                                //     snapshot.data![0].value[0].url,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  snapshot.data![0].value[1].title,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  snapshot.data![0].value[0].description,
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri:
                                      Uri.parse(snapshot.data![0].value[1].url),
                                  builder: (context, followLink) => TextButton(
                                    onPressed: followLink,
                                    child: Text(snapshot.data![0].value[1].url),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![0].value[2].title,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  snapshot.data![0].value[2].description,
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri:
                                      Uri.parse(snapshot.data![0].value[2].url),
                                  builder: (context, followLink) => TextButton(
                                    onPressed: followLink,
                                    child: Text(snapshot.data![0].value[2].url),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![0].value[3].title,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  snapshot.data![0].value[0].description,
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri:
                                      Uri.parse(snapshot.data![0].value[3].url),
                                  builder: (context, followLink) => TextButton(
                                    onPressed: followLink,
                                    child: Text(snapshot.data![0].value[3].url),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![0].value[4].title,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  snapshot.data![0].value[4].description,
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri:
                                      Uri.parse(snapshot.data![0].value[4].url),
                                  builder: (context, followLink) => TextButton(
                                    onPressed: followLink,
                                    child: Text(snapshot.data![0].value[4].url),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![0].value[5].title,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  snapshot.data![0].value[5].description,
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri:
                                      Uri.parse(snapshot.data![0].value[5].url),
                                  builder: (context, followLink) => TextButton(
                                    onPressed: followLink,
                                    child: Text(snapshot.data![0].value[5].url),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![0].value[6].title,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  snapshot.data![0].value[6].description,
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri:
                                      Uri.parse(snapshot.data![0].value[6].url),
                                  builder: (context, followLink) => TextButton(
                                    onPressed: followLink,
                                    child: Text(snapshot.data![0].value[6].url),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![0].value[7].title,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  snapshot.data![0].value[7].description,
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri:
                                      Uri.parse(snapshot.data![0].value[7].url),
                                  builder: (context, followLink) => TextButton(
                                    onPressed: followLink,
                                    child: Text(snapshot.data![0].value[7].url),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![0].value[8].title,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  snapshot.data![0].value[8].description,
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri:
                                      Uri.parse(snapshot.data![0].value[8].url),
                                  builder: (context, followLink) => TextButton(
                                    onPressed: followLink,
                                    child: Text(snapshot.data![0].value[8].url),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![0].value[9].title,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  snapshot.data![0].value[9].description,
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri:
                                      Uri.parse(snapshot.data![0].value[9].url),
                                  builder: (context, followLink) => TextButton(
                                    onPressed: followLink,
                                    child: Text(snapshot.data![0].value[9].url),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],

                      // itemCount: snapshot.data!.length,
                      // itemBuilder: (context, index) {
                      //   return ListTile(
                      //     title: Text(
                      //       snapshot.data![index].value[index].title,
                      //     ),
                      //     trailing: Text(
                      //       snapshot.data![index].value[index].id,
                      //     ),
                      //     subtitle: Text(
                      //       snapshot.data![index].value[index].url,
                      //     ),
                      //   );
                      // },
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
