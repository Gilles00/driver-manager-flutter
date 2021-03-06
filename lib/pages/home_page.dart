import 'package:flutter/material.dart';

import '../pages/create_time_clock.dart';
import '../pages/create_inspection.dart';
import '../pages/create_expense.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => new ListView(
        children: [
          Card(
            color: Theme.of(context).cardColor,
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new ListTile(
                  isThreeLine: false,
                  onTap: () {
                    DefaultTabController.of(context).animateTo(1);
                  },
                  leading: Icon(
                    Icons.access_time,
                    size: 40.0,
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      DefaultTabController.of(context).animateTo(1);
                    },
                  ),
                  title: Text('00:00:00',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400)),
                  subtitle: Text(
                    'You are currently clocked out!',
                    textAlign: TextAlign.center,
                  ),
                ),
                new ButtonTheme.bar(
                  padding: EdgeInsets.symmetric(vertical: 1.0),
                  // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(
                        child: new Text(
                          'Clock In',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                        textColor: Colors.white,
                        color: Colors.green[700],
                        splashColor: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 50.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
          Card(
            color: Theme.of(context).cardColor,
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new ListTile(
                  isThreeLine: false,
                  onTap: () {
                    DefaultTabController.of(context).animateTo(2);
                  },
                  leading: Icon(
                    Icons.build,
                    size: 40.0,
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      DefaultTabController.of(context).animateTo(2);
                    },
                  ),
                  title: new Text('Maintenance',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400)),
                  subtitle: const Text(
                    'Last Inspection - 7/31/2018',
                    textAlign: TextAlign.center,
                  ),
                ),
                new ButtonTheme.bar(
                  padding: EdgeInsets.symmetric(vertical: 1.0),
                  // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: new Text(
                          'Add Inspection',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.grey[400],
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  InspectionCreatePage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
          Card(
            color: Theme.of(context).cardColor,
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  isThreeLine: false,
                  onTap: () {
                    DefaultTabController.of(context).animateTo(3);
                  },
                  leading: Icon(
                    Icons.attach_money,
                    size: 40.0,
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      DefaultTabController.of(context).animateTo(3);
                    },
                  ),
                  title: new Text('Expenses',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400)),
                  subtitle: const Text(
                    'Last Expense - 7/28/2018',
                    textAlign: TextAlign.center,
                  ),
                ),
                new ButtonTheme.bar(
                  padding: EdgeInsets.symmetric(vertical: 1.0),
                  // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: new Text(
                          'Add Expense',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.grey[400],
                        padding: EdgeInsets.symmetric(horizontal: 35.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ExpenseCreatePage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
          Card(
            color: Theme.of(context).cardColor,
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  isThreeLine: false,
                  onTap: () {
                    DefaultTabController.of(context).animateTo(4);
                  },
                  leading: Icon(
                    Icons.people,
                    size: 40.0,
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      DefaultTabController.of(context).animateTo(4);
                    },
                  ),
                  title: new Text('Contacts',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400)),
                  subtitle: const Text(
                    'Managers on the clock: 1',
                    textAlign: TextAlign.center,
                  ),
                ),
                new ButtonTheme.bar(
                  padding: EdgeInsets.symmetric(vertical: 1.0),
                  // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: new Text(
                          'View Contacts',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.grey[400],
                        padding: EdgeInsets.symmetric(horizontal: 35.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                        onPressed: () {
                          DefaultTabController.of(context).animateTo(4);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ],
      );
}
