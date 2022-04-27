import 'package:app_projeto/main.dart';
import 'package:flutter/material.dart';

class CadastroUse extends StatefulWidget {
  @override
  State<CadastroUse> createState() => _CadastroUseState();
}

class _CadastroUseState extends State<CadastroUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
        backgroundColor: const Color.fromARGB(255, 70, 243, 113),
        centerTitle: true,
        title: const Text(
          'Cadastro',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'Informe Seu Nome ' : null,
                    decoration: const InputDecoration(
                      labelText: 'Nome:',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'Informe Seu Sobrenome' : null,
                    decoration: const InputDecoration(
                      labelText: 'Sobrenome:',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    validator: (value) => value!.isEmpty
                        ? 'Informe Sua Data de Nascimento'
                        : null,
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: 'Data de Nascimento:',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'Informe Seu CPF' : null,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'CPF:',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'Informe Seu E-mail' : null,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'E-MAIL:',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'Informe Seu Telefone' : null,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: 'Telefone:',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    validator: (value) => value!.isEmpty
                        ? 'Sua Senha Só Pode Conter numeros'
                        : null,
                    obscureText: true,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: 'Senha:',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? 'Informe Seu Telefone' : null,
                    obscureText: true,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: 'Confirmar Senha:',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    }),
                    child: const Text(
                      'ENVIAR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
