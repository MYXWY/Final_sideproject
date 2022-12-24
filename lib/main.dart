import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text('首頁'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('今天煮什麼',style: TextStyle(fontSize: 40),),
            const SizedBox(height: 40),
            Text('主要食材：',style: TextStyle(fontSize: 15),),
            const SizedBox(height: 15),
            ElevatedButton(
              child: Text('牛肉🐮'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text('豬肉🐷'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink[200]),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text('雞肉🐔'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow[700]),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text('今天沒錢了😭'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueGrey[700]),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page4()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('主要食材:牛'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset('assets/steak.jpg'),
            title: Text('牛排'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/categories/204';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Beef Stew with Red Wine.jpg'),
            title: Text('紅酒燉牛肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/410530';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Steak Wellington.jpg'),
            title: Text('威靈頓牛排'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/397502';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Japanese Beef Sukiyaki.jpg'),
            title: Text('日式牛肉壽喜燒'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/391859';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Braised beef noodles.jpg'),
            title: Text('紅燒牛肉麵'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/425657';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Thai Green Beef Curry.jpg'),
            title: Text('泰國綠咖哩牛肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/385063';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Fried Steak.jpg'),
            title: Text('日式炸牛排'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/348094';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Stir-fried ground beef with basil.jpg'),
            title: Text('九層塔辣炒牛絞肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/379155';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Stir-Fried Beef with Color Pepper.jpg'),
            title: Text('彩椒炒牛肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/401589';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Tomato Goulash.jpg'),
            title: Text('蕃茄燉牛肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/426646';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Oxtail Borsch.jpg'),
            title: Text('牛尾羅宋湯'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/350123';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Japanese Beef Udon.jpg'),
            title: Text('日式牛肉烏龍麵'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/349899';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Yakiniku Donburi.jpg'),
            title: Text('日式燒肉丼'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/349828';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Shacha Beef.jpg'),
            title: Text('沙茶牛肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/410239';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}


class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text('主要食材:豬'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset('assets/pork1.jpg'),
            title: Text('蜜汁豬肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/154835';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork2.jpg'),
            title: Text('醬爆豬肉片'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://www.ytower.com.tw/recipe/iframe-recipe.asp?seq=A02-1949';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork3.jpg'),
            title: Text('客家鹹豬肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/66144';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork4.jpg'),
            title: Text('香煎紐奧良豬肉'),            onTap: () async {
            // 尝试打开网址
            final url = 'https://icook.tw/recipes/380063';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork5.jpg'),
            title: Text('泡菜炒豬肉'),            onTap: () async {
            // 尝试打开网址
            final url = 'https://maggielife.tw/post-35799709/';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork6.jpg'),
            title: Text('醬燒豬五花'),
            onTap: () async {
            // 尝试打开网址
            final url = 'https://icook.tw/recipes/193594';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork7.jpg'),
            title: Text('照燒豬肉片'),
            onTap: () async {
            // 尝试打开网址
            final url = 'https://icook.tw/recipes/271968';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork8.jpg'),
            title: Text('薑汁燒肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/100350';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork9.jpg'),
            title: Text('蜜汁叉燒肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://udn.com/umedia/story/12919/6376316';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork10.jpg'),
            title: Text('香麻烤豬肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/95004';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork11.jpg'),
            title: Text('金針菇炒豬肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/372376';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork12.jpg'),
            title: Text('炒香腸佐香腸玉米筍'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/243630';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork13.jpg'),
            title: Text('梅干扣肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/search/%E6%A2%85%E5%B9%B2%E6%89%A3%E8%82%89/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/pork14.jpg'),
            title: Text('煎椒鹽松阪豬'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/286556';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}


class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text('主要食材:雞'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset('assets/Chicken Curry Rice.jpg'),
            title: Text('雞肉咖哩飯'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/422885';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Korean Chicken Rice Cake.jpg'),
            title: Text('韓式雞肉年糕'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/426013';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/chicken rice.jpg'),
            title: Text('雞肉飯'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/425337';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Ginger Chicken.jpg'),
            title: Text('薑爆雞肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/426120';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Chicken Rice with Pumpkin and Mushroom.jpg'),
            title: Text('南瓜香菇雞肉炊飯'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/425893';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Chicken Tofu Meatballs.jpg'),
            title: Text('雞肉豆腐丸子'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/424156';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Chicken Teriyaki.jpg'),
            title: Text('照燒雞肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/423628';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Korean Chicken Fried Rice Cake.jpg'),
            title: Text('韓式雞肉炒年糕'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/427776';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Chicken Vegetable Salad.jpg'),
            title: Text('雞肉蔬菜沙拉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/421329';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Sand tea fried chicken.jpg'),
            title: Text('沙茶煎雞肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/421605';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Chicken Roll with Golden Needle in Honey Sauce.jpg'),
            title: Text('蜜汁金針雞肉捲'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/422792';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Fried Chicken with Kimchi.jpg'),
            title: Text('泡菜炒雞肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/422792';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/lanni chicken with bell peppers.jpg'),
            title: Text('彩椒雞肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/423395';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Image.asset('assets/Three cups of chicken.jpg'),
            title: Text('三杯雞肉'),
            onTap: () async {
              // 尝试打开网址
              final url = 'https://icook.tw/recipes/415190';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}


class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[600],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: Text('今天沒錢了😭'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(title: Text('   吃土',style: TextStyle(fontSize: 100))),
          ],
        ),
      ),
    );
  }
}