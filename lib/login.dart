import 'package:flutter/material.dart';
import 'navigation.dart';


class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

      final usernameValue = TextEditingController();
      final passwordValue = TextEditingController();

      

      void checklogin(){
      final username = usernameValue.text;
      final password = passwordValue.text;
      print(username);

        if (username == 'Admin' && password == 'Admin') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NavRail()),
            );
        }else{
          
        }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 239, 237),
      appBar: AppBar(
                                  automaticallyImplyLeading: false,

      
            toolbarHeight: 80, // default is 56
  toolbarOpacity: 0.5,
            title: const Text(
  'STATS',
  style: TextStyle(
    fontSize: 30, // set font size
    fontWeight: FontWeight.bold, // set font weight
    fontStyle: FontStyle.normal, // set font style
    color: Colors.white, // set font color
  ),
),
            // scrolledUnderElevation: scrolledUnderElevation,
            //shadowColor: Theme.of(context).primaryColorDark,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body:Center(
            child: Container(
               width: 500,
              height: 300,
              alignment: Alignment.center,
          
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                //color: Theme.of(context).hintColor,
                color:Colors.transparent,
                border: Border.all(
                  width: 5,
                  color:Theme.of(context).secondaryHeaderColor ,
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
                color: Color.fromARGB(255, 174, 179, 224).withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: Offset(0, 2), // changes position of shadow
   //first paramerter of offset is left-right
   //second parameter is top to down
)
                ],
              ),
              child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                Column(
  // mainAxisAlignment: MainAxisAlignment.end,
  crossAxisAlignment: CrossAxisAlignment.center,

                    children:  [
                      Icon(Icons.logo_dev_outlined,size: 200.0)

                    ],
                ),

                Expanded(child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children:  [
                      TextField(
                                    controller: usernameValue,
                                    decoration: InputDecoration(
                                    labelText: 'Username',
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
                                  TextField(
                                    controller: passwordValue,
                                          obscureText: true,

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
                                  ElevatedButton(onPressed:checklogin,
  child: const Text('Login')),
                    ],
                ),
                ),
                ],
              ),
            ),
          )
          );
  //   return Padding(
  //     padding: const EdgeInsets.all(100),
  //     child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
        
  //       children: [
  //         const Icon(Icons.login_sharp, size: 50),
  //          TextField(
  //             keyboardType: TextInputType.emailAddress,
  //             controller: usernameValue,
  //             decoration: InputDecoration(
  //             hintText: 'Username',
  //             border: OutlineInputBorder(),
  //             prefixIcon: Icon(Icons.email)
  //           ),
            
  //           ),
  //         TextField(
              
  //             keyboardType: TextInputType.visiblePassword,
  //             controller: passwordValue,
  //             decoration: InputDecoration(
  //             hintText: 'Password',
  //             border: OutlineInputBorder(),
  //             prefixIcon: Icon(Icons.password)
  //           ),
            
  //           ),
  //         const SizedBox(height: 16.0),
  //         ElevatedButton(onPressed:checklogin,
  // child: const Text('Login')),

     
    

  //       ],
  //     ),
  //   );
  }
  

  
}


