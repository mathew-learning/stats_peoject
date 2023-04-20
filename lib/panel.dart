import 'package:flutter/material.dart';


List<String> titles = <String>[
  'Create Panel',
  'Edit Panel',
];
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];


class PanelPage extends StatefulWidget{
  const PanelPage ({super.key});

@override
State<PanelPage> createState() => _PanelPageState();

}

class _PanelPageState extends  State<PanelPage> {
    String dropdownValue = list.first;



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
                                    automaticallyImplyLeading: false,

          toolbarHeight: 20, // default is 56
  toolbarOpacity: 0.5,
        notificationPredicate: (ScrollNotification notification){
          return notification.depth == 1;
        },
        scrolledUnderElevation: 4.0,
        // shadowColor: Theme.of(context).primaryColorDark,
        backgroundColor: Theme.of(context).indicatorColor,

        bottom: TabBar(
                    labelStyle: TextStyle(fontSize: 20), // set the font size here

          tabs: <Widget>[
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
            height: 700,
            padding: EdgeInsets.all(20),
            
        
                       child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                         children: [
                          SizedBox(height: 5,width: 5),
                           
                             Container(
                              width: 300,
                                    height: 40,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'Company Name',
                                    hintText: '',
                                    border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                    keyboardType: TextInputType.text,
                                    textCapitalization: TextCapitalization.words,
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
                                    height: 40,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'Name',
                                    hintText: '',
                                    border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                    keyboardType: TextInputType.text,
                                    textCapitalization: TextCapitalization.words,
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
                                    height: 40,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'Address',
                                    hintText: '',
                                    border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                    keyboardType: TextInputType.text,
                                    textCapitalization: TextCapitalization.words,
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
                                    height: 40,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'City',
                                    hintText: '',
                                    border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                    keyboardType: TextInputType.text,
                                    textCapitalization: TextCapitalization.words,
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
                                    height: 40,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'PostalCode',
                                    hintText: '',
                                    border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                    keyboardType: TextInputType.text,
                                    textCapitalization: TextCapitalization.words,
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
                                    height: 40,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'WorkEmail',
                                    hintText: '',
                                    border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                    keyboardType: TextInputType.text,
                                    textCapitalization: TextCapitalization.words,
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
                                    height: 40,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: '',
                                    border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                    keyboardType: TextInputType.text,
                                    textCapitalization: TextCapitalization.words,
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
                                    height: 40,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'UserType',
                                    hintText: '',
                                    border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                    keyboardType: TextInputType.text,
                                    textCapitalization: TextCapitalization.words,
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
                                    height: 40,
                                      alignment: Alignment.centerLeft,
                                      
                               child: TextField(
                                    // controller: _BusinessNameController,
                                    decoration: InputDecoration(
                                    labelText: 'AccessStatus',
                                    hintText: '',
                                    border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                    keyboardType: TextInputType.text,
                                    textCapitalization: TextCapitalization.words,
                                    onChanged: (value) {
                                    // Do something when the text changes
                                    },
                                    onSubmitted: (value) {
                                    // Do something when the user submits the text field
                                    },
                                  ),
                             ),
    //                          DropdownButton<String>(
    //   value: dropdownValue,
    //   icon: const Icon(Icons.arrow_downward),
    //   elevation: 16,
    //   style: const TextStyle(color: Colors.deepPurple),
    //   underline: Container(
    //     height: 2,
    //     color: Colors.deepPurpleAccent,
    //   ),
    //   onChanged: (String? value) {
    //     // This is called when the user selects an item.
    //     setState(() {
    //       dropdownValue = value!;
    //     });
    //   },
    //   items: list.map<DropdownMenuItem<String>>((String value) {
    //     return DropdownMenuItem<String>(
    //       value: value,
    //       child: Text(value),
    //     );
    //   }).toList(),
    // ),
            
                             
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