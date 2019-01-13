import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:what_when_where/constants.dart';
import 'package:what_when_where/resources/dimensions.dart';
import 'package:what_when_where/resources/strings.dart';
import 'package:what_when_where/services/url_launcher.dart';

class AboutPage extends StatefulWidget {
  @override
  createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation _fadeAnimation;
  Animation _slideAnimation;

  _AboutPageState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _fadeAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeOut);

    _slideAnimation = Tween(begin: Offset(0, 0.1), end: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void initState() {
    super.initState();

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _buildAppBar(context),
        body: _buildBody(context),
      );

  AppBar _buildAppBar(BuildContext context) => AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      );

  Widget _buildBody(BuildContext context) => _buildTransitions(context);

  Widget _buildTransitions(BuildContext context) => FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: _buildContent(context),
        ),
      );

  ListView _buildContent(BuildContext context) => ListView(
        padding: const EdgeInsets.symmetric(
            vertical: Dimensions.defaultSidePadding * 5,
            horizontal: Dimensions.defaultSidePadding * 3),
        children: [
          Image.asset(
            'assets/owl.jpg',
            height: 300,
          ),
          SizedBox(
            height: Dimensions.defaultSpacing * 5,
          ),
          Text(
            Strings.appName,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(color: Theme.of(context).accentColor),
          ),
          IconButton(
            icon: Icon(Icons.email),
            tooltip: Strings.emailDevelopers,
            color: Theme.of(context).accentColor,
            onPressed: () => UrlLauncher.sendEmail(
                Constants.developersEmail, '${Strings.app} ${Strings.appName}'),
          ),
          SizedBox(
            height: Dimensions.defaultSpacing * 5,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${Strings.questionsDatabasePrefix}\n',
                  style: Theme.of(context).textTheme.body2,
                ),
                TextSpan(
                  text: Strings.questionsDatabaseName,
                  style: Theme.of(context).textTheme.body2.copyWith(
                      color: Theme.of(context).accentColor,
                      decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap =
                        () => UrlLauncher.launchURL(Constants.databaseUrl),
                ),
              ],
            ),
          ),
        ],
      );
}
