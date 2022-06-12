import 'alcancia.dart';
import '../libreriasflutter/packbotones.dart';
import '../libreriasflutter/packcolores.dart';
import '../libreriasflutter/packutils.dart';
import 'login.dart';
import 'soporte.dart';
import 'sucursales.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
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
                        child: Text('Cerrar'),
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
                      alignment: AlignmentDirectional(-0.07, -1),
                      child: InkWell(
                        onTap: () async {
                          await launchURL(
                              'https://gasnn.com/juarez/index.php/es/qatar.html');
                        },
                        child: Image.asset(
                          'assets/images/banner-7-mayo_copy_2.jpg',
                          width: 400,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
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
                      alignment: AlignmentDirectional(0, 0.35),
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
                    Align(
                      alignment: AlignmentDirectional(0, 0.75),
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
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -1.20),
                        child: Text(
                          'Checa los ganadores a Qatar',
                          style:
                              packcolores.of(context).bodyText1.override(
                                    fontFamily: 'Rubik',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: InkWell(
                          onTap: () async {
                            await launchURL(
                                'https://gasnn.com/juarez/qatar/ganadores7mayo.pdf');
                          },
                          child: Image.asset(
                            'assets/images/boton__listaganadores.png',
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
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
                          icon: Icon(
                            Icons.location_pin,
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
                                child: SucursalesWidget(),
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
