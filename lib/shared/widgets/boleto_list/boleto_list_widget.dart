import 'package:flutter/material.dart';
import 'package:nlw_together/shared/models/boleto_model.dart';
import 'package:nlw_together/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:nlw_together/shared/widgets/boleto_tile/boleto_tile_widget.dart';

class BoletoListWidget extends StatefulWidget {
  final BoletoListController controller;
  BoletoListWidget({Key? key, required this.controller}) : super(key: key);

  @override
  _BoletoListWidgetState createState() => _BoletoListWidgetState();
}

class _BoletoListWidgetState extends State<BoletoListWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<BoletoModel>>(
        valueListenable: widget.controller.boletosNotifier,
        builder: (_, boletos, __) => Column(
            children: boletos.map((e) => BoletoTileWidget(data: e)).toList()));
  }
}
/* 


    print("deu certo");
    return ValueListenableBuilder<List<BoletoModel>>(
      valueListenable: controller.boletosNotifier,
      builder: (_, boletos, __) => Column(
        children: boletos.map((e) => BoletoTileWidget(data: e)).toList(),
      ),
    );


*/
