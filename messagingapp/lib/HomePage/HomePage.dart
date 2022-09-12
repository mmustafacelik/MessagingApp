import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
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

//!TODO: widget yaz ve menudeki rowları yazdığın bu widgete göndder.
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
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "data",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Divider(
                  color: Colors.deepPurple,
                  thickness: 2,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "HomePage",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.deepPurple,
                  thickness: 2,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "HomePage",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.deepPurple,
                  thickness: 2,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "HomePage",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.deepPurple,
                  thickness: 2,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "HomePage",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.deepPurple,
                  thickness: 2,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "HomePage",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.deepPurple,
                  thickness: 2,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "HomePage",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.deepPurple,
                  thickness: 2,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "HomePage",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.deepPurple,
                  thickness: 2,
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "HomePage",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      );
}
