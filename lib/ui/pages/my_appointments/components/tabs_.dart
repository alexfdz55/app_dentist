import 'package:app_dentist/ui/pages/my_appointments/controller/my_appointments_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalificacionesPersona extends StatelessWidget {
  final estiloTextTab = TextStyle(color: Colors.blue);
  final colorTab = Colors.white;
  final getxController = Get.find<MyAppointmentsController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyAppointmentsController>(
      init: MyAppointmentsController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: colorTab,

          elevation: 1,
          title: Container(
              height: 60,
              // padding: EdgeInsets.only(left: 10),
              child: Text('Calificaciones de esta persona',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
          //backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.blue,
            indicatorWeight: 10.0,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 25),
            tabs: [
              Tab(icon: Text('Positivas', style: estiloTextTab)),
              Tab(icon: Text('Negativas', style: estiloTextTab)),
            ],
          ),
        ),
        body: TabBarView(
          children: [positivas(), negativas()],
        ),
      ),
      //  ),
    );
  }

  Widget positivas() {
    return Column(
      children: [
        SizedBox(height: 40),
        Text('Tuve una buena experiencia'),
        SizedBox(height: 10),
        //RaitingStarsSinTexto(cantStars: getxController.califPositiva),
        comentario('getxController.comentarioPositivo'),
      ],
    );
  }

  Widget negativas() {
    return Column(
      children: [
        SizedBox(height: 40),
        Text('Tuve una mala experiencia'),
        SizedBox(height: 10),
        //RaitingStarsSinTexto(cantStars: getxController.califNegativa),
        SizedBox(height: 10),
        comentario('getxController.comentarioNegativo'),
      ],
    );
  }

  Widget comentario(String comentario) {
    return Container(
      width: 250,
      //color: Colors.yellow,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Text(comentario, style: TextStyle(fontSize: 13)),
    );
  }
}
