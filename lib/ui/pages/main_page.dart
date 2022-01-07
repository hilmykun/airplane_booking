part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 60, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
          child: Row(
            children: const [
              CustomButtonNavigationItem(
                imageUrl: 'Assets/fi_globe.png',
                isSelected: true,
              ),
              CustomButtonNavigationItem(
                imageUrl: 'Assets/fi_book-open.png',
              ),
              CustomButtonNavigationItem(
                imageUrl: 'Assets/fi_credit-card.png',
              ),
              CustomButtonNavigationItem(
                imageUrl: 'Assets/fi_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [customButtonNavigation()],
      ),
    );
  }
}
