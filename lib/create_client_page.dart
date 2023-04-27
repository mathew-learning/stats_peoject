import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'login.dart';
import 'package:date_field/date_field.dart';
import 'database/data_base.dart';
import 'global/controllers.dart';



class CreateClientPage extends StatefulWidget{


  @override
  State<CreateClientPage> createState() => _CreateClientPageState();
}


class _CreateClientPageState extends State<CreateClientPage>{
    double? scrolledUnderElevation = 0.4;
    DateTime? selectedData;

    List<String> items = ['Select Business','Incoporated','OBNL'];
        String? selectedItem = 'Select Business';


            var newValue = '';
            bool _validateName = false;








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 249, 234),
//       appBar: AppBar(
//                             automaticallyImplyLeading: true,
//                             title: const Text(
//   'STATS',
//   style: TextStyle(
//     fontSize: 30, // set font size
//     fontWeight: FontWeight.bold, // set font weight
//     fontStyle: FontStyle.normal, // set font style
//     color: Colors.white, // set font color
//   ),
// ),
// actions: <Widget>[
//           ElevatedButton(onPressed: (){
// Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => LoginPage()),
//             );
//           }, child: Text(
//   'Logout',
//   style: TextStyle(
//     fontSize: 15, // set font size
//     fontWeight: FontWeight.bold, // set font weight
//     fontStyle: FontStyle.normal, // set font style
//     color: Colors.green, // set font color
//   ),
// ),)
//         ], // disable the "back" button

