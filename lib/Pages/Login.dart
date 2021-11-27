import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class mainLogin extends StatefulWidget {
  @override
  _mainLoginState createState() => _mainLoginState();
}

class _mainLoginState extends State<mainLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        const Locale('en'),
        const Locale('ar'),
        const Locale('es'),
        const Locale('el'),
        const Locale('nb'),
        const Locale('nn'),
        const Locale('pl'),
        const Locale('pt'),
        const Locale('ru'),
        const Locale('hi'),
        const Locale('ne'),
        const Locale('uk'),
        const Locale('hr'),
        const Locale('tr'),
        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
        // Generic Simplified Chinese 'zh_Hans'
        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
        // Generic traditional Chinese 'zh_Hant'
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 25),
              Center(
                  child: Text(
                "Enter your phone number",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(height: 25),
              Center(
                  child: Text(
                "WhatsApp will send an SMS message to verify your phone number",
                style: TextStyle(fontSize: 13),
              )),
              SizedBox(height: 5),
              Text(
                "What's my number?",
                style: TextStyle(color: Colors.lightBlueAccent),
              ),
              ElevatedButton(
                onPressed: () {
                  showCountryPicker(
                    context: context,
                    exclude: <String>['KN', 'MF'],
                    showPhoneCode: true,
                    onSelect: (Country country) {
                      print('Select country: ${country.displayName}');
                    },
                    // Optional. Sets the theme for the country list picker.
                    countryListTheme: CountryListThemeData(
                      // Optional. Sets the border radius for the bottomsheet.
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                      // Optional. Styles the search field.
                      inputDecoration: InputDecoration(
                        labelText: 'Search',
                        hintText: 'Start typing to search',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF8C98A8).withOpacity(0.2),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: Text('Show country picker'),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  child: TextFormField()),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  children: <Widget>[
                    Container(height: 50, width: 70, child: TextFormField()),
                    Container(
                        margin: EdgeInsets.only(left: 50),
                        height: 50,
                        width: 150,
                        child: TextFormField()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
