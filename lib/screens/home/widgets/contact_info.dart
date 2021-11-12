import 'package:div_a_site/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInfo extends StatelessWidget {
  ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextCard(
          post: 'CR',
          responsibility: 'Div A',
          name: 'Nayan Chandak',
          mail: '.viit.ac.in',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextCard(
              post: 'BR',
              responsibility: 'Batch A1',
              name: 'Pranav Bagade',
              mail: '.viit.ac.in',
            ),
            TextCard(
              post: 'BR',
              responsibility: 'Batch A2',
              name: 'Mohammad Faiz Saiyad',
              mail: 'mohdfaiz.22010125@viit.ac.in',
            ),
            TextCard(
              post: 'BR',
              responsibility: 'Batch A3',
              name: 'Suraj Wadikar',
              mail: '.viit.ac.in',
            ),
          ],
        ),
      ],
    );
  }
}

class TextCard extends StatelessWidget {
  void launchUrl() async {
    await canLaunch('mailto:${mail}')
        ? await launch('mailto:${mail}')
        : throw 'Could not send mail to $mail';
  }

  const TextCard({
    Key? key,
    required this.post,
    required this.mail,
    required this.responsibility,
    required this.name,
  }) : super(key: key);

  final String mail;

  final String post;
  final String responsibility;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '${post} Details',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: primaryColor),
          ),
          RichText(
            text: TextSpan(
                text: 'Name: ',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: primaryColor),
                children: [
                  TextSpan(
                    text: '${name}',
                    style: Theme.of(context).textTheme.headline6,
                  )
                ]),
          ),
          RichText(
            text: TextSpan(
                text: 'Class: ',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: primaryColor),
                children: [
                  TextSpan(
                    text: '${responsibility}',
                    style: Theme.of(context).textTheme.headline6,
                  )
                ]),
          ),
          MaterialButton(
            onPressed: () => launchUrl(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Contact Now',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
              ),
            ),
            color: primaryColor,
          )
        ],
      ),
    );
  }
}
