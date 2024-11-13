import 'package:flutter/material.dart';

void main() {
  runApp(const InstagramApp());
}

class InstagramApp extends StatefulWidget {
  const InstagramApp({super.key});
  @override
  State<InstagramApp> createState() => _Assignment4State();
}

class _Assignment4State extends State<InstagramApp> {
  bool _isPost1Liked = false;
  bool _isPost2Liked = false;
  bool _isPost3Liked = false;
  bool _isBookMark1 = false;
  bool _isBookMark2 = false;
  bool _isBookMark3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Instagram",
            style: TextStyle(
                fontStyle: FontStyle.italic, color: Colors.black, fontSize: 30),
          ),
          actions: [
            const Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?cs=srgb&dl=pexels-bri-schneiter-346529.jpg&fm=jpg",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _isPost1Liked = !_isPost1Liked;
                          });
                        },
                        icon: Icon(_isPost1Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined),
                        color: _isPost1Liked ? Colors.red : Colors.black),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isBookMark1 = !_isBookMark1;
                        });
                      },
                      icon: Icon(_isBookMark1
                          ? Icons.bookmark_add_rounded
                          : Icons.bookmark_outline),
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1500964757637-c85e8a162699?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmVhdXRpZnVsJTIwbGFuZHNjYXBlfGVufDB8fDB8fHww",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost2Liked = !_isPost2Liked;
                        });
                      },
                      icon: Icon(
                          _isPost2Liked
                              ? Icons.favorite_rounded
                              : Icons.favorite_outline_outlined,
                          color: _isPost2Liked ? Colors.red : Colors.black),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isBookMark2 = !_isBookMark2;
                        });
                      },
                      icon: Icon(_isBookMark2
                          ? Icons.bookmark_add_rounded
                          : Icons.bookmark_outline),
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _isPost3Liked = !_isPost3Liked;
                          });
                        },
                        icon: Icon(_isPost3Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined),
                        color: _isPost3Liked ? Colors.red : Colors.black),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isBookMark3 = !_isBookMark3;
                        });
                      },
                      icon: Icon(_isBookMark3
                          ? Icons.bookmark_add_rounded
                          : Icons.bookmark_outline),
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Container(
        //             color: Colors.amber,
        //             child: Image.network(
        //               "https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?cs=srgb&dl=pexels-bri-schneiter-346529.jpg&fm=jpg",
        //               width: double.infinity,
        //               height: 200,
        //             ),
        //           ),
        //           Row(
        //             children: [
        //               IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.favorite_outline_outlined,
        //                 ),
        //               ),
        //               IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.comment_outlined,
        //                 ),
        //               ),
        //               IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.send,
        //                 ),
        //               )
        //             ],
        //           ),
        //         ],
        //       ),
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Container(
        //             color: Colors.amber,
        //             child: Image.network(
        //               "https://images.unsplash.com/photo-1500964757637-c85e8a162699?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmVhdXRpZnVsJTIwbGFuZHNjYXBlfGVufDB8fDB8fHww",
        //               width: double.infinity,
        //               height: 200,
        //             ),
        //           ),
        //           Row(
        //             children: [
        //               IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.favorite_outline_outlined,
        //                 ),
        //               ),
        //               IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.comment_outlined,
        //                 ),
        //               ),
        //               IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.send,
        //                 ),
        //               )
        //             ],
        //           ),
        //         ],
        //       ),
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Container(
        //             color: Colors.amber,
        //             child: Image.network(
        //               "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png",
        //               width: double.infinity,
        //               height: 200,
        //             ),
        //           ),
        //           Row(
        //             children: [
        //               IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.favorite_outline_outlined,
        //                 ),
        //               ),
        //               IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.comment_outlined,
        //                 ),
        //               ),
        //               IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.send,
        //                 ),
        //               )
        //             ],
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
