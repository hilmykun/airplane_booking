part of 'pages.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 210,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/image_card.png'),
            ),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                offset: const Offset(0, 10),
                blurRadius: 50,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name',
                          style: whiteTextStyle.copyWith(fontWeight: light)),
                      Text(
                        'Hilmy Al jauzy',
                        style: whiteTextStyle.copyWith(fontWeight: semiBold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_plane.png')),
                  ),
                ),
                Text(
                  'Pay',
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                )
              ],
            ),
            const SizedBox(height: 41),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            Text(
              'IDR 1.000.000',
              style: whiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Text(
          'BIG BONUS ????',
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          'Get up to \$100 bonus',
          style: greenTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return CustomButton(
          title: 'Start Fly Now',
          width: 220,
          margin: const EdgeInsets.only(top: 50),
          onPressed: () {
            Navigator.pushNamed(context, '/main-page');
          });
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), subtitle(), startButton()],
        ),
      ),
    );
  }
}
