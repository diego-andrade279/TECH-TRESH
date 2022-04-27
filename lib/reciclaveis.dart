import 'dart:ui';

import 'package:flutter/material.dart';

class Papel extends StatefulWidget {
  const Papel({Key? key}) : super(key: key);

  @override
  State<Papel> createState() => _PapelState();
}

class _PapelState extends State<Papel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          color: Colors.blueAccent,
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
        title: const Text(
          'Pepal',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.help),
            color: Colors.blueAccent,
          ),
        ],
        backgroundColor: Colors.white70,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.only(left: 8, top: 4, right: 5),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              color: Colors.white70,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.2,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/imagens/papel.png'),
                          fit: BoxFit.contain),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 50,
                            offset: Offset(20, 20))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2, top: 2, right: 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 20,
                          color: Colors.black,
                          offset: Offset(20, 20),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Text(
                          ': Avaliaçoes 0',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width / 1.01,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(115, 4, 0, 253),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 20,
                    offset: Offset(20, 20),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 1.01,
                  child: const Text(
                    ' Reduçao de pressão sobre os recursos da madeira: '
                    '  ________________________________                                             '
                    'As fibras recicladas têm origem nos resíduos de papel, '
                    ' enquanto que a fibra virgem provêm de recursos naturais, '
                    ' como por exemplo a madeira das árvores. Portanto, a reciclagem, '
                    ' ao fazer uso de papéis que já existem para produzir pasta, não '
                    'necessitam de matérias primas novas. Deste modo reduz-se a procura  '
                    ' de madeira em aproximadamente 24 árvores por cada tonelada de papel.'
                    ' _________________________________                                                                                                                                                    '
                    ' Poupança de energia e água:                           '
                    ' _________________________________                     '
                    ' A fabricação de papel reciclado necessita, '
                    ' geralmente de menos energia, menos água e '
                    'menos substâncias químicas, para a pasta do '
                    'que a fabricação de papel em fibra virgem. '
                    ' Estima-se que a economia na fabricação do '
                    'papel reciclado em comparação com o papel fibra '
                    'virgem é aproximadamente 33% em energia e 49% em água.'
                    '  _________________________________________     '
                    'Reduz as emissões de CO2: '
                    '_______________________________________            '
                    'A reciclagem proporciona ao papel uma nova vida, uma '
                    'vantagem essencial dos papéis reciclados, uma vez que '
                    'o papel é reciclado, pode-se reciclar de 4 a 7 vezes '
                    'antes de que as fibras se tornem muito curtas para a '
                    'sua utilização. Ao reciclar, evitamos '
                    'a geração de resíduos de papel.                       ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.7,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/imagens/cicloP.jpg'),
                        fit: BoxFit.scaleDown,
                        scale: 1.5,
                        alignment: Alignment.bottomCenter),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: (() {}),
                child: const Text(
                  'Recicle  1Kg Papel',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
      backgroundColor: Colors.white70,
    );
  }
}

class Plastico extends StatefulWidget {
  const Plastico({Key? key}) : super(key: key);

  @override
  State<Plastico> createState() => _PlasticoState();
}

class _PlasticoState extends State<Plastico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          color: Colors.red,
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
        title: const Text(
          'Plastico',
          style: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.help),
            color: const Color.fromARGB(255, 255, 0, 0),
          ),
        ],
        backgroundColor: Colors.white70,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.only(left: 8, top: 4, right: 2),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              color: Colors.white70,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.2,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/imagens/plastico-.png'),
                          fit: BoxFit.contain),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 50,
                            offset: Offset(20, 20))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 2, right: 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 20,
                          color: Colors.black,
                          offset: Offset(20, 20),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp,
                            color: Color.fromARGB(255, 15, 14, 7)),
                        Icon(Icons.star_rate_sharp,
                            color: Color.fromARGB(255, 10, 9, 6)),
                        Text(
                          ': Avaliaçoes 0',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width / 1.01,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 253, 0, 0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15,
                    offset: Offset(20, 20),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    ' RECICLAGEM DE PLASTICO:                                               '
                    'O crescimento da população e o estímulo ao consumo de produtos industrializados descartáveis têm '
                    'aumentado a quantidade e a diversidade dos resíduos urbanos. A simples disposição dos resíduos '
                    'industriais, comerciais e domésticos urbanos em aterros sanitários fez com que eles estejam em vias '
                    ' de saturação. A utilização desses resíduos como matéria-prima tem sido adotada como solução para '
                    ' o problema, mas como é uma atividade recente, ainda não é aceita como melhor alternativa. Na '
                    ' presente dissertação são analisados criticamente os problemas relacionados ao processo de '
                    ' reciclagem de PET, com vistas, especialmente, ao processo de reciclagem “bottle-to-bottle”, para uso '
                    ' alimentício. Os aspectos de perda e recuperação das propriedades do material, de contaminação '
                    ' química e biológica são discutidos, bem como o sempre relevante problema da legislação, que parece '
                    'ser o mais sério neste caso. Atualmente o mercado no Brasil, consegue reciclar cerca de 50% da '
                    'produção do PET, o que significa que há potencial para grande melhoria nesse aspecto. '
                    '  ____________________________________________        '
                    '                                                                          ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/imagens/typeP.png'),
                        fit: BoxFit.scaleDown,
                        scale: 1.2,
                        alignment: Alignment.bottomCenter),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: (() {}),
                child: const Text(
                  'Recicle  1Kg Plastico',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
      backgroundColor: Colors.white70,
    );
  }
}

