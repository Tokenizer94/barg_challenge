part of 'profile_screen.dart';

class ProfileViewMobile extends StatelessWidget {
  const ProfileViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
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
          const UserInfoCardWidget()
        ],
      ),
    );
  }
}

class UserInfoCardWidget extends StatelessWidget {
  const UserInfoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserViewModel _userViewModel = Get.find<UserViewModel>();
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /// `Balance text`
              CustomRichTextWidget(
                title: "${'balance'.tr}: ",
                content:
                    _userViewModel.selectedUserForProfileInspection.balance,
              ),
              SizedBox(height: 6.h),

              /// `Age text`
              CustomRichTextWidget(
                title: "${'age'.tr}: ",
                content: _userViewModel.selectedUserForProfileInspection.age
                    .toString(),
              ),
              SizedBox(height: 6.h),

              /// `Register Date text`
              CustomRichTextWidget(
                title: "${'register_date'.tr}: ",
                content:
                    _userViewModel.selectedUserForProfileInspection.registered,
              ),
              SizedBox(height: 6.h),

              Row(
                children: [
                  /// `About text`
                  Expanded(
                    flex: 2,
                    child: CustomRichTextWidget(
                      title: "${'about'.tr}: ",
                      content:
                          _userViewModel.selectedUserForProfileInspection.about,
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(width: 8.w),

                  /// `Edit button`
                  if (_userViewModel.selectedUserForProfileInspection.isOwner)
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
          ),
        ),
      ),
    );
  }
}
