import 'package:flutter/material.dart';

import 'package:postgres/postgres.dart';


Future<void> insertcilentdetails(String businessName, String businesstype, int businessValue,String businessDiscription) async {
final conn = PostgreSQLConnection('localhost', 5432, 'myfirstpostgresDB',username:'postgres',password:'Jas@lisa27');





  try {
    await conn.open();
    //final insert=await conn.query('INSERT INTO Customer_CS(ID,COMPANY_NAME,STATE,CITY,ADDRESS,CONTACT,EMAIL) VALUES (4,\'$companyName\',\'$state\',\'$city\',\'$address\',\'$contact\',\'$email\')');
    final enter = await conn.query('insert into company_stats(company_name,first_name,last_name,address,city,postal_code,email,password,user_type,access_status,created_by,modified_by,modified_date) values (\'none\',\'none\',\'none\',\'none\',\'none\',\'none\',\'none\',\'none\',\'none\',\'none\',\'none\',\'none\',\'23AUG23\');');
    // print(result);
    // for (final row in result) {
    //   print(row.toString());
    // }

  } catch (e) {
    print('Error performing database query: $e');
  } finally {
    await conn.close();
  }

}






Future<void> insertBusinessdetails(String businessName, String businesstype, String businessValue,String businessDiscription,String name, String statusincanada, String phone,String email ,String countryoforigin,String language,String reason_of_meeting, String meeting_mode, String servicesoffered,String meetingplace) async {
final conn = PostgreSQLConnection('localhost', 5432, 'myfirstpostgresDB',username:'postgres',password:'Jas@lisa27');
int value = int.parse(businessValue);





  try {
    await conn.open();
    //final insert=await conn.query('INSERT INTO Customer_CS(ID,COMPANY_NAME,STATE,CITY,ADDRESS,CONTACT,EMAIL) VALUES (4,\'$companyName\',\'$state\',\'$city\',\'$address\',\'$contact\',\'$email\')');
    final enter = await conn.query('insert into client(businessName,businesstype,businessValue,businessDiscription,Name,statusincanada,phone,email,countryoforigin,language,reason_of_meeting,meeting_mode,servicesoffered,meetingplace)values(\'$businessName\',\'$businesstype\',$value,\'$businessDiscription\',\'$name\',\'$statusincanada\',\'$phone\',\'$email\',\'$countryoforigin\',\'$language\',\'$reason_of_meeting\',\'$meeting_mode\',\'$servicesoffered\',\'$meetingplace\');');
    // print(result);
    // for (final row in result) {
    //   print(row.toString());
    // }

  } catch (e) {
    print('Error performing database query: $e');
  } finally {
    await conn.close();
  }

}







Future<List<String>> getDATA() async {
final conn = PostgreSQLConnection('localhost', 5432, 'myfirstpostgresDB',username:'postgres',password:'Jas@lisa27');

final rows = <String>[];



  try {
    await conn.open();
    final result = await conn.query('SELECT * FROM customer_cs');
        for (final row in result) {
          rows.add(row.toString());
    }

  } catch (e) {
    print('Error performing database query: $e');
  } finally {
    await conn.close();
  }
return rows;
}

