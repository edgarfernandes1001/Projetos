import 'package:big_music_theory/utils/class.dart';

class Data {
  static List<Recipe> recipes = [
    Recipe(
        id: '1',
        title: 'Pauta',
        imageUrl:
            'assets/images/pauta.jpg',
        nutrients: [
          Nutrients(name: 'Leitura', weight: '70%', percent: 0.7),
          Nutrients(name: 'Escrita', weight: '50%', percent: 0.5),
          Nutrients(name: 'Audição', weight: '90%', percent: 0.9),
        ],
        steps: [
          'Claves.',
          'Nomes das notas.',
          'Espaços e linhas da pauta ou pentagrama.'
        ],
        ingredients: [
          'Claves',
          'Nomes das notas.',
          'Espaços e linhas da pauta ou pentagrama.'
        ]),
    Recipe(
        id: '2',
        title: 'Compasso',
        imageUrl:
            'assets/images/compasso.jpg',
        nutrients: [
          Nutrients(name: 'Leitura', weight: '70%', percent: 0.7),
          Nutrients(name: 'Escrita', weight: '50%', percent: 0.5),
          Nutrients(name: 'Audição', weight: '90%', percent: 0.9),
        ],
        steps: [
          'Figuras e tempos.',
          'Divisão de compasso.',
          'Ponto de aumento.'
        ],
        ingredients: [
          'Figuras e tempos.',
          'Divisão de compasso.',
          'Ponto de aumento.'
        ]),
    Recipe(
        id: '3',
        title: 'Intervalos',
        imageUrl:
            'assets/images/intervalos.jpeg',
        nutrients: [
          Nutrients(name: 'Leitura', weight: '70%', percent: 0.7),
          Nutrients(name: 'Escrita', weight: '50%', percent: 0.5),
          Nutrients(name: 'Audição', weight: '90%', percent: 0.9),
        ],
        steps: [
          'Sinais de alteração.',
          'Intervalos.'
        ],
        ingredients: [
          'Sinais de alteração.',
          'Intervalos.'
        ]),
    Recipe(
        id: '4',
        title: 'Acordes',
        imageUrl:
            'assets/images/acordes.jpg',
        nutrients: [
          Nutrients(name: 'Leitura', weight: '70%', percent: 0.7),
          Nutrients(name: 'Escrita', weight: '50%', percent: 0.5),
          Nutrients(name: 'Audição', weight: '90%', percent: 0.9),
        ],
        steps: [
          'Formação de acordes maiores.',
          'Formação de acordes menores.'
        ],
        ingredients: [
          'Formação de acordes maiores.',
          'Formação de acordes menores.'
        ]),
  ];
}
