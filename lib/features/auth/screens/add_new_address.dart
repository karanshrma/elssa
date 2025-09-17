import 'package:elssa/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen extends StatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => AddNewAddressScreen());

  const AddNewAddressScreen({super.key});

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFFDFEFE),
      body: Padding(

        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hey, nice to meet you!',
              style: TextStyle(fontSize: 12 , color: Colors.grey),
            ),
            const SizedBox(height: 8,),
            Text('See services around' , style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5
            ),),
            const SizedBox(height: 24,),
            Image.asset('assets/images/add_new_address.png' , fit: BoxFit.fill,),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                const Center(child: CircularProgressIndicator(),);
                Navigator.push(context, HomeScreen.route());
              } ,
              child: Container(
                width: double.infinity,
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40),
                ),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.my_location, color: Colors.white, size: 20),
                    SizedBox(width: 10),
                    Text(
                      "Your current location",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            // Search Box pill
            Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300, width: 1),
                borderRadius: BorderRadius.circular(40),
              ),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search, color: Colors.grey.shade400, size: 20),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Some other location',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 15,
                        ),
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
