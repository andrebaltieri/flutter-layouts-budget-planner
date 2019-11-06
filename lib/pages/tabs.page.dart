import 'package:capcar/pages/profile/profile.page.dart';
import 'package:flutter/material.dart';

import 'budget/budget.page.dart';
import 'dashboard/dashboard.page.dart';
import 'movement/movement.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFF),
      body: TabBarView(
        children: [
          DashboardPage(),
          BudgetPage(),
          MovementPage(),
          Container(
            color: Colors.red,
          ),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.show_chart),
          ),
          Tab(
            icon: new Icon(Icons.attach_money),
          ),
          Tab(
            icon: new Icon(
              Icons.add_circle,
              size: 45,
            ),
          ),
          Tab(
            icon: new Icon(Icons.pie_chart),
          ),
          Tab(
            icon: new Icon(Icons.perm_identity),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
