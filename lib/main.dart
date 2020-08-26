import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TabView());
}

class TabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.aspect_ratio)),
                Tab(icon:Icon(Icons.flag)),
                Tab(icon: Icon(Icons.accessible_sharp)),
              ],
            ),
            title: Text("Golden Ratio"),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                     Image.asset('assets/golden-ratio.png'),

                      Text(
                        "The golden ratio is also called the golden mean or golden "
                            "section (Latin: sectio aurea). Other names include extreme "
                            "and mean ratio, medial section, divine proportion (Latin: proportio divina), "
                            "divine section (Latin: sectio divina), golden proportion, golden cut, and golden number.",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  ),
                )
              ),
              Text("Some Content"),
              Text("Some More Content"),
            ],
          ),
        )
      )
    );
  }
}
