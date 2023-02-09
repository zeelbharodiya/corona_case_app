// import 'package:flutter/material.dart';
//
// import 'helpers/api_helpers.dart';
// import 'models/corona_update.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   late Future<Corona?> getData;
//
//   // TextEditingController valueController = TextEditingController();
//
//   TextStyle myStyle = TextStyle(
//       color: Colors.white,
//       fontSize: 20,
//       fontWeight: FontWeight.bold,
//       letterSpacing: 2);
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getData = APIHelper.apiHelper.fetchRates();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "CORONAVIRUS PANDEMIC",
//           style: TextStyle(
//               color: Colors.white, fontSize: 19, fontWeight: FontWeight.w400),
//         ),
//         backgroundColor: Colors.green,
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             FutureBuilder(
//               future: getData,
//               builder: (BuildContext context, AsyncSnapshot snapshot) {
//                 if (snapshot.hasError) {
//                   return Center(
//                     child: Text("Error: ${snapshot.error}"),
//                   );
//                 } else if (snapshot.hasData) {
//                   Corona? data = snapshot.data;
//
//                   return (data != null)
//                       ? Padding(
//                           padding: const EdgeInsets.all(15.0),
//                           child: Container(
//                             child: Column(
//                               // mainAxisSize: MainAxisSize.max,
//                               // mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 SizedBox(height: 20,),
//                                 Container(
//                                   height: 50,
//                                   alignment: Alignment.center,
//                                   color: Colors.black.withOpacity(0.1),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Text(
//                                       "COVID-19 CORONAVIRUS PANDEMIC",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 17,
//                                           fontWeight: FontWeight.w300),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: 10,),
//                                 Text(
//                                   "Last updated : February 04, 2023, 13:11 GMT",
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w300),
//                                 ),
//                                 SizedBox(height: 65,),
//                                 Text(
//                                   "Coronavirus Cases",
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 21,
//                                       fontWeight: FontWeight.w300),
//                                 ),
//                                 SizedBox(height: 12,),
//                                 Text(
//                                   "${data.totalcase}",
//                                   style: TextStyle(
//                                       color: Colors.black.withOpacity(0.3),
//                                       fontSize: 35,
//                                       fontWeight: FontWeight.w800),
//                                 ),
//                                 SizedBox(height: 45,),
//                                 GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       Navigator.pushNamed(context, 'HomePage2' , arguments: data);
//                                     });
//                                   },
//                                   child: Container(
//                                     height: 50,
//                                     width: 200,
//                                     alignment: Alignment.center,
//                                     decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.circular(15),
//                                       border: Border.all(color: Colors.green,width: 2),
//                                     ),
//                                     child: Text(
//                                       "view by country",
//                                       style: TextStyle(
//                                         color: Colors.green[800],
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.w500,
//                                         decoration: TextDecoration.underline,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: 45,),
//                                 Text(
//                                   "Deaths",
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 21,
//                                       fontWeight: FontWeight.w300),
//                                 ),
//                                 SizedBox(height: 12,),
//                                 Text(
//                                   "${data.totaldeath}",
//                                   style: TextStyle(
//                                       color: Colors.black.withOpacity(0.7),
//                                       fontSize: 35,
//                                       fontWeight: FontWeight.w800),
//                                 ),
//                                 SizedBox(height: 65,),
//                                 Text(
//                                   "Recovered",
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 21,
//                                       fontWeight: FontWeight.w300),
//                                 ),
//                                 SizedBox(height: 12,),
//                                 Text(
//                                   "${data.totalrecovered}",
//                                   style: TextStyle(
//                                       color: Colors.green,
//                                       fontSize: 35,
//                                       fontWeight: FontWeight.w800),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         )
//                       : Center(
//                           child: Text("No data found..."),
//                         );
//                 }
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
