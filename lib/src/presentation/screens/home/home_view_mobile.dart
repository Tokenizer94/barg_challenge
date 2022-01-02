part of 'home_screen.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: <Widget>[
          Text(
            'Home Page',
            style: styleGenerator(),
          ),
        ],
      ),
    );
  }
}
