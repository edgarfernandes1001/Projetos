import 'package:flutter/material.dart';
import 'package:big_music_theory/utils/class.dart';
import 'package:big_music_theory/utils/widgets.dart';
import 'package:big_music_theory/questions.dart';

class DetailsPage extends StatelessWidget {
  final Recipe recipe;
  DetailsPage({this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              title: Text(recipe.title),
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: recipe.id,
                  child: FadeInImage(
                    image: AssetImage(
                        recipe.imageUrl),
                    fit: BoxFit.cover,
                    placeholder: AssetImage('assets/images/loading.gif'),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.only(top: 8.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Text('Habilidades',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                NutritionWidget(
                  nutrients: recipe.nutrients,
                ),
                Text('Lições',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                IngredientsWidget(
                  ingredients: recipe.ingredients,
                ),
                Text('Exercícios',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                RecipeSteps(
                  steps: recipe.steps,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecipeSteps extends StatelessWidget {
  final List<String> steps;
  RecipeSteps({this.steps});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: steps.length,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CallQuestions(name: steps[index]),
              ),
            );
          },
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Theme.of(context).accentColor,
                child: Text('${index + 1}',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(steps[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ),
              )
            ],
          ),
          ),
        );
      },
    );
  }    
}

class CallQuestions extends StatelessWidget {
  final String name;

  CallQuestions({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    switch (name){
      case 'Nomes das notas.': return Quiz2();
      break;
      case 'Divisão de compasso.': return Quiz2();
      break;
      case 'Intervalos.': return Quiz2();
      break;
      case 'Formação de acordes menores.': return Quiz2();
      break;
      default: return Quiz1();
    }
  }
}

class IngredientsWidget extends StatelessWidget {
  final List<String> ingredients;
  IngredientsWidget({this.ingredients});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        itemCount: ingredients.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              backgroundColor: Theme.of(context).accentColor,
              label: Text(ingredients[index],
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          );
        },
      ),
    );
  }
}

class NutritionWidget extends StatelessWidget {
  final List<Nutrients> nutrients;
  NutritionWidget({this.nutrients});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86,
      width: double.infinity,
      child: ListView.builder(
        itemCount: nutrients.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return CircleIndicator(percent: nutrients[index].percent,nutrient: nutrients[index],);
        },
      ),
    );
  }
}
