import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var locationText = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Equestria',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.0),
          ),
        ),
      ],
    );

    var _profileContent = Container(
      color: Color(0xFFF29977),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 425.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsetsDirectional.only(top: 15.0),
                child: Text(
                  'Applejack Pony',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              locationText,
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 25.0),
                child: Text(
                  'Now I\'m used to pickin\' myself up and dustin\' myself off.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MetricText(value: "17", label: "post",),
                  Container(
                    height: 30,
                    child: VerticalDivider(
                      color: Colors.white,
                    ),
                  ),
                  MetricText(value: "70", label: "friends",),
                  Container(
                    height: 30,
                    child: VerticalDivider(
                      color: Colors.white,
                    ),
                  ),
                  MetricText(value: "99", label: "likes",),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconContainer(FontAwesomeIcons.github),
                  IconContainer(FontAwesomeIcons.twitter),
                  IconContainer(FontAwesomeIcons.dribbble),
                ]
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: 160.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Color(0xFF6C2C72),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          'Add Friend',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {
                      print('Add Friend Pressed!');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    var customAppBar = AppBar(
      elevation: 0.0,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('Menu Icon Pressed!');
            },
          );
        },
      ),
      backgroundColor: Color(0xFFE9906D),
      title: Text(
        'Profile',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
        textAlign: TextAlign.center,
      ),
    );


    return Scaffold(
      backgroundColor: Color(0xFFF29977),
      appBar: customAppBar,
      body: Stack(
        children: <Widget>[
          _profileContent,
          Container(
            color: Color(0xFFE9906D),
            height: 110.0,
          ),
          Positioned(
            top: 20.0,
            left: 120.0,
            child: CircleAvatar(
              radius: 80.0,
              backgroundColor: Color(0xFFEEA989),
            ),
          ),
          Positioned(
            top: 40.0,
            left: 140.0,
            child: CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/pony.jpg'),
            ),
          ),
        ],
      ),
    );



  }


}


class MetricText extends StatelessWidget {

  final String value;
  final String label;

  MetricText({this.value, this.label});

  @override
  Widget build(BuildContext context) {
    return                   Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}


class IconContainer extends StatelessWidget {

  final IconData icon;
  IconContainer(this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 50.0),
      height: 60.0,
      width: 60.0,
      padding: EdgeInsets.all(10),
      decoration: ShapeDecoration(
        shape: CircleBorder(),
        color: Color(0xFFE58761),
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}

