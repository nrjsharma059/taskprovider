import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/uiProvider.dart';

import 'logicprovider.dart';
import 'uiScreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider<Logic>(create: (_) => Logic()),
      ChangeNotifierProvider<UiProvider>(create: (_) => UiProvider())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 @override
  void initState() {
    super.initState();
    final data = Provider.of<Logic>(context, listen: false);
    data.fetchData(context);
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Logic>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(fontSize: 13),),
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen()));
            },
            child: Padding(
              padding: EdgeInsets.only(top: 22,right: 10),
              child: Text("UI SCREEN"),
            ),
          )
        ],
      ),
      body: Column(children: [
        data.listData.length>0?
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  onTap: (){
                 data.modalBottomSheetMenu(context,data.listData[index].category,data.listData[index].rating.rate);
                    print("Devvvv");
                  },
                  child: Card(
                    child: Column(children: [
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                image: DecorationImage(
                                  image: NetworkImage(data.listData[index].image),
                                  fit: BoxFit.fill,
                                )),


                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(children: [
                            Flexible(
                                child: Text(data.listData[index].title,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),)),
                            SizedBox(width: 20,),

                            Text(data.listData[index].price.toString(),style: TextStyle(fontSize:10 ),)
                          ],),
                        ),
                      )
                    ],)

                  ),
                ),
              );
            },
            itemCount: 20,
          )
        ): Center(child: Container(
            padding: EdgeInsets.only(top: 200),
            child: Text("Loading......",)))


      ],)// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
