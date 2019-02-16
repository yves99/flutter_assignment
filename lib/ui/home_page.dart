import 'package:flutter/material.dart';
import './main_tab.dart' as maintab;
import './map_tab.dart' as maptab;
import './notify_tab.dart' as notifytab;
import './profile_tab.dart' as profiletab;
import './setup_tab.dart' as setuptab;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
    void initState() {
      controller = new TabController(vsync: this, length: 5);
      super.initState();
    }

  @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: new Text("Home", style: TextStyle(fontSize: 15.0)),
      ),

      body: new TabBarView(
        controller:controller,
        children: <Widget>[
          new maintab.MainTab(),
          new notifytab.NotifyTab(),
          new maptab.MapTab(),
          new profiletab.ProfileTab(),
          new setuptab.SetupTab(),
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.dashboard),),
            new Tab(icon: new Icon(Icons.notifications),),
            new Tab(icon: new Icon(Icons.explore),),
            new Tab(icon: new Icon(Icons.person),),
            new Tab(icon: new Icon(Icons.settings),),
          ],
        )
      ),

    );
  }
}