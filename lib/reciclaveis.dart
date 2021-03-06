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
                          ': Avalia??oes 0',
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
                    ' Redu??ao de press??o sobre os recursos da madeira: '
                    '  ________________________________                                             '
                    'As fibras recicladas t??m origem nos res??duos de papel, '
                    ' enquanto que a fibra virgem prov??m de recursos naturais, '
                    ' como por exemplo a madeira das ??rvores. Portanto, a reciclagem, '
                    ' ao fazer uso de pap??is que j?? existem para produzir pasta, n??o '
                    'necessitam de mat??rias primas novas. Deste modo reduz-se a procura  '
                    ' de madeira em aproximadamente 24 ??rvores por cada tonelada de papel.'
                    ' _________________________________                                                                                                                                                    '
                    ' Poupan??a de energia e ??gua:                           '
                    ' _________________________________                     '
                    ' A fabrica????o de papel reciclado necessita, '
                    ' geralmente de menos energia, menos ??gua e '
                    'menos subst??ncias qu??micas, para a pasta do '
                    'que a fabrica????o de papel em fibra virgem. '
                    ' Estima-se que a economia na fabrica????o do '
                    'papel reciclado em compara????o com o papel fibra '
                    'virgem ?? aproximadamente 33% em energia e 49% em ??gua.'
                    '  _________________________________________     '
                    'Reduz as emiss??es de CO2: '
                    '_______________________________________            '
                    'A reciclagem proporciona ao papel uma nova vida, uma '
                    'vantagem essencial dos pap??is reciclados, uma vez que '
                    'o papel ?? reciclado, pode-se reciclar de 4 a 7 vezes '
                    'antes de que as fibras se tornem muito curtas para a '
                    'sua utiliza????o. Ao reciclar, evitamos '
                    'a gera????o de res??duos de papel.                       ',
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
                          ': Avalia??oes 0',
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
                    'O crescimento da popula????o e o est??mulo ao consumo de produtos industrializados descart??veis t??m '
                    'aumentado a quantidade e a diversidade dos res??duos urbanos. A simples disposi????o dos res??duos '
                    'industriais, comerciais e dom??sticos urbanos em aterros sanit??rios fez com que eles estejam em vias '
                    ' de satura????o. A utiliza????o desses res??duos como mat??ria-prima tem sido adotada como solu????o para '
                    ' o problema, mas como ?? uma atividade recente, ainda n??o ?? aceita como melhor alternativa. Na '
                    ' presente disserta????o s??o analisados criticamente os problemas relacionados ao processo de '
                    ' reciclagem de PET, com vistas, especialmente, ao processo de reciclagem ???bottle-to-bottle???, para uso '
                    ' aliment??cio. Os aspectos de perda e recupera????o das propriedades do material, de contamina????o '
                    ' qu??mica e biol??gica s??o discutidos, bem como o sempre relevante problema da legisla????o, que parece '
                    'ser o mais s??rio neste caso. Atualmente o mercado no Brasil, consegue reciclar cerca de 50% da '
                    'produ????o do PET, o que significa que h?? potencial para grande melhoria nesse aspecto. '
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
                          ': Avalia??oes 0',
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
                    'Uma das maiores vantagens do vidro, al??m da beleza e '
                    'seguran??a que nos oferece. ?? que o vidro ?? um material 100% '
                    'recicl??vel, ou seja, pode ser reutilizado novamente na '
                    'fabrica????o de vidros novos sem perder a qualidade e sua ess??ncia. '
                    'Assim como o vidro ?? feito, na reciclagem os vidro devem ser separados por tipo e cores. '
                    'O vidro comum funde a uma temperatura a mais de 1000??C, enquanto que a temperatura de fus??o da fabrica????o do vidro ?? de 1600??C. '
                    'Isso reflete em economia de energia e ??gua, maior durabilidade dos fornos e ainda reduz a extra????o, beneficiando o meio ambiente. '
                    'O vidro usado retorna ??s vidra??arias em que ?? lavado, triturado e os cacos de vidros s??o misturados da mesma forma '
                    'de como ?? feito o vidro: areia, calc??rio, s??dio, barrilha, alumina e descolorante.',
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
                          ': Avalia??oes 0',
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
                    'ferrosos: ferro e a??o:                  '
                    '__________________________________________   '
                    'n??o ferrosos: cobre, alum??nio, n??quel, chumbo e zinco. '
                    '__________________________________________   '
                    'Enquanto os n??o ferrosos t??m seu potencial de contamina????o '
                    'da natureza reduzido ao longo do tempo, o mesmo n??o ocorre '
                    'com os ferrosos. Portanto, ?? preciso ter um pouco mais de aten????o '
                    'com o ferro e a??o nas a????es de reciclagem. '
                    'O cobre, por exemplo, foi o primeiro metal a ser '
                    'descoberto, ainda na pr??-hist??ria. Atualmente, ?? '
                    'um dos metais sobre os quais podemos dizer que 50% '
                    'dos itens fabricados com ele s??o de origem reciclada. '
                    'Ap??s a pr??-hist??ria, com a descoberta desse metal, '
                    'v??rias ferramentas feitas com ossos ou pedras foram '
                    'substitu??das pelas metalizadas, o que trouxe um ganho '
                    'substancial em efici??ncia e durabilidade para esses utens??lios.',
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
                          ': Avalia??oes 0',
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
                    'Anualmente, mais de 53 milh??es de toneladas de '
                    'equipamentos eletroeletr??nicos e pilhas s??o '
                    'descartadas em todo o mundo, segundo o The Global '
                    'E-waste Monitor 2020. Na outra ponta, o n??mero de dispositivos, '
                    'no mundo, cresce cerca de 4% por ano. Apenas o Brasil descartou, '
                    'em 2019, mais de 2 milh??es de toneladas de res??duos eletr??nicos, '
                    'sendo que menos de 3% foram reciclados, de acordo com o relat??rio '
                    'desenvolvido pela Universidade das Na????es Unidas. '
                    'A pesquisa mostrou que, no Brasil, 16% descartam '
                    'com certa frequ??ncia algum eletroeletr??nico no lixo '
                    'comum. Esse tipo de descarte n??o permite a reciclagem '
                    'das mat??rias-primas presentes nos aparelhos. Um ter??o '
                    'dos entrevistados (33%) nunca ouviu falar em pontos ou '
                    'locais de descarte correto para lixo eletr??nico. ',
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
