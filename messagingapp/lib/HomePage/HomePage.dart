import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:messagingapp/LoginPage/LoginPage.dart';
import 'package:messagingapp/core/utils/custom_colors.dart';

class HomePage extends StatelessWidget {
  final ZoomDrawerController _controller = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _controller,
      menuBackgroundColor: Colors.amber,
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      menuScreen: MenuScreen(_controller),
      mainScreen: Scaffold(
        appBar: AppBar(
          title: const Text('Shrink Side Menu'),
          backgroundColor: Colors.amber,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _controller.toggle!();
            },
          ),
        ),
        body: getBody(context),
      ),
    );
  }

  getBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              height: Get.height / 1.11,
              width: Get.width,
              decoration: const BoxDecoration(
                color: CustomColors.colorA4E0AE,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget menuItem(Function page, String menuItemName, IconData prefixIcon) {
  return Column(
    children: [
      const Divider(
        color: Colors.deepPurple,
        thickness: 2,
      ),
      InkWell(
        child: Row(
          children: [
            Icon(
              prefixIcon,
              size: 35,
              color: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                menuItemName,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        onTap: () {
          Get.to(page);
        },
      ),
    ],
  );
}

class MenuScreen extends StatelessWidget {
  final zoomDrawerController;
  MenuScreen(this.zoomDrawerController);
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://avatarfiles.alphacoders.com/128/thumb-128984.png",
                  ),
                  maxRadius: 40,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "Name and Surname",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  menuItem(() => LoginPage(), "menuItemName", Icons.home),
                  menuItem(() => LoginPage(), "Home", Icons.home),
                  menuItem(() => LoginPage(), "LogOut", Icons.home),
                  menuItem(() => LoginPage(), "Settings", Icons.home),
                  menuItem(() => LoginPage(), "Light", Icons.home),
                ],
              ),
            ),
          ),
        ],
      );
}
