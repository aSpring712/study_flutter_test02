class Employee {

  String? name;
  int? age;
  String? subject;

  // 생성자에 매개변수에 대해 알아보자.
  // 선택적 매개 변수를 설계 할 수 있다.(옵션 매개 변수 -> []) -> 생성자 호출 시 []는 안넣어도 됨

  /**
   * [] 선택적 매개변수는 = 기본값을 설정할 수 있다.
   */

  // 단일 라인 생성자 사용
  // Employee(this.name, this.age, [this.subject]); // 생성자 -> 클래스 이름과 같아야 함
  Employee(this.name, this.age, [this.subject = 'N/A']); // 기본값 섲렁

  void display() {
    print("name : $name");
    print("age: $age");
    print("subject : $subject");
  }
}

void main() {

  Employee employee1 = Employee("티모", 12); // [] 값을 넣지 않으면 기본값 'N/A'
  employee1.display();
  print("-----------------------------");
  Employee employee2 = Employee("티모", 12, "개발"); // 값을 넣으면 넣은 값 '개발'
  employee2.display();

}