import '../libreriasflutter/packbotones.dart';
import '../libreriasflutter/packcolores.dart';
import '../libreriasflutter/packutils.dart';
import 'inicio.dart';
import 'login.dart';
import 'soporte.dart';
import 'sucursales.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AlcanciaWidget extends StatefulWidget {
  const AlcanciaWidget({Key key}) : super(key: key);

  @override
  _AlcanciaWidgetState createState() => _AlcanciaWidgetState();
}

class _AlcanciaWidgetState extends State<AlcanciaWidget> {
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
                    title: Text('No tienes notificaciones'),
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
                      alignment: AlignmentDirectional(-0.03, -0.94),
                      child: Image.asset(
                        'assets/images/que-es.png',
                        width: 400,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.9, 0.3),
                      child: Text(
                        'Es un programa comprendido de Abril a Octubre en el que pagas una cantidad fija y la diferencia entre el consumo y lo que pagas es tu ahorro,  el cual será aplicado en tus consumos de Noviembre a Febrero de acuerdo al siguiente esquema:',
                        textAlign: TextAlign.center,
                        style: packcolores.of(context).bodyText1,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.95),
                      child: Text(
                        '10% de tu ahorro en tu consumo de Noviembre\n45% de tu ahorro en tu consumo de Diciembre\n30% de tu ahorro en tu consumo de Enero\n15% de tu ahorro en tu consumo de Febrero',
                        style: packcolores.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 130,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F4F8),
                ),
                child: Image.asset(
                  'assets/images/inscribete.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
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
