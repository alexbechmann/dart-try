import 'dart:io';

void handle(HttpRequest req, HttpResponse res) {
  res.write("Hello there!!");
  res.close();
}
