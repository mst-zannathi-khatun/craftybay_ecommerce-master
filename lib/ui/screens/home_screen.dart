import 'package:craftybay_ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/appbariconsbutton_widget.dart';
import '../widgets/searchtextfield_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: Row(
        children: [
            SvgPicture.asset('assets/images/appbar_logo.svg'),
            const Spacer(),
            /// From Here AppBar Icons Design Started
            AppBarIconsButtonWidget(
              onTap: () {},
              icons: Icons.person_outline,
            ),
            const SizedBox(
              width: 5,
            ),
            AppBarIconsButtonWidget(
              onTap: () {},
              icons: Icons.call_outlined,
            ),
            const SizedBox(
              width: 5,
            ),
            AppBarIconsButtonWidget(
              onTap: () {},
              icons: Icons.notifications_active_outlined,
            ),
          ],
      ),
    ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SearchTextFieldWidget(),
          ],
        ),
      ),
    );
  }
}

