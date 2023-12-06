import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/appbariconsbutton_widget.dart';

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
            AppBarIconsButtonWidget(
              onTap: () {},
              icons: Icons.person_outline,
            ),
        const SizedBox(width: 5,),
          AppBarIconsButtonWidget(
            onTap: () {},
            icons: Icons.call_outlined,
          ),
          const SizedBox(width: 5,),
          AppBarIconsButtonWidget(
            onTap: () {},
            icons: Icons.notifications_active_outlined,
          ),
          ],
      ),
    ),
    );
  }
}

