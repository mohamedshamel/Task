String greetUser(String name, [String greating = "Hello"]) {
  return "$greating $name";
}

void main() {
  print(greetUser("mohammed","halla"));
}
