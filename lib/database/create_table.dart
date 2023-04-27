import 'package:flutter/material.dart';

import 'package:postgres/postgres.dart';

Future<void> CreateTable() async {
final conn = PostgreSQLConnection('localhost', 5432, 'myfirstpostgresDB',username:'postgres',password:'Jas@lisa27');


  try {
    await conn.open();
    final insert=await conn.query(
      '''CREATE TABLE company_stats (
                                    EMP_NO SERIAL PRIMARY KEY,
                                    COMPANY_NAME varchar(225) NOT NULL,
                                    First_name varchar(225) NOT NULL,
                                    Last_name varchar(225) NOT NULL,
                                    Address varchar(225) NOT NULL,
                                    City varchar(225) NOT NULL,
                                    Postal_Code varchar(225), 
                                    Email varchar(225) NOT NULL,
                                    Password varchar(225) NOT NULL,
                                    User_type varchar(225) NOT NULL,
                                    Access_status varchar(225) NOT NULL,
                                    Created_by varchar(225) NOT NULl,
                                    Modified_by varchar(225) NOT NULL,
                                    Modified_date date NOT NULL)'''
);
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

Future<void> InsertData() async {
final conn = PostgreSQLConnection('localhost', 5432, 'myfirstpostgresDB',username:'postgres',password:'Jas@lisa27');


  try {
    await conn.open();
    final insert=await conn.query(
      '''INSERT INTO company_stats (
                                    COMPANY_NAME ,
                                    First_name ,
                                    Last_name ,
                                    Address ,
                                    City ,
                                    Postal_Code, 
                                    Email ,
                                    Password ,
                                    User_type ,
                                    Access_status ,
                                    Created_by ,
                                    Modified_by ,
                                    Modified_date)
                                    VALUES
                                    (
                                      'info',
                                    'ram',
                                    'sita',
                                    'Ayodhya',
                                    'UP',
                                    '533255',
                                    'ramsita@gmaul.com'
                                    'xxxxxxxx',
                                    'None'
                                    'None'
                                    'None'
                                    'None'
                                    '12AUG23'
                                    )'''
);
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
