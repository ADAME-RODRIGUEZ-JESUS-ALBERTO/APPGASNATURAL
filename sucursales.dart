import 'alcancia.dart';
import '../libreriasflutter/packbotones.dart';
import '../libreriasflutter/packcolores.dart';
import '../libreriasflutter/packutils.dart';
import 'inicio.dart';
import 'login.dart';
import 'soporte.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SucursalesWidget extends StatefulWidget {
  const SucursalesWidget({Key key}) : super(key: key);

  @override
  _SucursalesWidgetState createState() => _SucursalesWidgetState();
}

class _SucursalesWidgetState extends State<SucursalesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(-1, 0),
          child: Image.asset(
            'assets/images/logoGNN.png',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          botoneseiconos(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.person_pin_circle,
              color: Color(0xFF00336D),
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginWidget(),
                ),
              );
            },
          ),
          botoneseiconos(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: FaIcon(
              FontAwesomeIcons.solidBell,
              color: Color(0xFFFFC600),
              size: 20,
            ),
            onPressed: () async {
              await showDialog(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text('Ups!'),
                    content: Text('No tienes notificaciones'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(alertDialogContext),
                        child: Text('Ok'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: packcolores.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F4F8),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -0.95),
                      child: Text(
                        'Centros De Pago',
                        style: packcolores.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.7),
                      child: InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://www.google.com.mx/maps/search/Gas+Natural+del+Norte/@31.6061977,-106.4106246,12z/data=!3m1!4b1');
                        },
                        child: ListTile(
                          title: Text(
                            'Av. Tecnológico 430',
                            style: packcolores.of(context).title3,
                          ),
                          subtitle: Text(
                            'Lunes a viernes de 08 a 17 Hrs.',
                            style: packcolores.of(context).subtitle2,
                          ),
                          trailing: Icon(
                            Icons.pin_drop,
                            color: Color(0xFF00336D),
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.9),
                      child: InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://www.google.com.mx/maps/search/Gas+Natural+del+Norte/@31.6061977,-106.4106246,12z/data=!3m1!4b1');
                        },
                        child: ListTile(
                          title: Text(
                            'Av. 16 de Septiembre #1279',
                            style: packcolores.of(context).title3,
                          ),
                          subtitle: Text(
                            'Lunes a viernes de 9 a 17 hrs',
                            style: packcolores.of(context).subtitle2,
                          ),
                          trailing: Icon(
                            Icons.pin_drop,
                            color: Color(0xFF00336D),
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.3),
                      child: InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://www.google.com.mx/maps/search/Gas+Natural+del+Norte/@31.6061977,-106.4106246,12z/data=!3m1!4b1');
                        },
                        child: ListTile(
                          title: Text(
                            'Eje vial Juan Gabriel #8750',
                            style: packcolores.of(context).title3,
                          ),
                          subtitle: Text(
                            'Lunes a viernes de 9 a 17 hrs',
                            style: packcolores.of(context).subtitle2,
                          ),
                          trailing: Icon(
                            Icons.pin_drop,
                            color: Color(0xFF00336D),
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.1),
                      child: InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://www.google.com.mx/maps/search/Gas+Natural+del+Norte/@31.6061977,-106.4106246,12z/data=!3m1!4b1');
                        },
                        child: ListTile(
                          title: Text(
                            'Av. de La Raza #6540',
                            style: packcolores.of(context).title3,
                          ),
                          subtitle: Text(
                            'Lunes a viernes de 9 a 17 hrs',
                            style: packcolores.of(context).subtitle2,
                          ),
                          trailing: Icon(
                            Icons.pin_drop,
                            color: Color(0xFF00336D),
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.5),
                      child: InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://www.google.com.mx/maps/search/Gas+Natural+del+Norte/@31.6061977,-106.4106246,12z/data=!3m1!4b1');
                        },
                        child: ListTile(
                          title: Text(
                            'Av. de Las Torres #152',
                            style: packcolores.of(context).title3,
                          ),
                          subtitle: Text(
                            'Lunes a viernes de 9 a 17 hrs',
                            style: packcolores.of(context).subtitle2,
                          ),
                          trailing: Icon(
                            Icons.pin_drop,
                            color: Color(0xFF00336D),
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        botoneseiconos(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.home_sharp,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                                reverseDuration: Duration(milliseconds: 0),
                                child: InicioWidget(),
                              ),
                            );
                          },
                        ),
                        botoneseiconos(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.location_pin,
                            color: Color(0xFF00336D),
                            size: 30,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        botoneseiconos(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: FaIcon(
                            FontAwesomeIcons.piggyBank,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                                reverseDuration: Duration(milliseconds: 0),
                                child: AlcanciaWidget(),
                              ),
                            );
                          },
                        ),
                        botoneseiconos(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.support_agent,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                                reverseDuration: Duration(milliseconds: 0),
                                child: SoporteWidget(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
