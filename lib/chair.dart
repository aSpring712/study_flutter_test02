
class Chair {
  String name; // ** 이녀석은 반드시 값이 null이 되면 안됨
  String? color;

  // String name;
  // String color;
  //
  // // 기본 생성자 -> ()
  // // Chair(this.name, this.color); // 인스턴스화 할 때 반드시 name과 color 값이 초기화 된다. 강제성.
  // // -> 값이 반드시 초기화 되므로 3번째 줄에 들어간 nullable type error남

  // 선택적 매개 변수 중괄호에 사용 - { }
  // 대괄호처럼 기본값도 세팅할 수 있다.
  //  required를 사용하여 필수값을 명시할 수 있다.
  // Chair({this.name, this.color = "blue"}); // 생성자 호출 시, 값을 넣지 않아도 된다는 뜻

  // Chair(this.name, {this.color = "blue"});
  Chair({required this.name, this.color = "blue"}); // name은 옵션 값이지만 반드시 넣어줘야 한다는 뜻

  void display() {
    print("name: $name");
    print("color: $color");
  }

}

void main() {
  // 선택적 매개 변수 중괄호를 사용하면 ?? 마치 builder 패턴을 쓰는 것처럼 어떤 값이라는 것이 명확하게 인지가 됨
  // 포지셔닝에 자유롭다(매개변수 넣는 순서에 맞출 필요 업음), 순서가 중요하지 않다.
  Chair chair = Chair(color: "red", name: "작은의자1"); // key값 확인 가능
  chair.display();
}