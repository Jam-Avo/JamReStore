import 'package:flutter/material.dart';
import 'package:jam_re_store/components/card_post/interaction_bar.dart';
import 'package:jam_re_store/components/card_post/post_user_header.dart';
import 'package:jam_re_store/models/post/post.dart';
import 'package:jam_re_store/styles/color_theme.dart';
import 'package:jam_re_store/styles/text_styles_app.dart';

class ArticleOpen extends StatelessWidget {
  ArticleOpen({Key? key}) : super(key: key);

  final post = Post(
    nameUser: 'User',
    avatarUser: null,
    imagePost: null,
    titlePost:
        'Esta es la vista previa del titulo de un post que tiene 3 lineas, la cual no contiene subtitulo',
    subTitlePost:
        'Es una medida tomada por el ministerio de seguridad y eventos naturales, para evitar cualquier accidente que damnifique a los tripulantes y a la carga, que proviene...',
    datePost: '20/04/2022',
    idPost: '1',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: InteractionBar(
          post: post,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          color: ColorTheme.grey2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Icon(Icons.cancel,
                        color: ColorTheme.textBlack, size: 35),
                    top: 18,
                    right: 18,
                  )
                ],
              ),
              PostUserHeader(
                post: post,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(18, 12, 18, 24),
                child: Text(
                  post.titlePost,
                  style: TextStyleApp.headlinesXl(ColorTheme.textBlack),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
                child: Text(
                  post.subTitlePost,
                  style: TextStyleApp.bodyXl(ColorTheme.grey),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
                child: Text(
                  post.subTitlePost,
                  style: TextStyleApp.bodyXl(ColorTheme.grey),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
                child: Text(
                  post.subTitlePost,
                  style: TextStyleApp.bodyXl(ColorTheme.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
