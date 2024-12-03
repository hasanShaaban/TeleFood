import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/next_button_widget.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/photo_profile_widget.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/textfield_widget.dart';

class SingupView extends StatefulWidget {
  const SingupView({super.key});
  @override
  State<SingupView> createState() => _SingupViewState();
}

class _SingupViewState extends State<SingupView> {
  String selectItem = 'Damascus';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 412,
                height: 690,
                decoration: const BoxDecoration(
                  color: kPrimeryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(75),
                    bottomRight: Radius.circular(75),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/teleFood_log_min.png',
                          width: 140,
                          height: 190,
                        ),
                        const Center(
                            child: Padding(
                          padding: EdgeInsets.only(top: 108),
                          child: PhotoProfileWidget(),
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFieldWidget(
                      icon: const Icon(Icons.edit),
                      text: 'First Name',
                      padding: 40,
                      color: kWhiteColor,
                    ),
                    TextFieldWidget(
                      icon: const Icon(Icons.edit),
                      text: 'Last Name',
                      padding: 40,
                      color: kWhiteColor,
                    ),
                    TextFieldWidget(
                      icon: const Icon(Icons.phone),
                      text: 'Phone Number',
                      padding: 40,
                      color: kWhiteColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 10),
                      child: Material(
                        color: kSecondaryColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(27),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Icon(
                                Icons.place_outlined,
                                color: kWhiteColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Select your location',
                                style: kMvBoli14.copyWith(
                                    color: kWhiteColor, fontSize: 13),
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton(
                                    // hint: ,
                                    // icon: ,
                                    items:
                                        ['Damascus', 'Hama', 'Tartous', 'Daraa']
                                            .map(
                                              (e) => DropdownMenuItem(
                                                value: e,
                                                child: Text(e),
                                              ),
                                            )
                                            .toList(),
                                    onChanged: (v) {
                                      setState(() {
                                        selectItem = v.toString();
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextFieldWidget(
                      text: 'Add location details',
                      padding: 60,
                      color: kWhiteColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'you already have an account?',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'login',
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              const NextButtonWiget()
            ],
          ),
        ),
      ),
    );
  }
}
