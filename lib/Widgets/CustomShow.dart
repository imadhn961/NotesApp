import 'package:flutter/material.dart';

class CustomShow extends StatelessWidget {
  const CustomShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 30),
              TextField(
                cursorHeight: 20,
                cursorColor: Colors.lightBlueAccent,
                decoration: InputDecoration(
                  hint: Text(
                    "Enter Note Title",
                    style: TextStyle(color: Colors.lightBlueAccent.withOpacity(.3)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                maxLines: 7,
                cursorHeight: 20,
                cursorColor: Colors.lightBlueAccent,
                decoration: InputDecoration(
                  hint: Text(
                    "Message",
                    style: TextStyle(color: Colors.lightBlueAccent.withOpacity(.3)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    fixedSize: Size(400, 20),
                    shape: LinearBorder(),
                  ),
                  onPressed: () {},
                  child: Text("Create", style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 28)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
