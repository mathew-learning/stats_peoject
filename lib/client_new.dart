import 'package:flutter/material.dart';
import 'create_client_page.dart';

List<String> titles = <String>[
  'Create Client',
  'Edit Client',
];


class ClientPage extends StatefulWidget{


  @override
  State<ClientPage> createState() => _ClientState();
}


class _ClientState extends State<ClientPage>{


    @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(children: [
        ElevatedButton(onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateClientPage()),
            );

        }, child: Text('Create Client')
        ),
        ElevatedButton(onPressed: (){

        }, child: Text('Edit Client')
        )
      ]),
    );
  }
}