part of 'home_screen.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          /// `Appbar`
          GetBuilder(
            builder: (UserViewModel userViewModel) {
              return AppbarComponent(
                titleText: userViewModel.currentUser.name,
                profileImage: userViewModel.currentUser.picture,
              );
            },
          ),

          /// `ListView`
          const UsersListViewWidget(),
        ],
      ),
    );
  }
}

/// `Users` list view widget
class UsersListViewWidget extends StatelessWidget {
  const UsersListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (UserViewModel userViewModel) {
        return RefreshIndicator(
          onRefresh: () => userViewModel.refreshData(),
          color: Theme.of(context).colorScheme.secondary,
          child: SizedBox(
            height: 0.88.sh,
            child: ListView.separated(
              padding: EdgeInsets.only(
                top: 10.h,
                bottom: 100.h,
                left: 16.w,
                right: 16.w,
              ),
              itemCount: userViewModel.users.length,
              separatorBuilder: (context, index) {
                return SizedBox(height: 4.h);
              },
              itemBuilder: (context, index) {
                return UsersListViewItemWidget(index: index);
              },
            ),
          ),
        );
      },
    );
  }
}

/// Widget for each item of the users list
class UsersListViewItemWidget extends StatelessWidget {
  final int index;
  const UsersListViewItemWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserViewModel _userViewModel = Get.find<UserViewModel>();
    return Card(
      color: Theme.of(context).colorScheme.secondary,
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                /// `User avatar`
                UserAvatarComponent(
                  image: _userViewModel.users[index].picture,
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    /// `User fullname`
                    Text(
                      _userViewModel.users[index].name,
                      style: styleGenerator(
                        fontWeight: FontWeight.bold,
                        fontColor: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                    SizedBox(height: 4.h),
    
                    /// `User email address`
                    Text(
                      _userViewModel.users[index].email,
                      style: styleGenerator(
                        fontSize: 13,
                        fontColor: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.h),
    
            /// `Address text`
            SizedBox(
              width: double.infinity,
              child: Text(
                "${'address'.tr}: ${_userViewModel.users[index].address}",
                style: styleGenerator(),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
