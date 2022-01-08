part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy, \nHilmy Al Jauzy',
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'where to fly today',
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_10.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                name: 'Bali',
                city: 'Denpasar',
                imageUrl: 'assets/image_1.png',
                rating: 4.5,
              ),
              DestinationCard(
                name: 'Kawah Putih',
                city: 'Bandung',
                imageUrl: 'assets/image_2.png',
                rating: 4.7,
              ),
              DestinationCard(
                name: 'Kawah hideng',
                city: 'Bogor',
                imageUrl: 'assets/image_3.png',
                rating: 4.3,
              ),
              DestinationCard(
                name: 'Hutan kertas',
                city: 'Karawang',
                imageUrl: 'assets/image_4.png',
                rating: 4.4,
              ),
              DestinationCard(
                name: 'Pangandaran',
                city: 'Cianjur',
                imageUrl: 'assets/image_8.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const DestinationTile(
              name: 'Tangkuban Perahu',
              city: 'Bandung, Indonesia',
              imageUrl: 'assets/image_4.png',
              rating: 4.7,
            ),
            const DestinationTile(
              name: 'salendang Bodas',
              city: 'Ciawi, Indonesia',
              imageUrl: 'assets/image_11.png',
              rating: 4.3,
            ),
            const DestinationTile(
              name: 'Danau Toba',
              city: 'Toba, Indonesia',
              imageUrl: 'assets/image_12.png',
              rating: 4.2,
            ),
            const DestinationTile(
              name: 'Gunung Rinjani',
              city: 'Cianjur, Indonesia',
              imageUrl: 'assets/image_13.png',
              rating: 4.5,
            ),
            const DestinationTile(
              name: 'Gunung Salak',
              city: 'Poho Deui, Indonesia',
              imageUrl: 'assets/image_14.png',
              rating: 4.8,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [header(), popularDestination(), newDestination()],
    );
  }
}
