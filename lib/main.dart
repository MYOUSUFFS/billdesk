// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'billdesk_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter BillDesk demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('BillDesk payment intergration'),
            Text('BillDesk', style: Theme.of(context).textTheme.headlineMedium),
            Container(
              child: Lottie.asset("json/json.json", repeat: false),
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       runFlutterApp();
            //     },
            //     child: const Text("Run Terminal")),
            // const SizedBox(height: 10),
            // ElevatedButton(
            //     onPressed: () {
            //       openFolder();
            //     },
            //     child: const Text("Opened Terminal"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async => await MyBillDesk().lanchWebView(context),
        tooltip: 'Increment',
        label: const Text(
          "Pay",
          style: TextStyle(fontSize: 18),
        ),
        icon: const Icon(Icons.send),
      ),
    );
  }
}

// void runFlutterApp() {
//   // Replace 'path/to/flutter_app_directory' with the actual path to your Flutter app directory.
//   String flutterAppDirectory = '/Users/MYSoft/ecfile/ecfile_test/billdesk/';

//   Process.run(
//     'open',
//     ['-a', 'Terminal', flutterAppDirectory],
//   );
// }

// openFolder() {
//   String flutterAppDirectory = '/Users/MYSoft/ecfile/ecfile_test/billdesk/';
//   String appleScriptCommand = '''
//       tell application "Terminal"
//           activate
//           do script "cd $flutterAppDirectory; code ." in front window
//       end tell
//     ''';
//   Process.run('osascript', ['-e', appleScriptCommand]);
// }

// void runFlutterAppOpened() {
//   // Replace 'path/to/flutter_app_directory' with the actual path to your Flutter app directory.
//   String flutterAppDirectory = '/Users/MYSoft/ecfile/ecfile_test/billdesk/';

//   // Replace 'flutter run' with the command you use to run your Flutter app.
//   String flutterCommand = 'flutter run';

//   // Construct the AppleScript command to execute the terminal command.
//   String appleScriptCommand = '''
//       tell application "Terminal"
//           do script "cd $flutterAppDirectory; $flutterCommand"
//       end tell
//     ''';

//   // Execute the AppleScript command.
//   Process.run('osascript', ['-e', appleScriptCommand]);
// }

// void runFlutterAppOpened1() {
//   // Replace 'path/to/flutter_app_directory' with the actual path to your Flutter app directory.
//   String flutterAppDirectory = 'path/to/flutter_app_directory';

//   // Replace 'flutter run' with the command you use to run your Flutter app.
//   String flutterCommand = 'flutter run';

//   // Construct the AppleScript command to execute the terminal command.
//   String appleScriptCommand = '''
//       tell application "Terminal"
//           activate
//           do script "cd $flutterAppDirectory; $flutterCommand" in front window
//       end tell
//     ''';

//   // Execute the AppleScript command.
//   Process.run('osascript', ['-e', appleScriptCommand]);
// }
