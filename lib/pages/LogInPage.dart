import 'package:flutter/material.dart';
import 'package:flutter_doguber_v1/kakao_login.dart';
import 'package:flutter_doguber_v1/provider.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final viewModel = MainViewModel(KakaoLogin());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login test"),
        actions: [
          if (viewModel.isLogined)
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            if (viewModel.isLogined)
              Positioned(
                top: 10,
                right: 10,
                child: Row(
                  children: [
                    Image.network(
                      viewModel.user?.kakaoAccount?.profile?.profileImageUrl ??
                          '',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                if (viewModel.isLogined)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 200,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('매칭', overflow: TextOverflow.visible),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                              backgroundColor: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        SizedBox(
                          width: 150,
                          height: 200,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('커뮤니티', overflow: TextOverflow.visible),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (viewModel.isLogined)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 100,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('프리미엄', overflow: TextOverflow.visible),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        SizedBox(
                          width: 150,
                          height: 100,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('프로필', overflow: TextOverflow.visible),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (!viewModel.isLogined)
                  ElevatedButton(
                    onPressed: () async {
                      await viewModel.login();
                      setState(() {});
                    },
                    child: const Text('로그인'),
                  ),
              ],
            ),
            if (viewModel.isLogined)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: FractionallySizedBox(
                    widthFactor: 1.0,
                    child: ElevatedButton(
                      onPressed: () async {
                        await viewModel.logout();
                        setState(() {});
                      },
                      child: const Text('로그아웃'),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
