import 'package:flutter/material.dart';
import 'package:sambitz/screens/dashboard/dashboard.dart';
import 'package:sambitz/widgets/dashList.dart';
import 'package:sambitz/widgets/text.dart';

class DashSurf extends StatefulWidget {
  const DashSurf({super.key});

  @override
  State<DashSurf> createState() => _DashSurfState();
}

class _DashSurfState extends State<DashSurf> {
  var showMenuDash = false;
  var themeUsed = false;
  var overviewDroppedDown = false;
  var tradesDroppedDown = false;
  var contractsDroppedDown = false;
  var statusDroppedDown = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                width: showMenuDash
                    ? MediaQuery.of(context).size.width * 0.5
                    : double.maxFinite,
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                child: ListView(
                  // shrinkWrap: true,
                  children: [
                    Container(
                      color: Colors.orange,
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        // tileColor: Colors.orange,
                        leading: Image.asset(
                          'assets/logo/logo.PNG',
                          width: 50,
                          height: 25,
                        ),
                        title: !showMenuDash
                            ? blackTitle(context, 'SamBitz')
                            : null,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      padding: overviewDroppedDown
                          ? const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12.0)
                          : null,
                      color: overviewDroppedDown ? Colors.orange : null,
                      child: listDash(
                        context,
                        Icons.money,
                        'Overview  ',
                        () {
                          setState(() {
                            if (showMenuDash) showMenuDash = false;
                            if (overviewDroppedDown) {
                              overviewDroppedDown = false;
                            } else if (!overviewDroppedDown) {
                              overviewDroppedDown = true;
                            }
                          });
                        },
                        showMenuDash,
                      ),
                    ),
                    if (overviewDroppedDown)
                      Column(
                        children: [
                          const SizedBox(height: 5),
                          InkWell(
                            child: smallListDash(
                              context,
                              'Transactions',
                              Colors.red,
                              showMenuDash,
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            child: smallListDash(
                              context,
                              'Schedule alert',
                              Colors.blue,
                              showMenuDash,
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            child: smallListDash(
                              context,
                              'Cash back',
                              Colors.green,
                              showMenuDash,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    Divider(color: Theme.of(context).primaryColor),
                    Container(
                      width: double.infinity,
                      padding: tradesDroppedDown
                          ? const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12.0)
                          : null,
                      color: tradesDroppedDown ? Colors.orange : null,
                      child: listDash(
                        context,
                        Icons.business,
                        'Trades    ',
                        () {
                          setState(() {
                            if (showMenuDash) showMenuDash = false;
                            if (tradesDroppedDown) {
                              tradesDroppedDown = false;
                            } else if (!tradesDroppedDown) {
                              tradesDroppedDown = true;
                            }
                          });
                        },
                        showMenuDash,
                      ),
                    ),
                    if (tradesDroppedDown)
                      Column(
                        children: [
                          const SizedBox(height: 5),
                          InkWell(
                            child: smallListDash(
                              context,
                              'Buy',
                              const Color.fromARGB(255, 54, 244, 146),
                              showMenuDash,
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            child: smallListDash(
                              context,
                              'Sell',
                              Colors.blue,
                              showMenuDash,
                            ),
                          ),
                          const SizedBox(height: 10),
                          // ),
                        ],
                      ),
                    Divider(color: Theme.of(context).primaryColor),
                    Container(
                      width: double.infinity,
                      padding: contractsDroppedDown
                          ? const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12.0)
                          : null,
                      color: contractsDroppedDown ? Colors.orange : null,
                      child: listDash(
                        context,
                        Icons.join_full,
                        'Contracts',
                        () {
                          setState(() {
                            if (showMenuDash) showMenuDash = false;
                            if (contractsDroppedDown) {
                              contractsDroppedDown = false;
                            } else if (!contractsDroppedDown) {
                              contractsDroppedDown = true;
                            }
                          });
                        },
                        showMenuDash,
                      ),
                    ),
                    if (contractsDroppedDown)
                      Column(
                        children: [
                          const SizedBox(height: 5),
                          InkWell(
                            child: smallListDash(
                              context,
                              'Approved',
                              const Color.fromARGB(255, 13, 191, 219),
                              showMenuDash,
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            child: smallListDash(
                              context,
                              'Pending',
                              const Color.fromARGB(255, 12, 42, 67),
                              showMenuDash,
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            child: smallListDash(
                              context,
                              'Suspended',
                              const Color.fromARGB(255, 201, 152, 3),
                              showMenuDash,
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            child: smallListDash(
                              context,
                              'Cancled',
                              Colors.red,
                              showMenuDash,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    Divider(color: Theme.of(context).primaryColor),
                    Container(
                      width: double.infinity,
                      padding: statusDroppedDown
                          ? const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12.0)
                          : null,
                      color: statusDroppedDown ? Colors.orange : null,
                      child: listDash(
                        context,
                        Icons.bungalow,
                        'Status    ',
                        () {
                          setState(() {
                            if (showMenuDash) showMenuDash = false;
                            if (statusDroppedDown) {
                              statusDroppedDown = false;
                            } else if (!statusDroppedDown) {
                              statusDroppedDown = true;
                            }
                          });
                        },
                        showMenuDash,
                      ),
                    ),
                    if (statusDroppedDown)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 5),
                          InkWell(
                            child: smallListDash(
                              context,
                              'Active',
                              Colors.green,
                              showMenuDash,
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            child: smallListDash(
                              context,
                              'Offsale',
                              const Color.fromARGB(255, 9, 88, 153),
                              showMenuDash,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    Divider(color: Theme.of(context).primaryColor),
                    const SizedBox(
                      height: 250,
                      width: double.infinity,
                      // child: ,
                    ),
                    const SizedBox(height: 10),
                    if (!showMenuDash)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          customText(
                            context,
                            'Light',
                            Colors.black,
                            14,
                            FontWeight.w600,
                          ),
                          Switch(
                            // thumbIcon: MaterialStatePropertyAll(
                            //   Icon(Icons.wb_sunny_sharp),
                            // ),
                            mouseCursor: MouseCursor.uncontrolled,
                            value: themeUsed,
                            onChanged: (val) {
                              setState(() {
                                themeUsed = val;
                              });
                            },
                          ),
                          customText(
                            context,
                            'Dark',
                            Colors.black,
                            14,
                            FontWeight.w600,
                          ),
                        ],
                      ),
                    ListTile(
                      leading: const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Icon(
                          Icons.person,
                          size: 25,
                        ),
                      ),
                      title: !showMenuDash
                          ? customText(
                              context,
                              'Nuel JohnPaul',
                              Colors.black,
                              14,
                              FontWeight.w600,
                            )
                          : null,
                      subtitle: !showMenuDash
                          ? blackBody(
                              context,
                              'Lab Scientist',
                            )
                          : null,
                    ),
                    if (!showMenuDash)
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Padding(
                              padding: EdgeInsets.only(
                                top: 8.0,
                                left: 8.0,
                                bottom: 8.0,
                              ),
                              child: Icon(Icons.logout),
                            ),
                            label: Padding(
                              padding: const EdgeInsets.only(
                                top: 8.0,
                                right: 8.0,
                                bottom: 8.0,
                              ),
                              child: blackBody(context, 'logout'),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: showMenuDash ? 12 : 3,
              child: DashBoardView(),
            )
          ],
        ),
        Positioned(
          top: 50,
          left: !showMenuDash ? 300 : 65,
          child: InkWell(
            onTap: () {
              setState(() {
                if (showMenuDash) {
                  showMenuDash = false;
                } else {
                  showMenuDash = true;
                }
              });
            },
            child: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                // border: Border(left: BorderSide(color: Colors.orange)),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Icon(
                showMenuDash ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
