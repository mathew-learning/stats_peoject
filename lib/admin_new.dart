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

        bottom: TabBar(tabs: <Widget>[
          Tab(
            text: titles[0]

          ),
          Tab(
              text: titles[1]
          )
        ]),
        ),
        body: TabBarView(children: <Widget>[
          ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index){
              return SizedBox
              (width: 600,
              child:Container(
  width: 400,
  height: 500,
  alignment: Alignment.center,
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.transparent,
    border: Border.all(
      width: 5,
      color: Theme.of(context).secondaryHeaderColor,
    ),
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Color.fromARGB(255, 235, 237, 235).withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 2),
      ),
    ],
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              hintText: '',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
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
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: '',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
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
        ],
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: '',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
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
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: '',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
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
            ElevatedButton(
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    ],
  ),
),
              );

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