class Vidro extends StatefulWidget {
  const Vidro({Key? key}) : super(key: key);

  @override
  State<Vidro> createState() => _VidroState();
}

class _VidroState extends State<Vidro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          color: Color.fromARGB(255, 28, 216, 35),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
        title: const Text(
          'Vidro',
          style: TextStyle(
              color: Color.fromARGB(255, 48, 218, 53),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.help),
            color: const Color.fromARGB(255, 48, 218, 53),
          ),
        ],
        backgroundColor: Colors.white70,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.only(left: 8, top: 4, right: 2),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              color: Colors.white70,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.2,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/imagens/vidro.png'),
                          fit: BoxFit.contain),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 50,
                            offset: Offset(20, 20))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 2, right: 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 20,
                          color: Colors.black,
                          offset: Offset(20, 20),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp,
                            color: Color.fromARGB(255, 15, 14, 7)),
                        Icon(Icons.star_rate_sharp,
                            color: Color.fromARGB(255, 10, 9, 6)),
                        Text(
                          ': Avaliaçoes 0',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width / 1.01,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 21, 253, 0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15,
                    offset: Offset(20, 20),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    ' RECICLAGEM DE VIDRO:   '
                    '___________________________________________'
                    'Uma das maiores vantagens do vidro, além da beleza e '
                    'segurança que nos oferece. É que o vidro é um material 100% '
                    'reciclável, ou seja, pode ser reutilizado novamente na '
                    'fabricação de vidros novos sem perder a qualidade e sua essência. '
                    'Assim como o vidro é feito, na reciclagem os vidro devem ser separados por tipo e cores. '
                    'O vidro comum funde a uma temperatura a mais de 1000ºC, enquanto que a temperatura de fusão da fabricação do vidro é de 1600ºC. '
                    'Isso reflete em economia de energia e água, maior durabilidade dos fornos e ainda reduz a extração, beneficiando o meio ambiente. '
                    'O vidro usado retorna às vidraçarias em que é lavado, triturado e os cacos de vidros são misturados da mesma forma '
                    'de como é feito o vidro: areia, calcário, sódio, barrilha, alumina e descolorante.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/imagens/Vidro1.gif'),
                        fit: BoxFit.scaleDown,
                        scale: 1.2,
                        alignment: Alignment.bottomCenter),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: (() {}),
                child: const Text(
                  'Recicle  1Kg Vidro',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
      backgroundColor: Colors.white70,
    );
  }
}

class Metais extends StatefulWidget {
  const Metais({Key? key}) : super(key: key);

  @override
  State<Metais> createState() => _MetaisState();
}

