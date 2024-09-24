import 'package:flutter/material.dart';
import 'package:pks_hw_pr3/components/item_note.dart';
import '../models/note.dart';
import 'note_page.dart';

final List<Note> notes = [
  Note(
      "Сковорода MercuryHaus МС-6320, 14 см желтый",
      "Сковорода MercuryHaus МС-6320 с диаметром 14 см не займет много места на кухне и поможет быстро справляться с обжариванием различных продуктов. Данная сковорода подходит для газовых, стеклокерамических, электрических типов плит.",
      "https://c.dns-shop.ru/thumb/st4/fit/wm/0/0/1a6f969924a4608a53dae94112e9e370/6443bbb5f3e70b54a5d5c17e93ade14e3ecdd58e9023fb63daaaed2b3000db52.jpg.webp"),
  Note(
      "Сковорода-блинница Moulin Villa ONX-24-I, 24 см черный",
      "Сковорода Moulin Villa ONX-24-I является универсальным решением, так как подходит для всех типов плит. В дно посуды интегрирован ферромагнитный диск, который равномерно распределяет тепло и повышает устойчивость к деформации.",
      "https://c.dns-shop.ru/thumb/st4/fit/500/500/1d066615380dcaca1cdaea2adcbc286f/ef69e9b5ec4742016f3f4ef89172f0260e41124ba4fb71c34b5dce13bd204421.jpg.webp"),
  Note(
      "Сковорода-гриль НМП Готовить легко Stone GL0226, 26 см черный",
      "Сковорода-гриль НМП GL0226 круглой формы с диаметром 26 см и ребристым покрытием станет востребованной помощницей на кухне для приготовления продуктов на гриле. Литой корпус из алюминия с утолщенным дном обеспечивает равномерный нагрев по всему объему сковороды.",
      "https://c.dns-shop.ru/thumb/st4/fit/500/500/55e7d413c473eca8373be9892b7e9bbf/2498e394d3d9cf890c7b69663dec700f8d50ea22e7f6b05b8e8262b5111d1680.jpg.webp"),
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Домашняя посуда"),
      ),
      body: ListView.builder(
        itemCount: notes.length, // Используем длину списка notes
        itemBuilder: (BuildContext context, int index) {
          final note = notes[index]; // Получаем текущую заметку
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      NotePage(note: note), // Передаем заметку
                ),
              );
            },
            child: ItemNote(
              title: note.title,
              text: note.text,
              imageUrl: note.imageUrl,
            ),
          );
        },
      ),
    );
  }
}