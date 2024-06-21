import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counterprovider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<CounterProvider>(create: (_) => CounterProvider()),
          //ChangeNotifierProvider<ApiProvider>(create: (_) => ApiProvider()..fetchData()),
        ],
        child: MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
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
    final provider = Provider.of<CounterProvider>(context);
    return Scaffold(
      body: Center(
         child: Text(
           "${provider.count}"
         ),
      ),
      floatingActionButton: Column(
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              provider.increment();
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: (){
              provider.decrement();
            },
          ),
        ],
      ),
    );
  }
}
//
//
// class ProductHome extends StatelessWidget {
//   const ProductHome({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<ApiProvider>(context);
//     return Scaffold(
//       body:ListView.builder(
//
//         itemCount: provider.productlist.length,
//         itemBuilder: (BuildContext context, int index) {
//           return  ListTile(
//             title: Text('${provider.productlist[index].title}'),
//             subtitle: Text('${provider.productlist[index].brand}'),
//           );
//         },
//       )
//     );
//   }
// }
