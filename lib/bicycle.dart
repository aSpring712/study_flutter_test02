// 클래스 명은 파스칼 케이스 사용
/**
 * 생성자는 그 객체를 동작시키기 위한 필수 값을 정의함
 * 생성자는 메모리에 올리기 전에 강제성을 의미
 */
class Bicycle {
  String? color;
  int? size;
  int? currentSpeed;

  // 기능 -- 동사 권장
  void changeGear(int newValue) {
    currentSpeed = newValue;
  }

  void showInfo() {
    print("color : ${color}");
    print("size : ${size}");
    print("currentSpeed : ${currentSpeed}");
  }
}

// 코드의 시작점 이다.
// 사용자 정의 생성자를 설계해준다.
void main() {
  Bicycle bicycle = Bicycle(); // 생성자는 메모리에 올릴 때 반드시 있어야 하는데, 명시적으로 정의하지 않아도 dart는 컴파일러가 암묵적으로 생성해줌
  bicycle.color = "Red";
  bicycle.size = 100;
  bicycle.currentSpeed = 5;
  bicycle.changeGear(10);
  bicycle.showInfo();
}

// 자전거 클래스 설계 하기
// 파일명 - 소문자, 스네이크 케이스
// 클래스명 - 대문자, 파스칼 케이스 사용 권장