
import 'package:flutter/material.dart';

class BottomProfilePage extends StatefulWidget {

  @override
  _BottomProfilePageState createState() => _BottomProfilePageState();
}

class _BottomProfilePageState extends State<BottomProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Padding(
        padding: EdgeInsets.only(top: 5, left: 16, right: 16, bottom: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //buildBackBtn(),
              buildProfileImage(),
              buildTitle(),
              buildForm(),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildProfileImage() {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        child: Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/ben.png'),
                ),
              ),
            ),

            // edit button
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: InkWell(
                  onTap: () async {
                    print("Edit image pressed");
                    //await getImage();
                    //pickImage();
                  },
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        shape: BoxShape.circle,
                        border: Border(
                          top: BorderSide(color: Colors.white, width: 3),
                          bottom: BorderSide(color: Colors.white, width: 3),
                          left: BorderSide(color: Colors.white, width: 3),
                          right: BorderSide(color: Colors.white, width: 3),
                        )),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 1),
        child: Text(
          "Edit Profile",
          style: TextStyle(
              fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
  Widget buildForm() {
    return Padding(
      padding: EdgeInsets.only(top: 1),
      child: Form(
        //key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 20,),
            buildNameField(),
            SizedBox(height: 20,),

            buildEmailField(),
           SizedBox(height: 20,),
           // buildUsernameField(),
            buildOccupationField(),
            SizedBox(height: 20,),

            buildAboutField(),
            SizedBox(height: 20,),

            buildSaveBtn()

          ],
        ),
      ),
    );
  }
  Widget buildOccupationField() {
    return Padding(
      padding: EdgeInsets.only(top: 0),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        validator: (value) {
          if (value.isEmpty) {
            return "Occupation cannot be empty";
          } else {
            return null;
          }
        },

        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(4),
            ),
            labelText: "Occupation",
            hintText: "Occupation",
            labelStyle:
            TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
      ),
    );
  }
  Widget buildNameField() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) {
          return "Name cannot be empty";
        } else {
          return null;
        }
      },

      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(4),
          ),
          labelText: "Name",
          hintText: "Name",
          labelStyle:
          TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
    );
  }
  Widget buildEmailField() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value.isEmpty) {
          return "Name cannot be empty";
        } else {
          return null;
        }
      },

      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(4),
          ),
          labelText: "Email",
          hintText: "Email",
          labelStyle:
          TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
    );
  }
  Widget buildAboutField() {
    return Padding(
      padding: EdgeInsets.only(top: 0),
      child: TextFormField(
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        validator: (value) {
          if (value.isEmpty) {
            return "About cannot cannot be empty";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(4),
            ),
            labelText: "About",
            hintText: "About",
            labelStyle:
            TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget buildSaveBtn() {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: SizedBox(
        width: 100,
        height: 36.0,
        child: MaterialButton(
          onPressed: ()
          {

          },
          color: Colors.indigo,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            "Save",
            style: TextStyle(
                fontSize: 16.0, color: Colors.white, fontFamily: 'Lato'),
          ),
        ),
      ),
    );
  }


}
