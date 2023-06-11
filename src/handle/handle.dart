import 'dart:io';
import "../generated/message.dart";

void handle(HttpRequest req, HttpResponse res) {
  var name = req.uri.queryParameters["name"];
  Message message = Message(message: "Hello $name");
  var response = message.toJson();
  res.write(response);
  res.close();
}
