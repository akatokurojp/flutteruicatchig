import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class CustomBottomSheet extends StatelessWidget {
  final double customHeight;
  final Widget? icon;
  final String? comment;

  const CustomBottomSheet(
      {Key? key, this.customHeight = 0.90, this.icon, this.comment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height * customHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        height: 3.0,
                        width: 50.0,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: const Text(
                        'Comments',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 9,
                        itemBuilder: (BuildContext context, int index) {
                          List<String> commentNames = [
                            'WanderlustAdventurer',
                            'GlobeTrotter_Jess',
                            'BonjourAmelie',
                            'EiffelExplorer',
                            'JetsetterMike',
                            'ChicWanderings',
                            'LostInLouvre',
                            'EiffelDreamer',
                            'CafeCrawlSasha',
                          ];
                          List<String> additionalSubtitles = [
                            'OMG, Paris looks like a dream! Dont forget to indulge in all the delicious pastries and take tons of photos!',
                            'So jealous right now! Send some Parisian vibes my way and have a croissant for me, will you? Have an amazing time',
                            'Bienvenue à Paris! If you need any tips on the best cafés or hidden gems, just let me know. Enjoy every moment',
                            'You made it to the Eiffel Tower! Living vicariously through your adventures. Keep those pics coming',
                            'Paris is calling, and you answered! Have a blast exploring the city of love and savoring the culture. Safe travels, amigo',
                            'Your Paris pics are giving me serious FOMO! Enjoy the fashion, the art, and the ambiance. Cant wait to hear all your stories',
                            'The Louvre awaits your artistic soul! Make sure to soak in every masterpiece and create memories that will last a lifetime',
                            'Living the Parisian dream! Wishing you cozy strolls along the Seine and magical sunsets by the Eiffel Tower.',
                            'Bonjour from back home! Cant wait to hear about the cafés you ve discovered and the flavors you ve savored.'
                          ];

                          return ListTile(
                            leading: CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.black,
                            ),
                            title: Text(
                              '${commentNames[index]}',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, bottom: 5.0),
                                  child: Text(
                                    additionalSubtitles[index],
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ),
                                Text(
                                  'Reply',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            trailing: LikeButton(
                              size: 24,
                              likeCount: 5,
                              countPostion: CountPostion.bottom,
                            ),
                          );
                        },
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      title: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Add a comment',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Row(
        children: [
          if (icon != null) icon!,
          if (icon != null && comment != null) SizedBox(width: 8),
          if (comment != null) Text(comment!),
        ],
      ),
    );
  }
}
