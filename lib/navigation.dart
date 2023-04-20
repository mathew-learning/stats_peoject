import 'package:flutter/material.dart';
import 'panel.dart';
import 'dashboard_table.dart';
import 'admin.dart';
import 'login.dart';
//import 'admin_new.dart';

class NavRail extends StatefulWidget{
  const NavRail ({super.key});

@override
State<NavRail> createState() => _NavRailState();

}

class _NavRailState extends  State<NavRail> {
  int _selectedIndex = 0;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAligment = 0;
    bool shadowColor = false;
  double? scrolledUnderElevation;

  Widget buildPages() {
    switch (_selectedIndex) {
      case 0:
      return TablePage();
      case 1:
      return AdminPage();
      case 2:
      return PanelPage();
      // case 0:
      //   return NamePage();
      // case 1:
      //   return MyTable(data: [],);
      // case 2:
      //   return TabBarWidget();
      // case 3:
      //   return Employee();
      // case 4:
      //   return Logout();
      // default:
      //   return NamePage();
    }
    return Text('None');
  }
  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(appBar: AppBar(
                            automaticallyImplyLeading: false,
                            title: const Text(
  'STATS',
  style: TextStyle(
    fontSize: 30, // set font size
    fontWeight: FontWeight.bold, // set font weight
    fontStyle: FontStyle.normal, // set font style
    color: Colors.white, // set font color
  ),
),
actions: <Widget>[
          ElevatedButton(onPressed: (){
Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          }, child: Text(
  'Logout',
  style: TextStyle(
    fontSize: 15, // set font size
    fontWeight: FontWeight.bold, // set font weight
    fontStyle: FontStyle.normal, // set font style
    color: Colors.green, // set font color
  ),
),)
        ], // disable the "back" button

            toolbarHeight: 80, // default is 56
  toolbarOpacity: 0.5,
            scrolledUnderElevation: scrolledUnderElevation,
            //shadowColor: Theme.of(context).primaryColorDark,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body: SafeArea(
          child:Row(children: <Widget>[
              NavigationRail(

                extended: constraints.maxWidth >= 600,
                backgroundColor:Theme.of(context).hoverColor,
                selectedIndex:_selectedIndex,
                groupAlignment: groupAligment,
                onDestinationSelected:(int index){
                  setState((){
                    _selectedIndex = index;
                  });
                },
                leading: showLeading
                ? FloatingActionButton(onPressed:(){
                    // pending
                },
                child: const Icon(Icons.add),
                )
                : const SizedBox(),
                trailing:showTrailing
                ?  IconButton(onPressed: (){
                    // pending
                }, icon: const Icon(Icons.more_horiz_rounded),
                )
                :const SizedBox(),

                destinations:const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Icon(Icons.dashboard_customize,size: 30,),
                    selectedIcon: Icon(Icons.dashboard,size: 50,),
                    label: Text(
  'Dashboard',
  style: TextStyle(
    fontSize: 15, // set font size
    fontWeight: FontWeight.bold, // set font weight
    fontStyle: FontStyle.normal, // set font style
    color: Colors.black, // set font color
  ),
),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.admin_panel_settings_outlined,size: 30,),
                    selectedIcon: Icon(Icons.admin_panel_settings,size: 50,),
                    label: Text(
  'Admin',
  style: TextStyle(
    fontSize: 15, // set font size
    fontWeight: FontWeight.bold, // set font weight
    fontStyle: FontStyle.normal, // set font style
    color: Colors.black, // set font color
  ),
),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.person_2,size: 30,),
                    selectedIcon: Icon(Icons.person,size: 50,),
                    label: Text(
  'Panel',
  style: TextStyle(
    fontSize: 15, // set font size
    fontWeight: FontWeight.bold, // set font weight
    fontStyle: FontStyle.normal, // set font style
    color: Colors.black, // set font color
  ),
),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.report_off,size:30),
                    selectedIcon: Icon(Icons.report,size:50),
                    label: Text(
  'Reports',
  style: TextStyle(
    fontSize: 15, // set font size
    fontWeight: FontWeight.bold, // set font weight
    fontStyle: FontStyle.normal, // set font style
    color: Colors.black, // set font color
  ),
),
                  ),
                ],
              ),
              const VerticalDivider(thickness: 1, width: 1),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: buildPages(),
                ),
              ),
              //Expanded(child: buildPages()),

            ],
          ),

        ),
        );
      }
    );

  }
  }