import 'package:cd_pro/my_app.dart';
import 'package:flutter/material.dart';

enum Client {
  master,
  bbet,
  chev,
}

Client getClient(String client) {
  switch(client) {
    case "bbet":
      return Client.bbet;
    case "chev":
      return Client.chev;
    default:
      return Client.master;
  }
}

void main() {
  const client = String.fromEnvironment("client", defaultValue: "bbet");
  runApp(MyApp(client: getClient(client)));
}