//             toolbarHeight: 80, // default is 56
//   toolbarOpacity: 0.5,
//             scrolledUnderElevation: scrolledUnderElevation,
//             //shadowColor: Theme.of(context).primaryColorDark,
//             backgroundColor: Theme.of(context).primaryColor,
//           ),
            // bottomNavigationBar: BottomAppBar(
            // color: Color.fromARGB(255, 163, 226, 163),
            //  height: 20,

            // //child: bottomAppBarContents,
            // ),
            // floatingActionButton: const FloatingActionButton(
              
            //   onPressed: null,child: Text('Submit')),
        floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          insertBusinessdetails(business_name.text, newValue,businessvalue.text, businessdiscription.text,name.text, status.text, phone.text, email.text, cco.text, lang.text,rom.text, mm.text, so.text, mp.text);

          // Add your onPressed code here!
        },
        label: const Text(
  'Submit',
  style: TextStyle(
    fontSize: 20, // set font size
    fontWeight: FontWeight.bold, // set font weight
    fontStyle: FontStyle.normal, // set font style
    color: Colors.white, // set font color
  ),
),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      
          
                    
          body: SafeArea(child: 
                    ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index){
          return Center(
            child:  Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
            
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                        'Business Details:',
            
                        style: TextStyle(
                        fontSize: 25, // set font size
                        fontWeight: FontWeight.bold, // set font weight
                        fontStyle: FontStyle.normal, // set font style
                        color: Colors.black, // set font color
                  ),
                  ),
                  Container(
                    width: 1300,
                                  height: 250,
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                          //color: Theme.of(context).hintColor,
                          color:Colors.transparent,
                          border: Border.all(
                            width: 5,
                            //color:Theme.of(context).primaryColor ,
                            color:Colors.white,
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
                      
                    child: Column(
                      children: [
                        Row(children: [
                                SizedBox(width: 10,height: 10),
            
                          Expanded(child:
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Business Name:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),
              ),
                               TextField(
                                              controller: business_name,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                              // Do something when the user submits the text field
                                              business_name.clear();
                                              },
                                            ),
                             ],
                           ),),
                           SizedBox(width: 10,height: 10),
                           Expanded(child:
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Business Registration Number:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: businessreg_num,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                              // Do something when the user submits the text field
                                              businessreg_num.clear();
                                              },
                                            ),
                             ],
                           ),),
                                                SizedBox(width: 10,height: 10),
            
                           Expanded(child: 
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [
                              Text('Type Of Business:',
                              style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                              //  TextField(
                              //                 //controller: usernameValue,
                              //                 decoration: InputDecoration(
                              //                 //labelText: 'Username',
                              //                 hintText: '',
                              //                 border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                              //                 keyboardType: TextInputType.text,
                              //                 textCapitalization: TextCapitalization.words,
                              //                 onChanged: (value) {
                              //                 // Do something when the text changes
                              //                 },
                              //                 onSubmitted: (value) {
                              //                 // Do something when the user submits the text field
                              //                 },
                              //               ),
            
                              DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(12),
                          //borderSide: BorderSide(width: 3)
                          //borderRadius: 
                          ),
                          labelStyle: TextStyle(fontSize: 15),
                  hintStyle: TextStyle(fontSize: 15),
                  // Set input text size
                  isDense: true,
                  contentPadding: EdgeInsets.all(20),
                      ),
                      value:selectedItem,
                      items: items.map((item) => DropdownMenuItem(
                        value:item,
                        child:Text(item, style: TextStyle(fontSize: 20))
                      )
                    ).toList(),
                    onChanged: (newValue) => setState(() => selectedItem = newValue),
),
                             ],
                           ),
                           )
                  
                  
                        ],
                        ),
                        Column(children: [
                          Row(children: [
                                SizedBox(width: 10,height: 10),
            
                          Expanded(child:
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Business Discription:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: businessdiscription,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              prefixIcon: Text(
                                                '*',
                                                style: TextStyle(
                                                color:Colors.red,
                                                fontWeight:FontWeight.bold
                                              )),
                                              errorText:_validateName? 'Please enter the value' : null,
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.red,
                                                width:1.0),
                                                borderRadius: BorderRadius.circular(12.0),
                                              ),
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                                setState(() {
                                                  _validateName = value.isEmpty;
                                                });
                                              },
                                              onSubmitted: (value) {
                                              // Do something when the user submits the text field
                                              businessdiscription.clear();
                                              },
                                            ),
                             ],
                           ),),
                           SizedBox(width: 10,height: 10),
                           Expanded(child:
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Business Value:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: businessvalue,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                              // Do something when the user submits the text field
                                              businessvalue.clear();
                                              },
                                            ),
                             ],
                           ),),
                                                SizedBox(width: 10,height: 10),
            
                           Expanded(child: 
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [
                              Text('Business Plan:',
                              style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               ElevatedButton.icon(onPressed: (){
            
                          }, icon: Icon(Icons.picture_as_pdf), label:Text('Upload Business Plan')),
                             ],
                           ),
                           )
                  
                  
                        ],
                        ),
            
                        ],)
                      ],
                    ),
                  ),
                  const Text('Personal Details:',
                          style: TextStyle(
                          fontSize: 25, // set font size
                          fontWeight: FontWeight.bold, // set font weight
                          fontStyle: FontStyle.normal, // set font style
                          color: Colors.black, // set font color
                          ),
                          ),
                  Container(
                    width: 1300,
                    height: 250,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                          //color: Theme.of(context).hintColor,
                          color:Colors.transparent,
                          border: Border.all(
                            width: 5,
                            //color:Theme.of(context).primaryColor ,
                            color : Colors.white,
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
                      
                    child: Column(
                      children: [
                        Row(children: [
                                SizedBox(width: 10,height: 10),
            
                          Expanded(child:
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Name:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: name,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                              // Do something when the user submits the text field
                                              name.clear();
                                              },
                                            ),
                             ],
                           ),),
                           SizedBox(width: 10,height: 10),
                           Expanded(child:
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Status in Canada:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: status,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                              // Do something when the user submits the text field
                                              status.clear();
                                              },
                                            ),
                             ],
                           ),),
                                                SizedBox(width: 10,height: 10),
            
                           Expanded(child: 
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [
                              Text('Phone:',
                              style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: phone,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                                phone.clear();
                                              // Do something when the user submits the text field
                                              },
                                            ),
                             ],
                           ),
                           )
                  
                  
                        ],
                        ),
                        Column(children: [
                          Row(children: [
                                SizedBox(width: 10,height: 10),
            
                          Expanded(child:
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Email:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: email,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                                email.clear();
                                              // Do something when the user submits the text field
                                              },
                                            ),
                             ],
                           ),),
                           SizedBox(width: 10,height: 10),
                           Expanded(child:
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Country Of Origin:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: coo,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                                coo.clear();
                                              // Do something when the user submits the text field
                                              },
                                            ),
                             ],
                           ),),
                                                SizedBox(width: 10,height: 10),
            
                           Expanded(child: 
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [
                              Text('Language:',
                              style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: lang,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                                lang.clear();
                                              // Do something when the user submits the text field
                                              },
                                            ),
                             ],
                           ),
                           )
                  
                  
                        ],
                        ),
            
                        ],)
                      ],
                    ),
                  ),
                  const Text(
              'Meeting Details:',
            
              style: TextStyle(
                fontSize: 25, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),
            ),
                  Container(
                    width: 1300,
                                  height: 250,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                          //color: Theme.of(context).hintColor,
                          color:Colors.transparent,
                          border: Border.all(
                            width: 5,
                            //color:Theme.of(context).primaryColor ,
                            color:Colors.white,
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
                      
                    child: Column(
                      children: [
                        Row(children: [
                                SizedBox(width: 10,height: 10),
            
                          Expanded(child:
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Reason of the Meeting:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: rom,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                                rom.clear();
                                              // Do something when the user submits the text field
                                              },
                                            ),
                             ],
                           ),),
                           SizedBox(width: 10,height: 10),
                           Expanded(child:
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Meeting Mode:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: mm,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                              // Do something when the user submits the text field
                                              mm.clear();
                                              },
                                            ),
                             ],
                           ),),
                                                SizedBox(width: 10,height: 10),
            
                           Expanded(child: 
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [
                              Text('Meeting Place:',
                              style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: mp,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                                mp.clear();
                                              // Do something when the user submits the text field
                                              },
                                            ),
                             ],
                           ),
                           )
                  
                  
                        ],
                        ),
            
                        Column(children: [
                          Row(children: [
                                SizedBox(width: 10,height: 10),
            
                          Expanded(child:
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Services Offered:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: so,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                                so.clear();
                                              // Do something when the user submits the text field
                                              },
                                            ),
                             ],
                           ),),
                           SizedBox(width: 10,height: 10),
            
                           Expanded(child:
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [Text('Refered to whom:',
                             style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: rtw,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                              // Do something when the user submits the text field
                                              rtw.clear();
                                              },
                                            ),
                             ],
                           ),),
                                                SizedBox(width: 10,height: 10),
            
                           Expanded(child: 
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                             children: [
                              Text('Next Appointment:',
                              style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                               TextField(
                                              controller: na,
                                              decoration: InputDecoration(
                                              //labelText: 'Username',
                                              hintText: '',
                                              border: OutlineInputBorder(      borderSide: BorderSide(color: Colors.red),),),
                                              keyboardType: TextInputType.text,
                                              textCapitalization: TextCapitalization.words,
                                              onChanged: (value) {
                                              // Do something when the text changes
                                              },
                                              onSubmitted: (value) {
                                              // Do something when the user submits the text field
                                              na.clear();
                                              },
                                            ),
                             ],
                           ),
                           )
                  
                  
                        ],
                        ),
            
                        ],
                        ),
                        Column(children: [
                          Row(children: [
                            Column(children: [
                              Text('Date',
                              style: TextStyle(
                fontSize: 15, // set font size
                fontWeight: FontWeight.bold, // set font weight
                fontStyle: FontStyle.normal, // set font style
                color: Colors.black, // set font color
              ),),
                              
                            ],
                            )
                          ],)
            
                        ],)
                      ],
                    ),
                  ),
                  
                  
                // BottomAppBar(
                //   shape: CircularNotchedRectangle(),
                //   color: Colors.blue,
                //   child: IconTheme(
                //     data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
                //     child: Row(
                //       children: <Widget>[
                //         IconButton(
                //           tooltip: 'Open navigation menu',
                //           icon: const Icon(Icons.menu),
                //           onPressed: () {},
                //         ),
              
                //       ],
                //     ),
                //   ),
                
                // ),
            
                ],
              ),
            ),
            
              
          );
              }
                    
          ),

    ),
    );



    
    // TODO: implement build
    //throw UnimplementedError();
  }

}




