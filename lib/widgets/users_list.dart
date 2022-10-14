import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen/UserDetailScreen.dart';
import 'package:flutter_application_1/user.dart';

class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      UserDetailScreen(user: usersList[index]),
                ),
              );
            },
            child: Card(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: usersList[index].avatar == ''
                          ? Image.network(
                              'https://cdn.onlinewebfonts.com/svg/img_207975.png')
                          : Image.network(usersList[index].avatar,
                              fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Имя: ' + usersList[index].firstname,
                            textAlign: TextAlign.left,
                          ),
                          Text('Фамилия: ' + usersList[index].lastname),
                          Text('Возраст: ' + usersList[index].age.toString()),
                          Text('Телефон: ' + usersList[index].phone),
                          Text('Телефон: ' + usersList[index].email),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
          );
        });
  }
}

List<User> usersList = [
  User(
    age: 16,
    firstname: 'Иван',
    lastname: 'Иванов',
    phone: '213123123',
    email: 'example@mail.ru',
    avatar:
        'https://bipbap.ru/wp-content/uploads/2021/07/modnye-avatarki-dlya-vk_0.jpg',
  ),
  User(
    age: 17,
    firstname: 'Костя',
    lastname: 'Кощеев',
    phone: '213123123',
    email: 'example@mail.ru',
    avatar: 'https://ava-24.com/_ph/146/479768406.jpg',
  ),
  User(
    age: 16,
    firstname: 'Данил',
    lastname: 'Куриленко',
    phone: '213123123',
    email: 'example@mail.ru',
    avatar: '',
  ),
  User(
    age: 16,
    firstname: 'Марк',
    lastname: 'Желя',
    phone: '213123123',
    email: 'example@mail.ru',
    avatar:
        'https://i.pinimg.com/736x/86/95/54/8695540db1e9224367ed9d1a4884ccfc.jpg',
  ),
  User(
    age: 16,
    firstname: 'Онтон',
    lastname: 'Гасай',
    phone: '213123123',
    email: 'example@mail.ru',
    avatar:
        'https://aniyuki.com/wp-content/uploads/2021/06/aniyuki-anime-avatars-gif-discord-72.gif',
  ),
];
