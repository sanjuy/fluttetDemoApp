
import 'package:dsdtabs/apiservices/apis_services.dart';
import 'package:dsdtabs/app_colors/app_colors.dart';
import 'package:dsdtabs/datastorage/userdefaults.dart';
import 'package:dsdtabs/details_screen.dart';
import 'package:dsdtabs/draggable_screem.dart';
import 'package:dsdtabs/modles/vehicle_model.dart';
import 'package:flutter/material.dart';
 

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String bearerToken = '';
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  List<VehiclesData> vehicleList = [];
  bool hasBearerToken = false;

  getData() {
    Storage.shared.getData("bearer", (p0) {
      bearerToken = p0;
      // fetchVehicleList(bearerToken.toString());
      hasBearerToken = true;
    });
  }

  @override
  void initState() {
    super.initState();
    // getData();
    fetchVehicleList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          title: const Text("DSD Tabs"),
        ),
        body: hasBearerToken
            ? dataView()
            : const Center(child: CircularProgressIndicator())
        /*FutureBuilder(
        future: hasBearerToken
            ? fetchVehicleList(bearerToken.toString())
            : getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            return dataView();
          } else {
            return const Center(child: Text("No Data"));
          }
        },
      ),*/
        );
  }

  ListView dataView() {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        itemCount: vehicleList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            margin: const EdgeInsets.only(bottom: 10),
            // height: 200,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: cellView(context, index),
          );
        });
  }

  InkWell cellView(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailsScreen()));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            color: Colors.red.shade100,
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getTextView(
                  index, "ID: ", vehicleList[index].createdBy?.id ?? ""),
              getTextView(
                  index, "Name: ", vehicleList[index].createdBy?.name ?? ""),
              getTextView(
                  index, "Email: ", vehicleList[index].createdBy?.email ?? "")
            ],
          ),
        ],
      ),
    );
  }

  Text getTextView(int index, String fieldName, String containt) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: fieldName),
          TextSpan(text: containt),
        ],
      ),
    );
  }

  //https://zohodms.solutions.zoho.com/crm/v2/Vehicles
  fetchVehicleList() {
    Api.shared.getVehicleList((p0) {
      hasBearerToken = true;
      vehicleList = p0;
      setState(() {});
    });
  }
}
