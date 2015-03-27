setup() {
  docker history bachelorthesis/java:jre8-openjdk >/dev/null 2>&1
}

@test "java installed" {
  run docker run bachelorthesis/java:jre8-openjdk which java
  [ $status -eq 0 ]
}