import 'package:flutter/material.dart';
import 'package:nlw_together/shared/models/boleto_model.dart';
import 'package:nlw_together/shared/themes/app_text_styles.dart';
import 'package:nlw_together/shared/themes/appcolors.dart';
import 'package:nlw_together/shared/widgets/boleto_info/boleto_info_widget.dart';
import 'package:nlw_together/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:nlw_together/shared/widgets/boleto_list/boleto_list_widget.dart';

class ExtratoPage extends StatefulWidget {
  const ExtratoPage({Key? key}) : super(key: key);

  @override
  _ExtratoPageState createState() => _ExtratoPageState();
}

class _ExtratoPageState extends State<ExtratoPage> {
  final controller = BoletoListController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
          child: Row(
            children: [
              Text(
                "Meu extrato",
                style: TextStyles.titleBoldHeading,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BoletoListWidget(
            controller: controller,
          ),
        )
      ],
    );
  }
}
