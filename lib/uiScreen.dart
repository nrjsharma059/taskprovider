import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:task/uiProvider.dart';


class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<UiProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 70,),
          Expanded(
            child: ListView(
              children: [
                Text("Notification Settings",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Email Notification",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                  Neumorphic(
                    style: NeumorphicStyle(
                      depth: -10
                    ),
                    child: Container(
                      height: 35,
                      width: 78,
                      child:  Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("On",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.red),),
                                Text("Off",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700))
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 6.5,left: data.emailSwitch),
                            child: InkWell(
                              onTap: (){
                                data.changeSwitchEmail();
                              },
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 3),
                                  child: VerticalDivider(

                                    thickness: 1.6,
                                  ),
                                ),
                                height: 23,
                                width: 32,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(

                                          color: Colors.grey.shade600,
                                          offset: Offset(2,2),
                                          blurRadius: 3,
                                          spreadRadius: 1

                                      ),
                                      BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(-2,-2),
                                        blurRadius: 3,
                                        spreadRadius: 1,
                                      )
                                    ]
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(1),
                        boxShadow: [
                          BoxShadow(

                            color: Colors.grey.shade600,
                            offset: Offset(3,3),
                            blurRadius: 5,
                            spreadRadius: 2

                          ),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-2,-2),
                            blurRadius: 5,
                            spreadRadius: 2,
                          )
                        ]
                      ),

                    ),
                  )

                  ],
                ),
                SizedBox(height: 20,),
                Visibility(
                  visible: data.emailBool,
                  child: Column(children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Oder Updates",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                        Neumorphic(
                          style: NeumorphicStyle(
                              depth: -10
                          ),
                          child: Container(
                            height: 35,
                            width: 78,
                            child:  Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("On",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.red),),
                                      Text("Off",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6.5,left: 4),
                                  child: InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: 3),
                                        child: VerticalDivider(

                                          thickness: 1.6,
                                        ),
                                      ),
                                      height: 23,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(

                                                color: Colors.grey.shade600,
                                                offset: Offset(2,2),
                                                blurRadius: 3,
                                                spreadRadius: 1

                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-2,-2),
                                              blurRadius: 3,
                                              spreadRadius: 1,
                                            )
                                          ]
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(1),
                                boxShadow: [
                                  BoxShadow(

                                      color: Colors.grey.shade600,
                                      offset: Offset(3,3),
                                      blurRadius: 5,
                                      spreadRadius: 2

                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-2,-2),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                  )
                                ]
                            ),

                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping Updates",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                        Neumorphic(
                          style: NeumorphicStyle(
                              depth: -10
                          ),
                          child: Container(
                            height: 35,
                            width: 78,
                            child:  Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("On",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.red),),
                                      Text("Off",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6.5,left: 4),
                                  child: InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: 3),
                                        child: VerticalDivider(

                                          thickness: 1.6,
                                        ),
                                      ),
                                      height: 23,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(

                                                color: Colors.grey.shade600,
                                                offset: Offset(2,2),
                                                blurRadius: 3,
                                                spreadRadius: 1

                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-2,-2),
                                              blurRadius: 3,
                                              spreadRadius: 1,
                                            )
                                          ]
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(1),
                                boxShadow: [
                                  BoxShadow(

                                      color: Colors.grey.shade600,
                                      offset: Offset(3,3),
                                      blurRadius: 5,
                                      spreadRadius: 2

                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-2,-2),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                  )
                                ]
                            ),

                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Promotions",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                        Neumorphic(
                          style: NeumorphicStyle(
                              depth: -10
                          ),
                          child: Container(
                            height: 35,
                            width: 78,
                            child:  Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("On",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.red),),
                                      Text("Off",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6.5,left: 4),
                                  child: InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: 3),
                                        child: VerticalDivider(

                                          thickness: 1.6,
                                        ),
                                      ),
                                      height: 23,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(

                                                color: Colors.grey.shade600,
                                                offset: Offset(2,2),
                                                blurRadius: 3,
                                                spreadRadius: 1

                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-2,-2),
                                              blurRadius: 3,
                                              spreadRadius: 1,
                                            )
                                          ]
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(1),
                                boxShadow: [
                                  BoxShadow(

                                      color: Colors.grey.shade600,
                                      offset: Offset(3,3),
                                      blurRadius: 5,
                                      spreadRadius: 2

                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-2,-2),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                  )
                                ]
                            ),

                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Offers",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                        Neumorphic(
                          style: NeumorphicStyle(
                              depth: -10
                          ),
                          child: Container(
                            height: 35,
                            width: 78,
                            child:  Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("On",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.red),),
                                      Text("Off",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6.5,left: 4),
                                  child: InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: 3),
                                        child: VerticalDivider(

                                          thickness: 1.6,
                                        ),
                                      ),
                                      height: 23,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(

                                                color: Colors.grey.shade600,
                                                offset: Offset(2,2),
                                                blurRadius: 3,
                                                spreadRadius: 1

                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-2,-2),
                                              blurRadius: 3,
                                              spreadRadius: 1,
                                            )
                                          ]
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(1),
                                boxShadow: [
                                  BoxShadow(

                                      color: Colors.grey.shade600,
                                      offset: Offset(3,3),
                                      blurRadius: 5,
                                      spreadRadius: 2

                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-2,-2),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                  )
                                ]
                            ),

                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("News",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                        Neumorphic(
                          style: NeumorphicStyle(
                              depth: -10
                          ),
                          child: Container(
                            height: 35,
                            width: 78,
                            child:  Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("On",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.red),),
                                      Text("Off",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6.5,left: 4),
                                  child: InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: 3),
                                        child: VerticalDivider(

                                          thickness: 1.6,
                                        ),
                                      ),
                                      height: 23,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(

                                                color: Colors.grey.shade600,
                                                offset: Offset(2,2),
                                                blurRadius: 3,
                                                spreadRadius: 1

                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-2,-2),
                                              blurRadius: 3,
                                              spreadRadius: 1,
                                            )
                                          ]
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(1),
                                boxShadow: [
                                  BoxShadow(

                                      color: Colors.grey.shade600,
                                      offset: Offset(3,3),
                                      blurRadius: 5,
                                      spreadRadius: 2

                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-2,-2),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                  )
                                ]
                            ),

                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Messages",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                        Neumorphic(
                          style: NeumorphicStyle(
                              depth: -10
                          ),
                          child: Container(
                            height: 35,
                            width: 78,
                            child:  Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("On",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.red),),
                                      Text("Off",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6.5,left: 4),
                                  child: InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: 3),
                                        child: VerticalDivider(

                                          thickness: 1.6,
                                        ),
                                      ),
                                      height: 23,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(

                                                color: Colors.grey.shade600,
                                                offset: Offset(2,2),
                                                blurRadius: 3,
                                                spreadRadius: 1

                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-2,-2),
                                              blurRadius: 3,
                                              spreadRadius: 1,
                                            )
                                          ]
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(1),
                                boxShadow: [
                                  BoxShadow(

                                      color: Colors.grey.shade600,
                                      offset: Offset(3,3),
                                      blurRadius: 5,
                                      spreadRadius: 2

                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-2,-2),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                  )
                                ]
                            ),

                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("New Arrivals",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                        Neumorphic(
                          style: NeumorphicStyle(
                              depth: -10
                          ),
                          child: Container(
                            height: 35,
                            width: 78,
                            child:  Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("On",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.red),),
                                      Text("Off",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6.5,left: 4),
                                  child: InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: 3),
                                        child: VerticalDivider(

                                          thickness: 1.6,
                                        ),
                                      ),
                                      height: 23,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(

                                                color: Colors.grey.shade600,
                                                offset: Offset(2,2),
                                                blurRadius: 3,
                                                spreadRadius: 1

                                            ),
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-2,-2),
                                              blurRadius: 3,
                                              spreadRadius: 1,
                                            )
                                          ]
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(1),
                                boxShadow: [
                                  BoxShadow(

                                      color: Colors.grey.shade600,
                                      offset: Offset(3,3),
                                      blurRadius: 5,
                                      spreadRadius: 2

                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-2,-2),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                  )
                                ]
                            ),

                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 20,),
                  ],),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Push Notifications",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                    Neumorphic(
                      style: NeumorphicStyle(
                          depth: -10
                      ),
                      child: Container(
                        height: 35,
                        width: 78,
                        child:  Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("On",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.red),),
                                  Text("Off",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700))
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6.5,left: 4),
                              child: InkWell(
                                onTap: (){

                                },
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 3),
                                    child: VerticalDivider(

                                      thickness: 1.6,
                                    ),
                                  ),
                                  height: 23,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(

                                            color: Colors.grey.shade600,
                                            offset: Offset(2,2),
                                            blurRadius: 3,
                                            spreadRadius: 1

                                        ),
                                        BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-2,-2),
                                          blurRadius: 3,
                                          spreadRadius: 1,
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(1),
                            boxShadow: [
                              BoxShadow(

                                  color: Colors.grey.shade600,
                                  offset: Offset(3,3),
                                  blurRadius: 5,
                                  spreadRadius: 2

                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2,-2),
                                blurRadius: 5,
                                spreadRadius: 2,
                              )
                            ]
                        ),

                      ),
                    )

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Notification At Night",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                    Neumorphic(
                      style: NeumorphicStyle(
                          depth: -10
                      ),
                      child: Container(
                        height: 35,
                        width: 78,
                        child:  Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("On",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.red),),
                                  Text("Off",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700))
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6.5,left: 4),
                              child: InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 3),
                                    child: VerticalDivider(

                                      thickness: 1.6,
                                    ),
                                  ),
                                  height: 23,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(

                                            color: Colors.grey.shade600,
                                            offset: Offset(2,2),
                                            blurRadius: 3,
                                            spreadRadius: 1

                                        ),
                                        BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-2,-2),
                                          blurRadius: 3,
                                          spreadRadius: 1,
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(1),
                            boxShadow: [
                              BoxShadow(

                                  color: Colors.grey.shade600,
                                  offset: Offset(3,3),
                                  blurRadius: 5,
                                  spreadRadius: 2

                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2,-2),
                                blurRadius: 5,
                                spreadRadius: 2,
                              )
                            ]
                        ),

                      ),
                    )

                  ],
                ),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
