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
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Full Name'),
              const SizedBox(height: 10),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Enter your full name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget emailInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Email Address'),
              const SizedBox(height: 10),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Enter your email address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Password'),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget hobbyInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Hobby'),
              const SizedBox(height: 10),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Your Hobby',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget submitButton() {
        // ignore: sized_box_for_whitespace
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bonus');
              },
              style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  )),
              child: Text('Get Started',
                  style: whiteTextStyle.copyWith(
                      fontSize: 18, fontWeight: medium))),
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
