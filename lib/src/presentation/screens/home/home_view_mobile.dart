part of 'home_screen.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const AppbarComponent(
            titleText: 'Mostafa Fahimi',
            profileImage: '',
          ),
        ],
      ),
    );
  }
}
