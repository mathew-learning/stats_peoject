import 'package:flutter/material.dart';


List<String> titles = <String>[
  'Create Client',
  'Edit Client',
];


class CustomerPage extends StatefulWidget{


  @override
  State<CustomerPage> createState() => _CustomerState();
}

class _CustomerState extends State<CustomerPage>{
  

  

  @override
  Widget build(BuildContext context){
        const int tabsCount = 2;
        List<String> items = ['Select Business Type','Incoporated','OBNL'];
        String? selectedItem = 'Select Business Type';
                List<String> status = ['Select Business Type','Incoporated','OBNL'];
        String? selectedStatus = 'Select Business Type';

    return DefaultTabController(
            initialIndex: 1,
      length: tabsCount,
    
    child: Scaffold(appBar: AppBar(
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
      body: TabBarView(
        children: <Widget>[
          
          ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                          width: 300,
                          height: 600,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                  //color: Theme.of(context).hintColor,
                  color:Colors.transparent,
                  border: Border.all(
                    width: 5,
                    color:Theme.of(context).primaryColor ,
                  ),
                  // Make rounded corners
                  borderRadius: BorderRadius.circular(20),
                  
                  boxShadow: [
                    // BoxShadow(
                    //   color: Colors.white,
                    //   spreadRadius: 2,
                    //   blurRadius: 5,
                    // ),
                    BoxShadow(
                  color: Colors.white.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                 //first paramerter of offset is left-right
                 //second parameter is top to down
              )
                  ],
                ),
                          
                      
                         child:Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                Expanded(
                  child: Container(
                    width: 200,
                      
                    margin: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text("Business Name"),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Business Name',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        // Text(""),
                        
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Business Number',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                //         TextFormField(
                //           decoration: InputDecoration(labelText: 'Type Of Business',
                //           border: OutlineInputBorder(),
                //           labelStyle: TextStyle(fontSize: 18),
                // hintStyle: TextStyle(fontSize: 16),
                // // Set input text size
                // isDense: true,
                // contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                //           ),
                          
                //           // validator: (value) {
                //           //   if (value.isEmpty) {
                //           //     return 'Please enter Field 1';
                //           //   }
                //           //   return null;
                //           // },
                //         ),
                
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(12),
                        //borderSide: BorderSide(width: 3)
                        //borderRadius: 
                        ),
                        labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                    ),
                    value:selectedItem,
                    items: items.map((item) => DropdownMenuItem(
                      value:item,
                      child:Text(item, style: TextStyle(fontSize: 18))
                    )
                  ).toList(),
                  onChanged: (item) => setState(() => selectedItem),
                  ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Product Description',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Business Value',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Services Offered', ///Dropdown
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Whom to Reffered',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        ElevatedButton.icon(onPressed: (){

                        }, icon: Icon(Icons.picture_as_pdf), label:Text('Upload Business Plan')),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Loans and Grands',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Next Appointment',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Remarks and Comments',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          ),
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 3';
                          //   }
                          //   return null;
                          ///},
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    margin: EdgeInsets.all(20),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Name',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          ),
                          // validator: (value) {
                          // //   if (value.isEmpty) {
                          // //     return 'Please enter Field 4';
                          // //   }
                          // //   return null;
                          // // },
                        ),
                        DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(12),
                        //borderSide: BorderSide(width: 3)
                        //borderRadius: 
                        ),
                        labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                    ),
                    value:selectedItem,
                    items: status.map((item) => DropdownMenuItem(
                      value:item,
                      child:Text(item, style: TextStyle(fontSize: 18))
                    )
                  ).toList(),
                  onChanged: (item) => setState(() => selectedStatus),
                  ),
                //         TextFormField(
                //           decoration: InputDecoration(labelText: 'Status In Canada (DropDown)',
                //           border: OutlineInputBorder(),
                //           labelStyle: TextStyle(fontSize: 18),
                // hintStyle: TextStyle(fontSize: 16),
                // // Set input text size
                // isDense: true,
                // contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                //           ),
                          
                //           // validator: (value) {
                //           //   if (value.isEmpty) {
                //           //     return 'Please enter Field 1';
                //           //   }
                //           //   return null;
                //           // },
                //         ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Work',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Phone',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Country Of Origin',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Language',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Reason of the Metting',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Date',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Meeting Mode',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Meeting Place',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 5';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Payment Details',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          ),
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 6';
                          //   }
                          //   return null;
                          // },
                        ),
                      ],
                    ),
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
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                          width: 300,
                          height: 600,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                  //color: Theme.of(context).hintColor,
                  color:Colors.transparent,
                  border: Border.all(
                    width: 5,
                    color:Theme.of(context).primaryColor ,
                  ),
                  // Make rounded corners
                  borderRadius: BorderRadius.circular(20),
                  
                  boxShadow: [
                    // BoxShadow(
                    //   color: Colors.white,
                    //   spreadRadius: 2,
                    //   blurRadius: 5,
                    // ),
                    BoxShadow(
                  color: Colors.white.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                 //first paramerter of offset is left-right
                 //second parameter is top to down
              )
                  ],
                ),
                          
                      
                         child:Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                Expanded(
                  child: Container(
                    width: 200,
                      
                    margin: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text("Business Name"),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Business Name',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                                      }, icon: Icon(Icons.edit)),
                          ],
                        ),
                        // Text(""),
                        
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Business Number',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                                      }, icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Type Of Business',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                                      }, icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Product Description',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                                      }, icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child:TextFormField(
                              decoration: InputDecoration(labelText: 'Business Value',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                                      }, icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Services Offered', ///Dropdown
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                            },icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Whom to Reffered',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                                      }, icon: Icon(Icons.edit)),
                          ],
                        
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Put Business Plan (upload pdf)',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              ),
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 2';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                                      }, icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Loans and Grands',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                            },icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Next Appointment',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                                      }, icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Remarks and Comments',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              ),
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 3';
                              //   }
                              //   return null;
                              ///},
                            ),
                            ),
                            IconButton(onPressed: (){

                            },icon: Icon(Icons.edit)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    margin: EdgeInsets.all(20),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Name', ///Dropdown
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                            },icon: Icon(Icons.edit)),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Status In Canada (DropDown)',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Work', ///Dropdown
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                            },icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Phone', ///Dropdown
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                            },icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Email', ///Dropdown
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                            },icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Country of Origin', ///Dropdown
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                            },icon: Icon(Icons.edit)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: TextFormField(
                              decoration: InputDecoration(labelText: 'Language', ///Dropdown
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                              
                              
                              
                              
                              ),
                              
                              // validator: (value) {
                              //   if (value.isEmpty) {
                              //     return 'Please enter Field 1';
                              //   }
                              //   return null;
                              // },
                            ),
                            ),
                            IconButton(onPressed: (){

                            },icon: Icon(Icons.edit)),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Reason of the Metting',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Date',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Meeting Mode',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 1';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Meeting Place',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          
                          
                          ),
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 5';
                          //   }
                          //   return null;
                          // },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Payment Details',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 18),
                hintStyle: TextStyle(fontSize: 16),
                // Set input text size
                isDense: true,
                contentPadding: EdgeInsets.all(10),
                          
                          
                          ),
                          // validator: (value) {
                          //   if (value.isEmpty) {
                          //     return 'Please enter Field 6';
                          //   }
                          //   return null;
                          // },
                        ),
                      ],
                    ),
                  ),
                ),
                          ],
                        ),
                    
              
                  ),
                  
              );
            }
    ),
        ]
      ),
          ),
    );
  }
}