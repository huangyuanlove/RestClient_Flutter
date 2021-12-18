import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloWorldProvider = Provider((_)=>'Hello World');
final testProvider = Provider<String>((ref) {
  return "hello test";
});

void main() {
  runApp(
    ProviderScope(child: Home())
  );
}

class Home extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);
    final String test = ref.watch(testProvider);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title :const Text("riverpod")),
        body: Center(
          child: Text(value + test),
        ),
      ),
    );
  }
}