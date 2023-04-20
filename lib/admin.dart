import 'package:flutter/material.dart';


List<String> titles = <String>[
  'Create Admin',
  'Edit Admin',
];


class AdminPage extends StatefulWidget{
  const AdminPage ({super.key});

@override
State<AdminPage> createState() => _AdminPageState();

}

class _AdminPageState extends  State<AdminPage> {
    final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context){
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    const int tabsCount = 2;
    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child:Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
                                      automaticallyImplyLeading: false,

         toolbarHeight: 20, // default is 56
          toolbarOpacity: 0.5,
        notificationPredicate: (ScrollNotification notification){
          return notification.depth == 1;
        },
        scrolledUnderElevation: 4.0,
        // shadowColor: Theme.of(context).primaryColorDark,
        //backgroundColor: Theme.of(context).indicatorColor,
        //shadowColor: Colors.red,
        backgroundColor: Colors.white,

        bottom: TabBar(
          labelStyle: TextStyle(fontSize: 20), // set the font size here

          tabs: <Widget>[
          Tab(
            text: titles[0]
            

          ),
          Tab(
              text: titles[1]
          )
          
        ]
        ),
        ),
        body: TabBarView(children: <Widget>[
          ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index){
                return  Form(
        key: _formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5),
                Container(
                  alignment: Alignment.center,
                height:40,
                width:100,
                 // width: MediaQuery.of(context).size.width / 4.5,
                  child: Text(
  'CompanyName:',
  style: TextStyle(
    fontSize: 20, // set font size
    fontWeight: FontWeight.bold, // set font weight
    fontStyle: FontStyle.normal, // set font style
    color: Colors.black, // set font color
  ),
),
                ),
                SizedBox(height: 5),
                Container(
                  height:40,
                width:100,
                  //width: MediaQuery.of(context).size.width / 4.5,
                  child: Text(
  'Name:',
  style: TextStyle(
    fontSize: 20, // set font size
    fontWeight: FontWeight.bold, // set font weight
    fontStyle: FontStyle.normal, // set font style
    color: Colors.black, // set font color
  ),
),
                ),
                SizedBox(height: 5),
                Container(
                  //width: MediaQuery.of(context).size.width / 4.5,
                  child: Text(
  'Address:',
  style: TextStyle(
    fontSize: 20, // set font size
    fontWeight: FontWeight.bold, // set font weight
    fontStyle: FontStyle.normal, // set font style
    color: Colors.black, // set font color
  ),
),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width / 4.5,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Address',
                    ),
                    // validator: (value) {
                    //   if (value.isEmpty) {
                    //     return 'Please enter your address';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width / 4.5,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'City',
                    ),
                    // validator: (value) {
                    //   if (value.isEmpty) {
                    //     return 'Please enter your city';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width / 4.5,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'State',
                    ),
                    // validator: (value) {
                    //   if (value.isEmpty) {
                    //     return 'Please enter your state';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     SizedBox(height: 5),
            //     Container(
            //       width: MediaQuery.of(context).size.width / 4.5,
            //       child: TextFormField(
            //         decoration: InputDecoration(
            //           border: OutlineInputBorder(),
            //           labelText: 'Address',
            //         ),
            //         // validator: (value) {
            //         //   if (value.isEmpty) {
            //         //     return 'Please enter your address';
            //         //   }
            //         //   return null;
            //         // },
            //       ),
            //     ),
            //     SizedBox(height: 5),
            //     Container(
            //       width: MediaQuery.of(context).size.width / 4.5,
            //       child: TextFormField(
            //         decoration: InputDecoration(
            //           border: OutlineInputBorder(),
            //           labelText: 'City',
            //         ),
            //         // validator: (value) {
            //         //   if (value.isEmpty) {
            //         //     return 'Please enter your city';
            //         //   }
            //         //   return null;
            //         // },
            //       ),
            //     ),
            //     // SizedBox(height: 5),
            //     // Container(
            //     //   width: MediaQuery.of(context).size.width / 4.5,
            //     //   child: TextFormField(
            //     //     decoration: InputDecoration(
            //     //       border: OutlineInputBorder(),
            //     //       labelText: 'State',
            //     //     ),
            //     //     // validator: (value) {
            //     //     //   if (value.isEmpty) {
            //     //     //     return 'Please enter your state';
            //     //     //   }
            //     //     //   return null;
            //     //     // },
            //     //   ),
            //     // ),
            //   ],
            // ),
          //  Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       ElevatedButton(
          //         onPressed:() {

    
                    
                    
          //         },
          //         child: Text('Submit'),
          //       ),
                
          //     ],
          //   ),
          ],
          

        ),
        
      );
  //return Container(
  //           width: 300,
  //           height: 400,
  //           padding: EdgeInsets.all(20),
            
        
  //                      child: Column(
  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

  //                        children: [
  //                         SizedBox(height: 5,width: 5),
                           
  //                            Container(
  //                             width: 300,
  //                                   height: 60,
  //                                     alignment: Alignment.centerLeft,
                                      
  //                              child: TextField(
  //                                   // controller: _BusinessNameController,
  //                                   decoration: InputDecoration(
  //                                   labelText: 'UserID',
  //                                   hintText: '',
  //                                   border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
  //                                   keyboardType: TextInputType.text,
  //                                   textCapitalization: TextCapitalization.words,
  //                                   maxLength: 30,
  //                                   onChanged: (value) {
  //                                   // Do something when the text changes
  //                                   },
  //                                   onSubmitted: (value) {
  //                                   // Do something when the user submits the text field
  //                                   },
  //                                 ),
  //                            ),
  //                            Container(
  //                             width: 300,
  //                                   height: 60,
  //                                     alignment: Alignment.centerLeft,
                                      
  //                              child: TextField(
  //                                   // controller: _BusinessNameController,
  //                                   decoration: InputDecoration(
  //                                   labelText: 'Password',
  //                                   hintText: '',
  //                                   border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
  //                                   keyboardType: TextInputType.text,
  //                                   textCapitalization: TextCapitalization.words,
  //                                   maxLength: 30,
  //                                   onChanged: (value) {
  //                                   // Do something when the text changes
  //                                   },
  //                                   onSubmitted: (value) {
  //                                   // Do something when the user submits the text field
  //                                   },
  //                                 ),
  //                            ),
  //                            Container(
  //                             width: 300,
  //                                   height: 60,
  //                                     alignment: Alignment.centerLeft,
                                      
  //                              child: TextField(
  //                                   // controller: _BusinessNameController,
  //                                   decoration: InputDecoration(
  //                                   labelText: 'Type',
  //                                   hintText: '',
  //                                   border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
  //                                   keyboardType: TextInputType.text,
  //                                   textCapitalization: TextCapitalization.words,
  //                                   maxLength: 30,
  //                                   onChanged: (value) {
  //                                   // Do something when the text changes
  //                                   },
  //                                   onSubmitted: (value) {
  //                                   // Do something when the user submits the text field
  //                                   },
  //                                 ),
  //                            ),
  //                            Container(
  //                             width: 300,
  //                                   height: 60,
  //                                     alignment: Alignment.centerLeft,
                                      
  //                              child: TextField(
  //                                   // controller: _BusinessNameController,
  //                                   decoration: InputDecoration(
  //                                   labelText: 'Name',
  //                                   hintText: '',
  //                                   border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
  //                                   keyboardType: TextInputType.text,
  //                                   textCapitalization: TextCapitalization.words,
  //                                   maxLength: 30,
  //                                   onChanged: (value) {
  //                                   // Do something when the text changes
  //                                   },
  //                                   onSubmitted: (value) {
  //                                   // Do something when the user submits the text field
  //                                   },
  //                                 ),
  //                            ),
  //                            Container(
  //                             width: 300,
  //                                   height: 60,
  //                                     alignment: Alignment.centerLeft,
                                      
  //                              child: TextField(
  //                                   // controller: _BusinessNameController,
  //                                   decoration: InputDecoration(
  //                                   labelText: 'Region',
  //                                   hintText: '',
  //                                   border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
  //                                   keyboardType: TextInputType.text,
  //                                   textCapitalization: TextCapitalization.words,
  //                                   maxLength: 30,
  //                                   onChanged: (value) {
  //                                   // Do something when the text changes
  //                                   },
  //                                   onSubmitted: (value) {
  //                                   // Do something when the user submits the text field
  //                                   },
  //                                 ),
  //                            ),
  //                                                                      ElevatedButton(onPressed:(){
                                                                        
  //                                                                      }, child: Text('Submit'))

  //                        ]
  //                      ),
  //             );
            },
          ),
                      ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Container(
            width: 300,
            height: 400,
            padding: EdgeInsets.all(20),
            
        
                       child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                         children: [
                          SizedBox(height: 5,width: 5),
                           
                             Container(
                              width: 300,
                                    height: 60,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'UserID',
                                    hintText: '',
                                    border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                    keyboardType: TextInputType.text,
                                    textCapitalization: TextCapitalization.words,
                                    maxLength: 30,
                                    onChanged: (value) {
                                    // Do something when the text changes
                                    },
                                    onSubmitted: (value) {
                                    // Do something when the user submits the text field
                                    },
                                  ),
                             ),
                             Container(
                              width: 300,
                                    height: 60,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: '',
                                    border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                    keyboardType: TextInputType.text,
                                    textCapitalization: TextCapitalization.words,
                                    maxLength: 30,
                                    onChanged: (value) {
                                    // Do something when the text changes
                                    },
                                    onSubmitted: (value) {
                                    // Do something when the user submits the text field
                                    },
                                  ),
                             ),
                             Container(
                              width: 300,
                                    height: 60,
                                      alignment: Alignment.centerLeft,
                                      
                               child: Row(
                                 children: [
                                  Expanded(child:
                                   TextField(
                                        // controller: _BusinessNameController,
                                        decoration: InputDecoration(
                                        labelText: 'Type',
                                        hintText: '',
                                        border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                        keyboardType: TextInputType.text,
                                        textCapitalization: TextCapitalization.words,
                                        maxLength: 30,
                                                    readOnly: true,

                                        onChanged: (value) {
                                        // Do something when the text changes
                                        },
                                        onSubmitted: (value) {
                                        // Do something when the user submits the text field
                                        },
                                      ),
                                  ),
                                      IconButton(onPressed: (){

                                      }, icon: Icon(Icons.edit)),
          
                                
                                 ],
                               ),
                             ),
                             Container(
                              width: 300,
                                    height: 60,
                                      alignment: Alignment.centerLeft,
                                      
                               child: Row(
                                 children: [
                                  Expanded(child: 
                                   TextField(
                                        // controller: _BusinessNameController,
                                        decoration: InputDecoration(
                                        labelText: 'Name',
                                        hintText: '',
                                        border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                        keyboardType: TextInputType.text,
                                        textCapitalization: TextCapitalization.words,
                                        maxLength: 30,
                                        onChanged: (value) {
                                        // Do something when the text changes
                                        },
                                        onSubmitted: (value) {
                                        // Do something when the user submits the text field
                                        },
                                      ),
                                  ),
                                  IconButton(onPressed: (){

                                      }, icon: Icon(Icons.edit)),
                                 ],
                               ),
                             ),
                             Container(
                              width: 300,
                                    height: 60,
                                      alignment: Alignment.centerLeft,
                                      
                               child: Row(
                                 children: [
                                  Expanded(child:
                                   TextField(
                                        // controller: _BusinessNameController,
                                        decoration: InputDecoration(
                                        labelText: 'region',
                                        hintText: '',
                                        border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                        keyboardType: TextInputType.text,
                                        textCapitalization: TextCapitalization.words,
                                        maxLength: 30,
                                        onChanged: (value) {
                                        // Do something when the text changes
                                        },
                                        onSubmitted: (value) {
                                        // Do something when the user submits the text field
                                        },
                                      ),
                                  ),
                                  IconButton(onPressed: (){

                                      }, icon: Icon(Icons.edit)),
                                 ],
                               ),
                             ),
                                                                       ElevatedButton(onPressed:(){
                                                                        
                                                                       }, child: Text('Submit'))

                         ]
                       ),
              );
                // ListTile(
                //   tileColor: index.isOdd ? oddItemColor : evenItemColor,
                //   title: Text('${titles[1]} $index'),
                // );
              },
            ),
        ],)
      ),
    );
    


  }
}