import 'package:flutter/material.dart';


List<String> titles = <String>[
  'Create Panel',
  'Edit Panel',
];


class PanelPage extends StatefulWidget{
  const PanelPage ({super.key});

@override
State<PanelPage> createState() => _PanelPageState();

}

class _PanelPageState extends  State<PanelPage> {


  @override
  Widget build(BuildContext context){
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    const int tabsCount = 2;
    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child:Scaffold(appBar: AppBar(
          toolbarHeight: 20, // default is 56
  toolbarOpacity: 0.5,
        notificationPredicate: (ScrollNotification notification){
          return notification.depth == 1;
        },
        scrolledUnderElevation: 4.0,
        // shadowColor: Theme.of(context).primaryColorDark,
        backgroundColor: Theme.of(context).indicatorColor,

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
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'Type',
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
                             Container(
                              width: 300,
                                    height: 60,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'Region',
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
                                                                       ElevatedButton(onPressed:(){
                                                                        
                                                                       }, child: Text('Submit'))

                         ]
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
                                      
                               child: Row(
                                 children: [
                                  Text(
      'UserID:',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    SizedBox(width: 40),
                                   Expanded(child:TextField(
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
                                 ],
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