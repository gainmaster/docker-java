setup() {
  docker history bachelorthesis/java:jdk7-openjdk >/dev/null 2>&1
}

@test "java installed" {
  run docker run bachelorthesis/java:jdk7-openjdk which java
  [ $status -eq 0 ]
}

@test "javac installed" {
  run docker run bachelorthesis/java:jdk7-openjdk which javac
  [ $status -eq 0 ]
}