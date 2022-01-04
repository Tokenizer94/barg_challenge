part of 'profile_screen.dart';

class ProfileViewMobile extends StatelessWidget {
  const ProfileViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GetBuilder(
            builder: (UserViewModel userViewModel) {
              /// `Appbar`
              return AppbarComponent(
                titleText: userViewModel.selectedUserForProfileInspection.name,
                hasBackButton: true,
                profileImage:
                    userViewModel.selectedUserForProfileInspection.picture,
              );
            },
          ),
          SizedBox(height: 16.h),
          const UserInfoCardWidget(),
          SizedBox(height: 16.h),

          /// `Friends text`
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Text(
              "${'friends'.tr}:",
              style: styleGenerator(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8.h),
          const FriendsListViewWidget(),
        ],
      ),
    );
  }
}

/// Card that contains some of user data with `edit button`
class UserInfoCardWidget extends StatelessWidget {
  const UserInfoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: GetBuilder(
            builder: (UserViewModel userViewModel) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /// `Balance text`
                  CustomRichTextWidget(
                    title: "${'balance'.tr}: ",
                    content:
                        userViewModel.selectedUserForProfileInspection.balance,
                  ),
                  SizedBox(height: 6.h),

                  /// `Age text`
                  CustomRichTextWidget(
                    title: "${'age'.tr}: ",
                    content: userViewModel.selectedUserForProfileInspection.age
                        .toString(),
                  ),
                  SizedBox(height: 6.h),

                  /// `Register Date text`
                  CustomRichTextWidget(
                    title: "${'register_date'.tr}: ",
                    content: userViewModel
                        .selectedUserForProfileInspection.registered,
                  ),
                  SizedBox(height: 6.h),

                  Row(
                    children: [
                      /// `About text`
                      Expanded(
                        flex: 2,
                        child: CustomRichTextWidget(
                          title: "${'about'.tr}: ",
                          content: userViewModel
                              .selectedUserForProfileInspection.about,
                          maxLines: 2,
                        ),
                      ),
                      SizedBox(width: 8.w),

                      /// `Edit button`
                      if (userViewModel
                          .selectedUserForProfileInspection.isOwner)
                        Expanded(
                          child: ElevatedButtonWidget(
                            btnText: 'edit'.tr,
                            width: double.infinity,
                            height: 30.h,
                            onPressBtn: () {},
                          ),
                        ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

/// Widget that shows `horizontal list of friends`
class FriendsListViewWidget extends StatelessWidget {
  const FriendsListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      width: double.infinity,
      height: 35.h,
      child: GetBuilder(
        builder: (UserViewModel userViewModel) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(top: 2.h, bottom: 2.h, right: 30.w),
            itemCount:
                userViewModel.selectedUserForProfileInspection.friends.length,
            separatorBuilder: (context, index) {
              return SizedBox(width: 8.w);
            },
            itemBuilder: (context, index) {
              return ElevatedButtonWidget(
                btnText: userViewModel
                    .selectedUserForProfileInspection.friends[index].name,
                onPressBtn: () => userViewModel.selectFriendProfile(
                  userViewModel
                      .selectedUserForProfileInspection.friends[index].guid,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
