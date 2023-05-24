// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../themes/colors/colors_theme.dart';
// import '../../widgets/widgets.dart';
// import '../controllers/controllers.dart';
// import '../services/services.dart';
// import 'views.dart';

// class UserNavigationView extends GetView<NavigationController> {
//   const UserNavigationView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       body: Obx(
//         () => UserListOfPage(index: controller.navbarIndex()),
//       ),
//       bottomNavigationBar: Obx(
//         () => ReBottomNavbar(
//           color: controller.navbarIndex() == 3
//               ? ColorsTheme.primaryVariant
//               : ColorsTheme.primary,
//           children: [
//             ReBottomNavbarItem(
//               path: "lib/assets/icons/home_outline.svg",
//               selectedIndex: controller.navbarIndex(),
//               itemIndex: 1,
//               labelText: "Home",
//               onTap: () {
//                 controller.navbarIndex(1);
//               },
//             ),
//             ReBottomNavbarItem(
//               path: "lib/assets/icons/activity_outline.svg",
//               selectedIndex: controller.navbarIndex(),
//               itemIndex: 2,
//               labelText: "Activity",
//               onTap: () {
//                 controller.navbarIndex(2);
//               },
//             ),
//             ReBottomNavbarItem(
//               path: "lib/assets/icons/community_outline.svg",
//               selectedIndex: controller.navbarIndex(),
//               itemIndex: 3,
//               labelText: "Community",
//               onTap: () {
//                 controller.navbarIndex(3);
//               },
//             ),
//             ReBottomNavbarItem(
//               path: "lib/assets/icons/profile_outline.svg",
//               selectedIndex: controller.navbarIndex(),
//               itemIndex: 4,
//               labelText: "Profile",
//               onTap: () {
//                 controller.navbarIndex(4);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class UserHomeView extends GetView<HomeController> {
//   const UserHomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final deviceSize = MediaQuery.of(context).size;
//     return Scaffold(
//       extendBody: true,
//       appBar: AppBar(
//         title: const Row(
//           children: [
//             SizedBox(
//               width: 12,
//             ),
//             ReHeadingText(
//               text: "WORK",
//               margin: EdgeInsets.all(0),
//               fontWeight: FontWeight.w800,
//               fontSize: 28,
//             ),
//             ReHeadingText(
//               text: "SHOP",
//               margin: EdgeInsets.all(0),
//               textColor: ColorsTheme.secondary,
//               fontWeight: FontWeight.w800,
//               fontSize: 28,
//             ),
//           ],
//         ),
//         actions: [
//           ReIconButton(
//             margin: const EdgeInsets.all(0),
//             icon: const ReSVGLoader(
//                 path: "lib/assets/icons/notification_outline.svg"),
//             onPressed: () {
//               debugPrint("Notification Pressed");
//             },
//           ),
//           ReIconButton(
//             margin: const EdgeInsets.all(0),
//             icon:
//                 const ReSVGLoader(path: "lib/assets/icons/setting_outline.svg"),
//             onPressed: () {
//               Get.toNamed('/setting');
//               debugPrint("Setting Pressed");
//             },
//           ),
//           const SizedBox(
//             width: 24,
//           ),
//         ],
//       ),
//       body: SizedBox(
//         width: deviceSize.width,
//         height: deviceSize.height,
//         child: ReScrollView(
//           scrollController: ScrollController(),
//           slivers: [
//             SliverFillRemaining(
//               hasScrollBody: false,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(24, 20, 24, 8),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const ReHeadingText(text: "Services"),
//                         ReCard(
//                           padding: const EdgeInsets.all(0),
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                 top: 0,
//                                 right: 0,
//                                 child: ReSVGLoader(
//                                   path:
//                                       'lib/assets/images/radius_top_right.svg',
//                                   width: deviceSize.width / 1.8,
//                                   height: deviceSize.width / 1.8,
//                                 ),
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   Expanded(
//                                     flex: 7,
//                                     child: AspectRatio(
//                                       aspectRatio: 1 / 1,
//                                       child: Container(
//                                         color: ColorsTheme.secondary,
//                                         child: const Center(
//                                           child: ReHeadingText(text: "LOGO"),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Expanded(
//                                     flex: 5,
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(16),
//                                       child: Obx(
//                                         () => ReElevatedButton(
//                                           onPressed: controller
//                                                   .currentProgress()
//                                               ? null
//                                               : () {
//                                                   Get.toNamed('/bookservice');
//                                                   debugPrint("Book Pressed");
//                                                 },
//                                           child: ReHeadingText(
//                                             text: controller.currentProgress()
//                                                 ? "In Progress"
//                                                 : "Book Now",
//                                             fontSize: 12,
//                                             textColor: ColorsTheme.background,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         const ReDivider(),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Container(
//                               margin: const EdgeInsets.all(4),
//                               child: const ReSVGLoader(
//                                   path: "lib/assets/icons/pin_map_outline.svg"),
//                             ),
//                             const ReHeadingText(text: "Maps"),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: GestureDetector(
//                       onTap: () => Get.toNamed('/gmap'),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           color: ColorsTheme.surface,
//                         ),
//                         child: AspectRatio(
//                           aspectRatio: 1 / 1,
//                           child: Obx(
//                             () => Image.network(
//                               'https://maps.googleapis.com/maps/api/staticmap?size=500x500&markers=color:red%7C${controller.sourceLatlng.latitude},${controller.sourceLatlng.longitude}|${controller.destinationLatlng.latitude},${controller.destinationLatlng.longitude}&maptype=roadmap&path=color:0xeeba56|weight:5${controller.polylineRoute()}&key=${controller.gmapKey}',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class UserListOfPage extends StatelessWidget {
//   final int index;
//   const UserListOfPage({
//     super.key,
//     required this.index,
//   });

//   @override
//   Widget build(BuildContext context) {
//     if (index == 1) {
//       return const UserHomeView();
//     } else if (index == 2) {
//       return const ActivityView();
//     } else if (index == 3) {
//       return const CommunityView();
//     } else if (index == 4) {
//       return const ProfileView();
//     } else {
//       return Container(
//         padding: const EdgeInsets.all(0),
//         child: const ReHeadingText(text: "Page Not Found"),
//       );
//     }
//   }
// }
