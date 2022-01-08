part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Text('Join us and get \nyour next journey',
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold)),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return const CustomTextFormField(
            title: 'Full Name', hintText: 'Enter Your Name');
      }

      Widget emailInput() {
        return const CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your Email Address',
        );
      }

      Widget passwordInput() {
        return const CustomTextFormField(
          title: 'Password',
          hintText: 'Your Password',
          obsecureText: true,
        );
      }

      Widget hobbyInput() {
        return const CustomTextFormField(
            title: 'You Hobby', hintText: 'You Hobby');
      }

      Widget submitButton() {
        // ignore: sized_box_for_whitespace
        return CustomButton(
          title: 'Sign Up',
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/bonus',
            );
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 50, bottom: 75),
        child: Text(
          'Term And Condition',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
