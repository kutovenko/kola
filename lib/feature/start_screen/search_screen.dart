import 'package:flutter/material.dart';
import 'package:kola/core/utils/color_picker.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ColorSearchWidget(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {},
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              label: 'Поиск',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Фавориты')
          ],
        ),
      ),
    );
  }
}

class ColorSearchWidget extends StatefulWidget {
  const ColorSearchWidget({Key? key}) : super(key: key);

  @override
  _ColorSearchWidgetState createState() => _ColorSearchWidgetState();
}

class _ColorSearchWidgetState extends State<ColorSearchWidget> {
  Color pickerColor = Color(0xFFFFFFFF);
  Color? currentColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
            'Поиск по цвету. ВЫберите основной и вспомогательный цвет интерьера'),
        MaterialPicker(
          pickerColor: pickerColor,
          onColorChanged: (color) => {pickerColor = color},
        ),
        Row(
          children: [
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(currentColor ?? Colors.white)),
              onPressed: () {
                setState(() {
                  currentColor = pickerColor;
                });
              },
              child: Text('Выбрать'),
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(currentColor ?? Colors.white)),
              onPressed: () {
                setState(() {
                  currentColor = pickerColor;
                });
              },
              child: Text('Choose'),
            ),
          ],
        )
      ],
    );
  }
}
