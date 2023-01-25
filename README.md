# backbutton

```
보통의 앱들은 뒤로가기 버튼을 눌러서 앱 종료를 할 때 
사용자들의 앱 종료 의사를 한번 더 물어보고 종료를 합니다.

뒤로가기 버튼을 눌렀을 때 토스트 형식의 메시지를 출력하면서
앱 종료 의사를 한 번더 물어보는 기능을 추가해보았습니다.

뒤로 가기 버튼 한번 -> 토스트 메시지 출력(정말로 종료하시겠습니까?)
토스트 메시지가 출력된 후 2초 안에 뒤로 가기 버튼 한번 더 (앱 종료)
```
![image](https://user-images.githubusercontent.com/58906858/214491243-6a7111c8-da47-402c-80e6-09099e614fc9.png)


## 필요한 패키지 추가
```
토스트 메시지를 띄우기 위한 fluttertoast를
추가하였습니다.  
```
![image](https://user-images.githubusercontent.com/58906858/214489286-4f8dd691-4ced-4671-9d68-a8fa5c65a33d.png)

## 토스트 함수 로직 
```
뒤로가기 한번을 누르고 2초안에 한 번더 누르면 앱이 종료되어야 하기 때문에
현재 시간을 now로 선언하고 difference 메소드를 사용해서 시간 차이를 구해주었습니다.
2초 안에 뒤로가기 버튼을 두 번 누르지 않으면 toast 메시지가 출력됩니다.
```
![image](https://user-images.githubusercontent.com/58906858/214489622-d3b0215e-a37c-4ba8-83fb-ad18d01c318b.png)

## WillPopScope의 사용
```
WillPopScope를 사용하면 Scaffold 위젯을 감싸서 뒤로가기 버튼을 가로챌 수 있습니다.
위에서 생성한 함수를 onWillPop 프로퍼티의 값으로 전달하고 onWillPop 함수의 리턴값이 true일때
뒤로가기 버튼이 작용하여 앱이 종료됩니다. false일 때는 화면에 남게 됩니다(2초 동안 뒤로가기 버튼이 안눌러졌을때).
```
![image](https://user-images.githubusercontent.com/58906858/214491237-0985f6ec-197c-4f7d-951b-4e1bbd392de3.png)
