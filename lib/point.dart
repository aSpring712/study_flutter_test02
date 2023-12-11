class Point {

  // 상수, final , const
  final int x;
  final int y;

  // // 위 녀석들은 int의 non-nullable type이므로 아래 생성자 필요
  // Point(this.x, this.y); 

  /**
   * 상수 생성자 ? const 상수 생성자를 의미
   * 한 번 정해진 값을 변경할 수 없는 객체를 만들 때 사용
   * 메모리의 절약을 가능케 함
   */
  
  const Point(this.x, this.y);

}

void main() {
  // 상수 생성자일 경우 const를 붙일 수 있음
  Point p1 = const Point(10, 10);
  print("The p1 hash code is ${p1.hashCode}"); // 394692423

  Point p2 = const Point(10, 10);
  print("The p2 hash code is ${p2.hashCode}"); // 394692423

  // ! 상수 생성자는 싱글톤 패턴과는 다른 개념입니다 !
  Point p3 = const Point(100, 100);
  print("The p3 hash code is ${p3.hashCode}"); // 241942395

  Point p4 = const Point(100, 100);
  print("The p3 hash code is ${p4.hashCode}"); // 241942395

  // 상수 생성자의 메모리적 특징을 이해해 보자

  /**
   * p1, p2의 hash code가 동일 -> JAVA String 클래스와 비슷한 동작
   * - 메모리 효율을 위해
   */
}