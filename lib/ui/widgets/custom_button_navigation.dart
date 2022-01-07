part of 'widgets.dart';

class CustomButtonNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const CustomButtonNavigationItem(
      {Key? key, required this.imageUrl, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(),
        Container(
          width: 20,
          height: 24,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            imageUrl,
          ))),
          child: Icon(Icons.home, color: kWhiteColor),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kTransparentColor, borderRadius: BorderRadius.circular(18)),
        )
      ],
    );
  }
}
