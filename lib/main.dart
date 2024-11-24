import 'package:flutter/material.dart';

enum Tab {
  home,
  library,
  settings,
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter iOS .ipa Export'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.book),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeView(),
              LibraryView(),
              SettingsView(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          title: Text('哒哒工具箱'),
          bottom: TabBar(
            tabs: List.generate(12, (index) => Tab(text: "Tab ${index + 1}")),
          ),
        ),
        body: TabBarView(
          children: List.generate(12, (index) {
            switch (index) {
              case 0:
                return QualityView();
              case 1:
                return FrameRateView();
              case 2:
                return ResolutionView();
              case 3:
                return ShadowView();
              case 4:
                return BrightnessView();
              case 5:
                return AntiAliasingView();
              case 6:
                return SceneAntiAliasingView();
              case 7:
                return ConfigLockView();
              case 8:
                return UltraWideView();
              case 9:
                return DisguisedModelView();
              case 10:
                return LoginSoundView();
              case 11:
                return GameFrameRateView();
              default:
                return MemoryOptimizationView();
            }
          }),
        ),
      ),
    );
  }
}

class LibraryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("教程视图"),
    );
  }
}

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "用户名",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "过期时间: 2024-12-12 12:12:12",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("充值"),
            onTap: () {
              print("第一个列表项被点击");
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("企业微信"),
            onTap: () {
              print("第二个列表项被点击");
            },
          ),
          ListTile(
            leading: Icon(Icons.volume_up),
            title: Text("免责声明"),
            onTap: () {
              print("第三个列表项被点击");
            },
          ),
          ListTile(
            leading: Icon(Icons.videogame_asset),
            title: Text("切换游戏"),
            onTap: () {
              print("第四个列表项被点击");
            },
          ),
        ],
      ),
    );
  }
}

class QualityView extends StatefulWidget {
  @override
  _QualityViewState createState() => _QualityViewState();
}

class _QualityViewState extends State<QualityView> {
  List<Map<String, dynamic>> qualityOptions = [
    {"name": "关闭", "value": 0},
    {"name": "流畅", "value": 0},
    {"name": "均衡", "value": 1},
    {"name": "高清", "value": 2},
    {"name": "HDR", "value": 2},
    {"name": "超高", "value": 3},
    {"name": "极清", "value": 4},
  ];
  String selectedQuality = "关闭";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("画质视图"),
      ),
      body: ListView.builder(
        itemCount: qualityOptions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(qualityOptions[index]["name"]),
            trailing: selectedQuality == qualityOptions[index]["name"]
                ? Icon(Icons.check)
                : null,
            onTap: () {
              setState(() {
                selectedQuality = qualityOptions[index]["name"];
              });
            },
          );
        },
      ),
    );
  }
}

class FrameRateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("帧率视图"),
    );
  }
}

class ResolutionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("分辨率视图"),
    );
  }
}

class ShadowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("阴影视图"),
    );
  }
}

class BrightnessView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("亮度视图"),
    );
  }
}

class AntiAliasingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("抗锯齿视图"),
    );
  }
}

class SceneAntiAliasingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("场景抗锯齿视图"),
    );
  }
}

class ConfigLockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("配置锁定视图"),
    );
  }
}

class UltraWideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("超广角视图"),
    );
  }
}

class DisguisedModelView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("伪装型号视图"),
    );
  }
}

class LoginSoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("登录界面声音视图"),
    );
  }
}

class GameFrameRateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("游戏补帧视图"),
    );
  }
}

class MemoryOptimizationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("内存优化视图"),
    );
  }
}

void main() {
  runApp(MyApp());
}