class _MetaisState extends State<Metais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          color: const Color.fromARGB(255, 246, 250, 0),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
        title: const Text(
          'Metais',
          style: TextStyle(
              color: Color.fromARGB(255, 246, 250, 0),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.help),
            color: const Color.fromARGB(255, 246, 250, 0),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.only(left: 8, top: 4, right: 2),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.2,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/imagens/metal.png'),
                          fit: BoxFit.contain),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 50,
                            offset: Offset(20, 20))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 2, right: 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 20,
                          color: Colors.black,
                          offset: Offset(20, 20),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp,
                            color: Color.fromARGB(255, 15, 14, 7)),
                        Icon(Icons.star_rate_sharp,
                            color: Color.fromARGB(255, 10, 9, 6)),
                        Text(
                          ': Avaliaçoes 0',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width / 1.01,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 246, 250, 0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15,
                    offset: Offset(20, 20),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    ' RECICLAGEM DE METAIS:   '
                    'De forma geral, os metais podem ser classificados em dois grupos: '
                    '__________________________________________  '
                    'ferrosos: ferro e aço:                  '
                    '__________________________________________   '
                    'não ferrosos: cobre, alumínio, níquel, chumbo e zinco. '
                    '__________________________________________   '
                    'Enquanto os não ferrosos têm seu potencial de contaminação '
                    'da natureza reduzido ao longo do tempo, o mesmo não ocorre '
                    'com os ferrosos. Portanto, é preciso ter um pouco mais de atenção '
                    'com o ferro e aço nas ações de reciclagem. '
                    'O cobre, por exemplo, foi o primeiro metal a ser '
                    'descoberto, ainda na pré-história. Atualmente, é '
                    'um dos metais sobre os quais podemos dizer que 50% '
                    'dos itens fabricados com ele são de origem reciclada. '
                    'Após a pré-história, com a descoberta desse metal, '
                    'várias ferramentas feitas com ossos ou pedras foram '
                    'substituídas pelas metalizadas, o que trouxe um ganho '
                    'substancial em eficiência e durabilidade para esses utensílios.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/imagens/re_metal.jpg'),
                        fit: BoxFit.scaleDown,
                        scale: 1.3,
                        alignment: Alignment.bottomCenter),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: (() {}),
                child: const Text(
                  'Recicle  1Kg Metais',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
      backgroundColor: Colors.white70,
    );
  }
}

class Eletronico extends StatefulWidget {
  const Eletronico({Key? key}) : super(key: key);

  @override
  State<Eletronico> createState() => _EletronicoState();
}

class _EletronicoState extends State<Eletronico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          color: Color.fromARGB(255, 0, 0, 0),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
        title: const Text(
          'Eletronico',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.help),
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.only(left: 8, top: 4, right: 2),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.2,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image:
                              AssetImage('assets/imagens/lixo-eletronico.jpg'),
                          fit: BoxFit.contain),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 50,
                            offset: Offset(20, 20))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 2, right: 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 20,
                          color: Colors.black,
                          offset: Offset(20, 20),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp, color: Colors.amberAccent),
                        Icon(Icons.star_rate_sharp,
                            color: Color.fromARGB(255, 15, 14, 7)),
                        Icon(Icons.star_rate_sharp,
                            color: Color.fromARGB(255, 10, 9, 6)),
                        Text(
                          ': Avaliaçoes 0',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width / 1.01,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 0, 0, 0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15,
                    offset: Offset(20, 20),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    ' RECICLAGEM DE ELETRONICOS:   '
                    'Anualmente, mais de 53 milhões de toneladas de '
                    'equipamentos eletroeletrônicos e pilhas são '
                    'descartadas em todo o mundo, segundo o The Global '
                    'E-waste Monitor 2020. Na outra ponta, o número de dispositivos, '
                    'no mundo, cresce cerca de 4% por ano. Apenas o Brasil descartou, '
                    'em 2019, mais de 2 milhões de toneladas de resíduos eletrônicos, '
                    'sendo que menos de 3% foram reciclados, de acordo com o relatório '
                    'desenvolvido pela Universidade das Nações Unidas. '
                    'A pesquisa mostrou que, no Brasil, 16% descartam '
                    'com certa frequência algum eletroeletrônico no lixo '
                    'comum. Esse tipo de descarte não permite a reciclagem '
                    'das matérias-primas presentes nos aparelhos. Um terço '
                    'dos entrevistados (33%) nunca ouviu falar em pontos ou '
                    'locais de descarte correto para lixo eletrônico. ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/imagens/C_ELETRO.jpg'),
                        fit: BoxFit.scaleDown,
                        scale: 1.3,
                        alignment: Alignment.bottomCenter),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: (() {}),
                child: const Text(
                  'Recicle  1Kg Eletronico',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
      backgroundColor: Colors.white70,
    );
  }
}
