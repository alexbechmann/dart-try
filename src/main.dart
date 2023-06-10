/*--------------------------------------------------------------------------------------------------------------
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
 *-------------------------------------------------------------------------------------------------------------*/

import 'dart:io';
import 'package:recharge/recharge.dart';
import './handle.dart';

// Build recharge. Not using callback because after
// code change functions will be replaced. Execution will
// happen when next time request hits the server.
var recharge = Recharge(path: ".");

void main() async {
  // Initialize recharge
  await recharge.init();

  // Simple HTTP server
  var server = await HttpServer.bind("localhost", 8080);
  await for (var request in server) {
    handle(request, request.response);
  }
}
