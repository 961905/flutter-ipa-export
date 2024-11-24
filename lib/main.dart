import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
          Section(
            header: Text("和平精英"),
            children: List.generate(20, (index) {
              switch (index) {
                case 0:
                  return ListTile(
                    leading: Icon(Icons.brush),
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
                    leading: Icon(Icons.speed),
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
                    leading: Icon(Icons.aspect_ratio),
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
                    leading: Icon(Icons.aspect_ratio),
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
                    leading: Icon(Icons.wb_sunny),
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
                    leading: Icon(Icons.cube),
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
                    leading: Icon(Icons.photo),
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
                    leading: Icon(Icons.info),
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
                    leading: Icon(Icons.volume_up),
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
                    leading: Icon(Icons.refresh),
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
                    leading: Icon(Icons.delete),
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
          ),
        ],
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

class QualityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("画质视图"),
      ),
      body: Center(
        child: Text("这里是画质设置"),
      ),
    );
  }
}

class FrameRateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("帧率视图"),
      ),
      body: Center(
        child: Text("这里是帧率设置"),
      ),
    );
  }
}

class ResolutionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("分辨率视图"),
      ),
      body: Center(
        child: Text("这里是分辨率设置"),
      ),
    );
  }
}

class ShadowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("阴影视图"),
      ),
      body: Center(
        child: Text("这里是阴影设置"),
      ),
    );
  }
}

class BrightnessView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("亮度视图"),
      ),
      body: Center(
        child: Text("这里是亮度设置"),
      ),
    );
  }
}

class AntiAliasingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("抗锯齿视图"),
      ),
      body: Center(
        child: Text("这里是抗锯齿设置"),
      ),
    );
  }
}

class SceneAntiAliasingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("场景抗锯齿视图"),
      ),
      body: Center(
        child: Text("这里是场景抗锯齿设置"),
      ),
    );
  }
}

class ConfigLockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("配置锁定视图"),
      ),
      body: Center(
        child: Text("这里是配置锁定设置"),
      ),
    );
  }
}

class UltraWideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("超广角视图"),
      ),
      body: Center(
        child: Text("这里是超广角设置"),
      ),
    );
  }
}

class DisguisedModelView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("伪装型号视图"),
      ),
      body: Center(
        child: Text("这里是伪装型号设置"),
      ),
    );
  }
}

class LoginSoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录界面声音视图"),
      ),
      body: Center(
        child: Text("这里是登录界面声音设置"),
      ),
    );
  }
}

class GameFrameRateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("游戏补帧视图"),
      ),
      body: Center(
        child: Text("这里是游戏补帧设置"),
      ),
    );
  }
}

class MemoryOptimizationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("内存优化视图"),
      ),
      body: Center(
        child: Text("这里是内存优化设置"),
      ),
    );
  }
}

// Helper widget to create a section with a header and children
class Section extends StatelessWidget {
  final Widget header;
  final List<Widget> children;

  Section({required this.header, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        header,
        ...children,
      ],
    );
  }
}
