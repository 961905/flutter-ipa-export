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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter iOS .ipa Export'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[
          HomeView(),
          LibraryView(),
          SettingsView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '主页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '教程',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '设置',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('哒哒工具箱'),
      ),
      body: ListView(
        children: <Widget>[
          Section(header: Text("和平精英")) {
            ...List.generate(20, (index) {
              switch (index) {
                case 0:
                  return ListTile(
                    leading: Icon(Icons.paintbrush),
                    title: Text("画质"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QualityView()),
                      );
                    },
                  );
                case 1:
                  return ListTile(
                    leading: Icon(Icons.bolt),
                    title: Text("帧率"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FrameRateView()),
                      );
                    },
                  );
                case 2:
                  return ListTile(
                    leading: Icon(Icons.rectangle_portrait),
                    title: Text("分辨率"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ResolutionView()),
                      );
                    },
                  );
                case 3:
                  return ListTile(
                    leading: Icon(Icons.shadow),
                    title: Text("阴影"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShadowView()),
                      );
                    },
                  );
                case 4:
                  return ListTile(
                    leading: Icon(Icons.sun_min),
                    title: Text("亮度"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BrightnessView()),
                      );
                    },
                  );
                case 5:
                  return ListTile(
                    leading: Icon(Icons.stethoscope),
                    title: Text("抗锯齿"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AntiAliasingView()),
                      );
                    },
                  );
                case 6:
                  return ListTile(
                    leading: Icon(Icons.cube_box_fill),
                    title: Text("场景抗锯齿"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SceneAntiAliasingView()),
                      );
                    },
                  );
                case 7:
                  return ListTile(
                    leading: Icon(Icons.lock),
                    title: Text("配置锁定"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ConfigLockView()),
                      );
                    },
                  );
                case 8:
                  return ListTile(
                    leading: Icon(Icons.photo_on_rectangle_angled),
                    title: Text("超广角"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UltraWideView()),
                      );
                    },
                  );
                case 9:
                  return ListTile(
                    leading: Icon(Icons.info_circle),
                    title: Text("伪装型号"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DisguisedModelView()),
                      );
                    },
                  );
                case 10:
                  return ListTile(
                    leading: Icon(Icons.speaker_wave_3),
                    title: Text("登录界面声音"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginSoundView()),
                      );
                    },
                  );
                case 11:
                  return ListTile(
                    leading: Icon(Icons.dot_circle),
                    title: Text("游戏补帧(开启录屏补帧)"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GameFrameRateView()),
                      );
                    },
                  );
                case 12:
                  return ListTile(
                    leading: Icon(Icons.trash),
                    title: Text("内存优化(删除资源包)"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MemoryOptimizationView()),
                      );
                    },
                  );
                default:
                  return ListTile(
                    leading: Icon(Icons.info),
                    title: Text("其他设置"),
                  );
              }
            }),
          ],
        ],
      ),
    );
  }
}

// 以下是您提供的其他视图的实现，每个视图都返回一个中心文本

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
    return Center(
      child: Text("设置视图"),
    );
  }
}

class QualityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("画质视图"),
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
