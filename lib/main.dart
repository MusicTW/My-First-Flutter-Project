import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer()..setReleaseMode(ReleaseMode.loop);

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    screen1(),
    screen2(),
    screen3(),
    screen4(),
  ];

  int previousIndex=0;
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的自傳',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                       useMaterial3: true,),
      home: Scaffold(
        appBar: AppBar(title: Text('我的自傳'),),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18,
          unselectedFontSize: 14,
          iconSize: 30,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: currentIndex==0? Image.asset('images/f5.jpg',width:40,height:40): Image.asset('images/f5.jpg',width:20,height:20), label:'自我介紹',),
            BottomNavigationBarItem(icon: Icon(Icons.school), label:'學習歷程',),
            BottomNavigationBarItem(icon: Icon(Icons.schedule_outlined), label:'學習計畫',),
            BottomNavigationBarItem(icon: Icon(Icons.engineering), label:'專業方向',),
          ],
          onTap: (index) {
            setState(() {
              previousIndex=currentIndex;
              currentIndex=index;
            });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='        我是陳義鈞，一位21歲的大學生。雖然我的家庭組成有些獨特，缺少了父親的陪伴，但這個特殊的家庭環境卻激勵著我追求卓越，並注重家人之間的溝通與支持。'
                  '我成長於一個由媽媽、外公外婆以及阿姨組成的家庭，而媽媽是一位優秀的助理工程師。她的事業成就和堅韌的精神一直是我學習的楷模。在這樣的家庭環境中，我學會了尊重、關懷和責任，這些價值觀影響著我的成長與學業生涯。'
                  '高中時期，我選擇了資訊科作為我的專業領域。透過技職繁星計畫的保送，我成功進入了高科大，開啟了我在大學的學業歷程。在資訊科的學習中，我培養了扎實的計算機知識，同時也提高了邏輯思維和解難能力。這段經歷讓我更加熱愛科技領域，並樂於迎接未來科技發展的挑戰。'
                  '在家庭中，我一直被灌輸著「人品優先，課業第二」的觀念。這使我在學業上不僅注重專業知識的學習，更努力培養自己的品格和處事原則。我深信，擁有優秀的品德是事業成功的根本。'
                  '大學生活中，我將不斷追求卓越，融合理論與實踐，致力於將所學知識轉化為實際應用。我期望能夠在科技領域中發光發熱，為社會做出積極的貢獻。同時，我將以積極的態度參與校內外的活動，拓寬視野，培養團隊協作能力。'
                  '總的來說，我是一位努力奮鬥、樂觀向前的年輕人，對未來充滿信心。家庭的愛與支持是我成長的動力，學業則是我追求夢想的舞台。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //放標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text('我是誰?', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          //自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width:3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(s1, style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 10,),
          //放一張照片
          Container(
            color: Colors.redAccent,
            child:Image.asset('images/f2.png'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(image: AssetImage('images/f3.webp'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(image: AssetImage('images/f4.webp'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          '個人背景：\n'
              '  陳義鈞，21歲，目前就讀於高科大資訊工程系。\n'
              '高中選擇：\n'
              '  就讀某私立高中資訊科，透過技職繁星計畫成功保送進入高科大資訊工程系。\n'
              '大學學習：\n'
              '  專注於資訊工程相關課程，深入研究數據結構、演算法、網路程式設計等核心科目。\n',
          style: TextStyle(fontSize: 36.0), // 設定字體大小為36.0
        ),
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '學習計畫',
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 36.0),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListView(
                children: [
                  _buildPhase('大一', ['確立學習目標', '建立良好學習習慣', '參與課外活動']),
                  _buildPhase('大二', ['深入專業領域', '發展個人專長', '建立職涯規劃']),
                  _buildPhase('大三', ['進行深度研究', '實習和實務應用', '準備升學或職場']),
                  _buildPhase('大四', ['完成學業', '職業發展', '學習持續進修']),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhase(String title, List<String> tasks) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        ...tasks.map((task) => Text(
          '• $task',
          style: TextStyle(fontSize: 24.0), // 設置文字大小為16.0
        )),
        SizedBox(height: 12.0),
      ],
    );
  }
}



class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '專業方向',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListView(
                children: [
                  _buildCategory('Machine Learning', [
                    '深度學習',
                    '資料挖掘',
                    '機器學習算法'
                  ]),
                  _buildCategory('Web Development', [
                    '前端開發',
                    '後端開發',
                    '全端工程師'
                  ]),
                  _buildCategory('Cybersecurity', [
                    '網路安全',
                    '資訊安全管理',
                    '漏洞測試'
                  ]),
                  // 可以繼續添加其他專業方向
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(String category, List<String> subcategories) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        ...subcategories.map((subcategory) => Text(
          '• $subcategory',
          style: TextStyle(fontSize: 16.0),
        )),
        SizedBox(height: 12.0),
      ],
    );
  }
}
