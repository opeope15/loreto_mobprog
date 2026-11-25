import 'package:loreto_mobprob/widget/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Steve Rogers',
          postContent: 'I can do this all day! #AvengersAssemble',
          date: '2 hours ago',
          numOfLikes: 10,
        ), // NewsfeedCard
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
          date: 'December 1, 2023',
          numOfLikes: 3000,
          hasImage: true,
        ), // NewsfeedCard
      ],
    ); // ListView
  }
}