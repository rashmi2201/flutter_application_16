import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListItemWithIconTextIcon extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final IconData trailingIcon;
  final Color leadingIconColor;
  final double leadingIconSize;
  final double trailingIconSize;

  const ListItemWithIconTextIcon({
    required this.leadingIcon,
    required this.title,
    required this.trailingIcon,
    required this.leadingIconColor,
    required this.leadingIconSize,
    required this.trailingIconSize,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: leadingIconColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          leadingIcon,
          color: Colors.white,
          size: leadingIconSize,
        ),
      ),
      title: Text(title),
      trailing: Container(
        width: trailingIconSize,
        height: trailingIconSize,
        child: Icon(
          trailingIcon,
          size: trailingIconSize,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    const Text('Hey! Rashmi'),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 238, 238, 209),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.electric_bolt_sharp,
                            color: Color.fromARGB(255, 196, 180, 121),
                          ),
                          Text('4200'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 1),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 15,
                    ),
                    Text(
                      'Plus Premium ',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      'member >',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.add_box,
                                  color: Color.fromARGB(255, 49, 92, 127),
                                ),
                                SizedBox(width: 8),
                                Text('Orders'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.heart_broken_rounded,
                                  color: Color.fromARGB(255, 49, 92, 127),
                                ),
                                SizedBox(width: 8),
                                Text('Wishlist'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.card_giftcard_outlined,
                                  color: Color.fromARGB(255, 49, 92, 127),
                                ),
                                SizedBox(width: 8),
                                Text('Coupons'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.headset,
                                  color: Color.fromARGB(255, 49, 92, 127),
                                ),
                                SizedBox(width: 8),
                                Text('Help Center'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(thickness: 2),
              const ListTile(
                title: Text('Credit Options'),
                subtitle: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.currency_rupee_rounded,
                          color: Colors.blue,
                          size: 24,
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Flipcart Pay Later'),
                        Text(
                          'Available Balance:₹68827.00.Shop',
                          style: TextStyle(
                              color: Color.fromARGB(255, 134, 132, 132)),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromARGB(255, 16, 16, 17),
                          size: 15,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(thickness: 2),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Account Settings'),
                  ],
                ),
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.diamond,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                title: 'Flipcart Plus',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                trailingIconSize: 15.0,
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.edit_note_sharp,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                title: 'Edit Profile',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                trailingIconSize: 15.0,
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.wallet,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                title: 'Save Cards & Wallet',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                trailingIconSize: 15.0,
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.location_city,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                title: 'Saved Addresses',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                trailingIconSize: 15.0,
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.language,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                title: 'Select Language',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                trailingIconSize: 15.0,
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.notification_add_sharp,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                title: 'Notification Settings',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                trailingIconSize: 15.0,
              ),
              Divider(thickness: 2),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My Activity'),
                  ],
                ),
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.reviews,
                title: 'Reviews',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                trailingIconSize: 15.0,
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.question_answer,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                title: ' Questions & Answers',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                trailingIconSize: 15.0,
              ),
              Divider(thickness: 2),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Earn with Flipcart'),
                  ],
                ),
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.star,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                title: ' Flipcart Creator Studio',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                trailingIconSize: 15.0,
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.sell,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                title: ' sell on Flipcart',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                trailingIconSize: 15.0,
              ),
              Divider(thickness: 2),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Feedback & Information'),
                  ],
                ),
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.policy,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                title: 'Terms,Policies and Licenses',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                trailingIconSize: 15.0,
              ),
              const ListItemWithIconTextIcon(
                leadingIcon: Icons.browse_gallery,
                leadingIconColor: Color.fromARGB(255, 20, 60, 100),
                leadingIconSize: 10.0,
                title: 'Browsers FAQs',
                trailingIcon: Icons.arrow_forward_ios_outlined,
                trailingIconSize: 15.0,
              ),
              Divider(thickness: 2),
              Center(
                child: Container(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        // You can customize button style here if needed
                        ),
                    child: const Text('Logout'),
                  ),
                ),
              ),
              const Row(
                children: [
                  Column(
                    children: [Icon(Icons.home), Text('Home')],
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.notifications),
                        Text('Notifications')
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [Icon(Icons.category), Text('Categories')],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [Icon(Icons.account_box), Text('Account')],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [Icon(Icons.shopping_cart), Text('Cart')],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
