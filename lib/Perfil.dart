import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PerfilUse extends StatefulWidget {
  @override
  State<PerfilUse> createState() => _PerfilUseState();
}

class _PerfilUseState extends State<PerfilUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Perfil',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            iconSize: 35,
            onPressed: () {},
          ),
          IconButton(
            onPressed: ((() {})),
            icon: const Icon(
              Icons.menu,
            ),
            iconSize: 35,
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(0.2),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 80),
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(61, 8, 6, 6),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/imagens/logo.jpg'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Nome_Use',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255)),
                        onPressed: (() {}),
                        child: const Text(
                          'Editar Perfil',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 400,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 4),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 128, 237, 252),
                        ),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.recycling,
                                  color: Color.fromARGB(255, 4, 134, 255),
                                  size: 26,
                                ),
                                Text(
                                  ' Papel Reciclado: 0 kg ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                ///////////////////////////
                                SizedBox(width: 20),
                                Icon(
                                  Icons.recycling,
                                  color: Colors.red,
                                  size: 26,
                                ),
                                Text(
                                  ' Plastico reciclado: 0 kg ',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                /////////////////////////
                                SizedBox(width: 20),
                                Icon(
                                  Icons.recycling,
                                  color: Colors.green,
                                  size: 26,
                                ),
                                Text(
                                  ' Vidro reciclado: 0 kg',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                /////////////////////
                                SizedBox(width: 20),
                                Icon(
                                  Icons.recycling,
                                  color: Color.fromARGB(255, 165, 211, 0),
                                  size: 26,
                                ),
                                Text(
                                  ' Metais Reciclado: 0 kg ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                //////////////////////////////
                                SizedBox(width: 20),
                                Icon(
                                  Icons.recycling,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 26,
                                ),
                                Text(
                                  'Eletronicos Reciclado: 0 kg ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                //////////////////////////////
                                SizedBox(width: 20),
                                Icon(
                                  Icons.recycling,
                                  color: Color.fromARGB(135, 0, 0, 0),
                                  size: 26,
                                ),
                                Text(
                                  'Organicos Reciclado: 0 kg ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      /////////////////////////////
                      const SizedBox(height: 10),

                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              ' Nome:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      ////////////////////
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              ' Usuario:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),

                      /////////////////////////////
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              ' Endereço:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      /////////////////////////////
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              ' Genero:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      /////////////////////////////
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              ' Data Nascimento:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      /////////////////////////////
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              ' E-mail:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      /////////////////////////////
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              ' Telefone:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: (() {}),
                          child: const Text(
                            'Mudar Senha',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
