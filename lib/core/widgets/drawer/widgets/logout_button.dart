import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 20),
      child: SizedBox(
        width: 115,
        child: ElevatedButton(
            onPressed: () async {
              final Dio dio = Dio();

              const String url = 'http://localhost:8000/api/logout?';

              try {
                final Map<String, dynamic> params = {
                  'token': token,
                };
                Response response = await dio.post(
                  url,
                  data: params,
                );
                if (response.statusCode == 200) {
                  GoRouter.of(context).push(AppRouter.kLoginViewRouter);
                  token = null;
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content:
                        Text('something went wrong, please try again later'),
                    backgroundColor: Colors.red,
                  ));
                }
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('something went wrong, please try again later'),
                  backgroundColor: Colors.red,
                ));
              }
            },
            style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(kPrimeryColor),
                foregroundColor: const WidgetStatePropertyAll(kWhiteColor),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22)))),
            child: const Row(
              children: [
                Text('Logout', style: kMvBoli18),
                SizedBox(width: 4),
                Icon(Icons.logout_rounded)
              ],
            )),
      ),
    );
  }
}

Future<void> logout(String token) async {}
