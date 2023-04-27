import 'package:flutter/material.dart';

class PlanPage extends StatelessWidget {
  const PlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    const titileFontStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

    const fontStyle = TextStyle(
      fontSize: 19,
      color: Colors.black,
      fontStyle: FontStyle.italic,
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "План - Владислав Смирнов",
          style: TextStyle(fontSize: 25, fontFamily: "Lobster"),
        ),
        backgroundColor: Colors.black12,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage("assets/images/background.jpg"), // ваше изображение
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        // about
                        Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              // title
                              const Text("1. О чём рассказывал",
                                  textAlign: TextAlign.center,
                                  style: titileFontStyle),

                              // description
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text(
                                    "Нэцкэ - это японские миниатюрные скульптуры, которые часто изображают животных, богов, героев или сцены из японской истории и фольклора.",
                                    textAlign: TextAlign.center,
                                    style: fontStyle),
                              ),
                            ],
                          ),
                        ),

                        // history
                        Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              // title
                              const Text("2. История полявления",
                                  textAlign: TextAlign.center,
                                  style: titileFontStyle),

                              // description
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: const Text(
                                    "Первые нэцкэ появились в Японии в 17 веке. Их создание было связано с ограничениями, налагаемыми правительством на ношение крупных предметов украшения.",
                                    textAlign: TextAlign.center,
                                    style: fontStyle),
                              ),
                            ],
                          ),
                        ),

                        // difference
                        Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              // title
                              const Text("3. Особенности и Отличия",
                                  textAlign: TextAlign.center,
                                  style: titileFontStyle),

                              // description
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: Column(
                                  children: const [
                                    Text(
                                        "● Миниатюрный размер и детализированная проработка",
                                        textAlign: TextAlign.center,
                                        style: fontStyle),
                                    Text(
                                        "● Каждая фигурка имеет свою уникальную историю и символическое значение.",
                                        textAlign: TextAlign.center,
                                        style: fontStyle),
                                    Text(
                                        "● Для изготовления используют разный материал",
                                        textAlign: TextAlign.center,
                                        style: fontStyle),
                                    Text(
                                        "● Разнообразие нэцкэ, например: животные, человеческие фигуры, мифологические существа",
                                        textAlign: TextAlign.center,
                                        style: fontStyle),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // using now
                        Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              // title
                              const Text(
                                  "4. Как используются в современном мире",
                                  textAlign: TextAlign.center,
                                  style: titileFontStyle),

                              // description
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: const [
                                    Text(
                                      "В настоящее время нэцкэ используются как часть декора или символический подарок другому человеку. Также, нэцкэ иногда используют для кукольного театра.",
                                      textAlign: TextAlign.center,
                                      style: fontStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
