setup() {
  docker history bachelorthesis/java:jre7-openjdk >/dev/null 2>&1
}

@test "java installed" {
  run docker run bachelorthesis/java:jre7-openjdk which java
  [ $status -eq 0 ]
}
