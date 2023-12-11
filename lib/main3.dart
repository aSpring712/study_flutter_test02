void main() {
  Person person1 = new Person("홍길동", 10);
  Person person2 = Person.fromBirthYear("이순신", 1515);

  print(person2.age);
}

class Person {
  String? name;
  int? age;

  // 기본 생성자 (자바에서는 사용자 정의 생성자)

  // Person(String name, int age) {
  //  this.name = name;
  //  this.age = age;
  // }

  /**
   * 위 코드를 아래처럼 단일 라인으로 만들 수 있음
   * Positional Type의 생성자 (순서를 지켜서 변수를 넣어야함) -> java에서 순서 상관 없이 쓸 때 : builder 패턴
   */
  Person(this.name, this.age); // 단일 라인 생성자
  // Person(this.name); // -> error

  // Person(String name) {
  //   this.name = name;
  // } // -> error
  // dart에서는 기본 생성자 하나만 정의 가능. 자바와 다르게 기본 생성자 overloading 기능이 없음

  // 명명된 생성자 (생성자에 이름을 지정할 수 수 있다) -> 객체 생성 시 좀 더 명시적으로 이해시킬 수 있으므로
  Person.fromBirthYear(String name, int birthYear) {
    this.name = name;
    // this.age = birthYear;

    // 태어난 시기를 입력하라는 의미
    this.age = DateTime.now().year - birthYear;
  }
}