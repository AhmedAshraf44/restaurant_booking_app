import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/custom_appbaer.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/custom_bottom_section.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/custom_top_section.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/custom_middle_section.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/custom_search.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
      SliverToBoxAdapter(
        child: CustomAppBar(),
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 10,
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 47),
          child: CustomSearch(),
        ),
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 20,
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(left: 40),
          child: CustomTopSection(),
        ),
      ),
      SliverToBoxAdapter(
        child: CustomMiddleSection(),
      ),
      SliverToBoxAdapter(child: CustomBottomSection()),

    ]);
  }
}
// CustomTodayNewArivableListView

// class HomebodyDetails extends StatelessWidget {
//   const HomebodyDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [
//         CustomAppBar(),
//         SizedBox(
//           height: 16,
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 47),
//           child: CustomSearch(),
//         ),
//         SizedBox(
//           height: 48,
//         ),

//       ],
//     );
//   }
// }

class CustomTopListView extends StatelessWidget {
  const CustomTopListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 11),
            child: CustomTopItem(),
          );
        },
      ),
    );
  }
}

class CustomTopItem extends StatelessWidget {
  const CustomTopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/home/Group 3115.png',
      fit: BoxFit.fill,
    );
  }
}

//

class CustomBookingRestaurantListView extends StatelessWidget {
  const CustomBookingRestaurantListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CustomHomeListView extends StatelessWidget {
  const CustomHomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
