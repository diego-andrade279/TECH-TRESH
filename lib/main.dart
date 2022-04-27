import 'dart:io';
import 'dart:ui';

import 'package:app_projeto/Perfil.dart';
import 'package:app_projeto/cadastro.dart';
import 'package:app_projeto/reciclaveis.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'tech trash',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _Page();
}

class _Page extends State<HomePage> {
  TextEditingController nomeUsuario = TextEditingController();
  TextEditingController senhaUsuario = TextEditingController();

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // Area para variaveis global

  String _Bv = '';
  //metodos

  void _verificacaoLog() {
    setState(() {
      String varnome = nomeUsuario.text;
      int varsenha = int.parse(senhaUsuario.text);

      if (varnome == 'admin' && varsenha == 1234) {
        _Bv = 'Bem vindo: ';
      } else {
        _Bv = 'login ou senha Incorreto.';
      }
    });
  }

  void _reset() {
    setState(() {
      nomeUsuario.clear();
      senhaUsuario.clear();

      _Bv = '';
      _formkey = GlobalKey<FormState>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.help),
          iconSize: 30,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 21, 231, 28),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                setState(() {
                  _reset();
                });
              }),
        ],
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.recycling,
                  size: 150,
                  color: Color.fromARGB(255, 2, 185, 8),
                ),
                const Text(
                  'Tech Trash',
                  style: TextStyle(
                    color: Color.fromARGB(255, 25, 0, 255),
                    fontSize: 30,
                  ),
                ),

                ///CAMPO USUARIO
                TextFormField(
                  controller: nomeUsuario,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType
                      .name, //define o padrao do teclado para somente texto ou numerico
                  validator: (value) =>
                      value!.isEmpty ? 'Informe Nome de Usuario' : null,

                  decoration: const InputDecoration(
                    labelText: 'Nome:',
                    border: OutlineInputBorder(),
                  ),
                  style: const TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                //////FIM DO CAMPO USUARIO
                const SizedBox(height: 10),

                ///CAMPO SENHA
                TextFormField(
                  controller: senhaUsuario,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  validator: (value) =>
                      value!.isEmpty ? 'Informe sua Senha ' : null,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Senha:',
                    border: OutlineInputBorder(),
                  ),
                  style: const TextStyle(color: Colors.black, fontSize: 20.0),
                ),

                ///FIM DO CAMPO SENHA
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 119, 0, 255)),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          _verificacaoLog();
                          _reset();

                          ///
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        }
                      },
                      child: const Text(
                        'ENTRA',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                Text(
                  _Bv,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.blueAccent),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Nao Possui cadrastro clique aqui: ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CadastroUse()),
                        );
                      }),
                      child: const Text(
                        'Cadrastro',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 243, 0, 0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 168, 247, 223),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  void _Exit() {
    exit(exitCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tech Trash',
          style: TextStyle(color: Color.fromARGB(255, 25, 0, 255)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 1, 170, 7),
        actions: const <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(2),
          children: <Widget>[
            DrawerHeader(
              padding: const EdgeInsets.fromLTRB(105, 130, 25, 2),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: const <Widget>[
                  Text(
                    'MENU',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            ///////////////////////////////////
            ///   LISTA DO MENU //////////////
            SizedBox(
              child: Row(
                children: <Widget>[
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.blueAccent,
                      size: 30,
                    ),
                  ),
                  TextButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PerfilUse()),
                      );
                    }),
                    child: const Text(
                      'PERFIL',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            /////////////////////////////

            SizedBox(
              child: Row(
                children: const <Widget>[
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.history,
                      color: Colors.blueAccent,
                      size: 30,
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Historico',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            //////////////////////////////

            SizedBox(
              child: Row(
                children: const <Widget>[
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.recycling,
                      color: Color.fromARGB(255, 1, 165, 15),
                      size: 30,
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Solicitaçoês de Coleta',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            //////////////////////////////
            SizedBox(
              child: Row(
                children: const <Widget>[
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.settings,
                      color: Color.fromARGB(255, 2, 71, 68),
                      size: 30,
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Configuraçoês',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            //////////////////////////////
            SizedBox(
              child: Row(
                children: <Widget>[
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.exit_to_app,
                      color: Colors.blueAccent,
                      size: 30,
                    ),
                  ),
                  TextButton(
                    onPressed: (() {
                      setState(() {
                        _Exit();
                      });
                    }),
                    child: const Text(
                      'Sair',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            ////////////////////////
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 168, 247, 223),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 2,
            right: 2,
            top: 25,
          ),
          child: Stack(
            children: <Widget>[
              /////////////////////////////////////
              Container(
                padding: const EdgeInsets.fromLTRB(2, 90, 2, 5),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 168, 247, 223),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              ////////////////////////////////////

              PageView.builder(
                itemCount: 1000,
                itemBuilder: (_, correntIndex) {
                  return GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(5),
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    crossAxisCount: 3,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.recycling_sharp),
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Papel()));
                              }),
                              iconSize: 50,
                              color: Colors.blueAccent,
                            ),
                            const Text(
                              'PAPEIS',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),

////////////////////////////////////////////////

                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Plastico()));
                              }),
                              icon: const Icon(Icons.recycling),
                              color: const Color.fromARGB(255, 243, 16, 0),
                              iconSize: 50,
                            ),
                            const Text(
                              'PLASTICOS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 17, 0),
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),

                      ///////////////////////////////////////////
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Vidro()));
                              }),
                              icon: const Icon(Icons.recycling),
                              color: const Color.fromARGB(255, 71, 148, 0),
                              iconSize: 45,
                            ),
                            const Text(
                              'VIDRO',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 71, 148, 0)),
                            ),
                          ],
                        ),
                      ),
//////////////////////////////////////////

                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: ((() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Metais()));
                              })),
                              icon: const Icon(Icons.recycling),
                              color: const Color.fromARGB(255, 184, 216, 0),
                              iconSize: 45,
                            ),
                            const Text(
                              'METAIS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 184, 216, 0)),
                            ),
                          ],
                        ),
                      ),

                      //////////////////////////////////
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Eletronico()));
                              }),
                              icon: const Icon(Icons.recycling),
                              color: const Color.fromARGB(255, 0, 0, 0),
                              iconSize: 45,
                            ),
                            const Text(
                              'ELETRONICO',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                      ),

                      ///////////////////////////////////////
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const <Widget>[
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.recycling),
                              disabledColor: Color.fromARGB(255, 119, 118, 118),
                              iconSize: 45,
                            ),
                            Text(
                              'ORGANICOS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 119, 118, 118)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 220, 6, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            color: Colors.black,
                          ),
                          const Text(
                            'CEP',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
