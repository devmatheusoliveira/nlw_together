import 'package:flutter/material.dart';
import 'package:nlw_together/shared/models/boleto_model.dart';
import 'package:nlw_together/shared/themes/app_text_styles.dart';

class BoletoTileWidget extends StatefulWidget {
  final BoletoModel data;
  const BoletoTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  _BoletoTileWidgetState createState() => _BoletoTileWidgetState();
}

class _BoletoTileWidgetState extends State<BoletoTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(widget.data.name!, style: TextStyles.titleListTile),
      subtitle: Text("Vence em: ${widget.data.vencimento}",
          style: TextStyles.captionBody),
      trailing: Text.rich(TextSpan(
        text: "R\$ ",
        style: TextStyles.trailingRegular,
        children: [
          TextSpan(
            text: "${widget.data.value!.toStringAsFixed(2)}",
            style: TextStyles.trailingBold,
          ),
        ],
      )),
    );
  }
}
