part of 'pages.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_get_started.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Fly Like a Bird',
                    style: whiteTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 16),
                Text(
                  'Explore new world with us and let\n yourself get an amazing experiences',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: 'Get Started',
                  width: 200,
                  margin: const EdgeInsets.only(top: 50, bottom: 30),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/sign-up',
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
