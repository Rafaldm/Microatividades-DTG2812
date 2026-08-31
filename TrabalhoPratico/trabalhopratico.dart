import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Cria as colunas dos botões
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 28),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // --------------------------------------------------
    // SEÇÃO DE TÍTULO
    // --------------------------------------------------

    final Widget titleSection = Container(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Fernando de Noronha',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),

                const SizedBox(height: 6),

                Text(
                  'Pernambuco, Brasil',
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
              ],
            ),
          ),

          const Icon(Icons.star, color: Colors.amber, size: 28),

          const SizedBox(width: 5),

          const Text(
            '4.9',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );

    // --------------------------------------------------
    // SEÇÃO DE BOTÕES
    // --------------------------------------------------

    final Color color = Theme.of(context).primaryColor;

    final Widget buttonSection = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'LIGAR'),

          _buildButtonColumn(color, Icons.near_me, 'ROTA'),

          _buildButtonColumn(color, Icons.share, 'COMPARTILHAR'),
        ],
      ),
    );

    // --------------------------------------------------
    // SEÇÃO DE TEXTO
    // --------------------------------------------------

    final Widget textSection = Container(
      padding: const EdgeInsets.all(24),
      child: const Text(
        'Fernando de Noronha é um dos destinos mais incríveis '
        'do Brasil. O arquipélago possui praias de águas '
        'cristalinas, belas paisagens e uma grande diversidade '
        'de vida marinha. É um lugar ideal para quem deseja '
        'conhecer a natureza, relaxar e aproveitar momentos '
        'inesquecíveis durante a viagem.',
        style: TextStyle(fontSize: 15, height: 1.5),
        softWrap: true,
      ),
    );

    // --------------------------------------------------
    // CAMPO DE PESQUISA
    // --------------------------------------------------

    final Widget searchSection = Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Pesquisar destinos...',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );

    // --------------------------------------------------
    // APLICAÇÃO
    // --------------------------------------------------

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Explore Mundo',

      theme: ThemeData(primarySwatch: Colors.blue),

      home: Scaffold(
        appBar: AppBar(title: const Text('Explore Mundo'), centerTitle: false),

        body: ListView(
          children: [
            // Nome da agência
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Explore o mundo',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),

            // Campo de pesquisa
            searchSection,

            // Imagem do destino
            Image.asset(
              'images/noronha.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),

            // Título e avaliação
            titleSection,

            // Botões
            buttonSection,

            // Descrição
            textSection,

            // Informações adicionais
            Container(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 30),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sobre o destino',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 12),

                  Text(
                    'Conheça praias, trilhas e paisagens naturais '
                    'em uma experiência especial preparada pela '
                    'Explore Mundo.',
                    style: TextStyle(fontSize: 15, height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
