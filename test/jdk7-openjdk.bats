setup() {
  docker history bachelorthesis/java:jdk7-openjdk >/dev/null 2>&1
}

@test "java type" {
  run docker run bachelorthesis/java:jdk7-openjdk bash -c 'java -version > java_version 2>&1 && grep -e version java_version | cut -c-7'
  [ "$output" = "openjdk" ]
}

@test "java verision" {
  run docker run bachelorthesis/java:jdk7-openjdk bash -c 'java -version > java_version 2>&1 && grep -e version java_version | cut -c18-20'
  [ "$output" = "1.7" ]
}

@test "javac verision" {
  run docker run bachelorthesis/java:jdk7-openjdk bash -c 'javac -version > javac_version 2>&1 && grep -e 1.7 javac_version | cut -c7-9'
  [ "$output" = "1.7"]
}