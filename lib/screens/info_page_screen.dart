import 'package:flutter/material.dart';
import 'package:savetheplanet/components/Information.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:savetheplanet/constants.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  final Information information = Information();
  String dialogTitle;
  String dialogDescription;
  List<Slide> slides = [];
  Function goToTab;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'SAVE THE PLANET',
              style: kAppBarTextStyle,
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(8, (index) {
            return GestureDetector(
              onTap: () {
                slides = [];
                displaySlidesDialog(context, index);
              },
              child: GridTile(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          information.getText(index),
                          textAlign: TextAlign.center,
                          style: kTextStyle.copyWith(
                            color: Colors.red.shade900,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Center(
                        child: Image(
                          image: AssetImage(
                            information.getImageIcon(index),
                          ),
                          height: 120.0,
                          width: 120.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  void displaySlidesDialog(BuildContext context, int index) {
     showDialog(
      context: context,
      child: IntroSlider(
        slides: listOfSlides(index),
        listCustomTabs: renderListCustomTabs(index),
        backgroundColorAllSlides: Colors.white,
        refFuncGoToTab: (refFunc) {
          this.goToTab = refFunc;
        },
    
        // Skip button
        renderSkipBtn: this.renderSkipBtn(),
        colorSkipBtn: Colors.green.shade300,
        highlightColorSkipBtn: Colors.green.shade900,
    
        // Next button
        renderNextBtn: this.renderNextBtn(),
    
        // Done button
        renderDoneBtn: this.renderDoneBtn(),
        onDonePress: this.onDonePress,
        colorDoneBtn: Colors.green.shade300,
        highlightColorDoneBtn: Colors.green.shade900,
    
        // Dot indicator
        colorDot: Colors.green.shade900,
        sizeDot: 13.0,
        typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      ),
    );
  }

  void onDonePress() {
    this.goToTab(0);
    Navigator.pop(context);
    slides = [];
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Colors.brown.shade900,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Colors.brown.shade900,
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Colors.brown.shade900,
    );
  }

  List<Widget> renderListCustomTabs(int index) {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                currentSlide.title,
                style: currentSlide.styleTitle,
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.only(top: 20.0),
            ),
            Container(
              child: Text(
                currentSlide.description,
                style: currentSlide.styleDescription,
                textAlign: TextAlign.center,
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
              ),
              margin: EdgeInsets.only(top: 20.0),
            ),
          ],
        ),
      ));
    }
    return tabs;
  }

  List<Slide> listOfSlides(int index) {
    slides.add(
      Slide(
        title: information.getSlide1DialogTitle(index),
        styleTitle: kTextStyle.copyWith(color: Colors.red.shade900),
        description: information.getSlide1Description(index),
        styleDescription: kTextStyle.copyWith(color: Colors.black),
      ),
    );
    slides.add(
      Slide(
        marginDescription: EdgeInsets.all(8.0),
        title: information.getSlide2DialogTitle(index),
        styleTitle: kTextStyle.copyWith(color: Colors.red.shade900),
        description: information.getSlide2Description(index),
        styleDescription: kTextStyle.copyWith(color: Colors.black),
      ),
    );
    return slides;
  }
}
