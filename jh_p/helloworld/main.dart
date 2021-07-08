import 'package:flutter/material.dart';

// main 지점이 시작지점이며, runApp을 통하여 MyApp()을 호출
void main() {
  // runApp - widget tree의 root를 형성하는 widget을 인수로 받음
  // 인수 widget을 확장하여, 전체 화며을 채움
  runApp(MyApp());
}

// Flutter는 모두 widget으로서 동작

// StatelessWidget
// 화면이 로드될 때 한 번만 그려지는 State가 없는 widget
// 변경이 필요한 Data가 없는 것을 의미
// 이벤트 또는 사용자 상호 작용에 의해 동작하지 않음

// Build과정이 한 번만 발생하여 한 번 그려진 화면은 계속 유지
class MyApp extends StatelessWidget {
  // MayApp Class는 StatelessWidget을 상속받아서 사용
  // Flutter는 widget으로서 동작하기 때문

  // @override
  // 상속받은 메소드를 재정의할 때 사용
  // 상속 관ㄱ/ㅔ에서 부모 클래스의 멤버를 재정의하겠다고 컴파일러에게 알려주는 메타데이터
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HelloWorld());
  }
}

// StatefulWidget
// widget이 동작하는 동안 data 변경이 필요한 경우
// 화면을 다시 그려서 변경된 부분을 widget에 반영하는 동적인 widget
// 이벤트 또는 사용자 상요 작용에 의해 동작

// StatefluWidget로만 구성하게 되면 StatelessWidget에 비해 성능이 떨어지는 단점이 존재하기 때문에
// 이를 상황에 맞게 사용해야 함

// setState가 발생 시 다시 Build하는 과정이 일어나며, 동적인 화면을 구현할 수 있음

// state
// 1. widget이 사용하는 데이터는 변경될 수 있음
// 2. widget이 빌드 될때 데이터를 동시에 읽을 수 없음(모든 state는 빌드 메소드가 호출 될 때 까지 설정 되어야 함)
class HelloWorld extends StatefulWidget {
  @override

  // Flutter에서 StatefulWidget을 빌드하도록 지시하면 즉시 createState()가 호출
  // createState 메소드는 반드시 존재해야 함
  // HelloWorld에 대한 객체를 생성하기 위해
  HelloWorldState createState() => HelloWorldState();
}

class HelloWorldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    // Scaffold
    // 기본 Material Design Viual Layout 구조를 구현하는 데 사용
    // 일반적으로 앱 화면을 구성하기 위한 뼈대
    return Scaffold(
      appBar: AppBar(title: Text("test12313123")),
      body: Center(
        child: Text("HellWorld", style: TextStyle(fontSize: 50)),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
