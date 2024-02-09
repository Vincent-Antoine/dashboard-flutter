import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tableau de Bord Projets 2024',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF151922),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical : 10.0),
              decoration: BoxDecoration(
                color: const Color(0xFF303443),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Tableau de Bord Projets 2024',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Nom du projet',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0), // Ajout du padding à l'intérieur
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: DropdownButton<String>(
                      style: const TextStyle(color: Color(0xFFFFFFFF)),
                      value: 'Lorem A',
                      items: const [
                        DropdownMenuItem(value: 'Lorem A', child: Text('Lorem A')),
                        DropdownMenuItem(value: 'Lorem B', child: Text('Lorem B')),
                        DropdownMenuItem(value: 'Lorem C', child: Text('Lorem C')),
                      ],
                      onChanged: (value) {},
                      dropdownColor: const Color(0xFF44485a),
                      underline: Container(),
                      icon: const Padding( // Ajout de la marge à gauche pour l'icône
                      padding: EdgeInsets.only(left: 40.0),
                      child: Icon(Icons.arrow_drop_down, color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 80),
                  const Text(
                    'Phase du projet',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0), // Ajout du padding à l'intérieur
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: DropdownButton<String>(
                      style: const TextStyle(color: Color(0xFFFFFFFF)),
                      value: 'Lorem A',
                      items: const [
                        DropdownMenuItem(value: 'Lorem A', child: Text('Lorem A')),
                        DropdownMenuItem(value: 'Lorem B', child: Text('Lorem B')),
                        DropdownMenuItem(value: 'Lorem C', child: Text('Lorem C')),
                      ],
                      onChanged: (value) {},
                      dropdownColor: const Color(0xFF44485a),
                      underline: Container(),
                      icon: const Padding( // Ajout de la marge à gauche pour l'icône
                        padding: EdgeInsets.only(left: 40.0),
                        child: Icon(Icons.arrow_drop_down, color: Color(0xFFFFFFFF)),
                        ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF26282C),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'Performance coût du projet',
                                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 50),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$93,332',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\nTotal budget',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    TextSpan(text: '\n\n\n'),
                                    TextSpan(
                                      text: '\$48,048',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\nActual Cost',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              margin: const EdgeInsets.only(right: 10.0),
                              decoration: BoxDecoration(
                                color: const Color(0xFF26282C),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    'Performance des coûts du projet',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Expanded(
                                    child: SfRadialGauge(
                                      axes: <RadialAxis>[
                                        RadialAxis(
                                          minimum: 0,
                                          maximum: 150,
                                          axisLabelStyle: const GaugeTextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                          ranges: <GaugeRange>[
                                            GaugeRange(
                                              startValue: 0,
                                              endValue: 50,
                                              color: Colors.green,
                                              startWidth: 20,
                                              endWidth: 20,
                                            ),
                                            GaugeRange(
                                              startValue: 50,
                                              endValue: 100,
                                              color: Colors.orange,
                                              startWidth: 20,
                                              endWidth: 20,
                                            ),
                                            GaugeRange(
                                              startValue: 100,
                                              endValue: 150,
                                              color: Colors.red,
                                              startWidth: 20,
                                              endWidth: 20,
                                            ),
                                          ],
                                          pointers: <GaugePointer>[
                                            NeedlePointer(
                                              value: 60,
                                              needleColor: Colors.white,
                                              knobStyle: KnobStyle(
                                                knobRadius: 0.08,
                                                color: Colors.white,
                                                borderColor: Colors.white.withOpacity(0.4),
                                                borderWidth: 0.1,
                                              ),
                                            ),
                                          ],
                                          annotations: <GaugeAnnotation>[
                                            GaugeAnnotation(
                                              widget: Container(
                                                child: const Text(
                                                  '60K',
                                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                                                ),
                                              ),
                                              angle: 90,
                                              positionFactor: 0.5,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF26282C),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Performance du projet',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.arrow_circle_down_rounded, color: Colors.red, size: 38),
                                  SizedBox(height: 5),
                                  Text(
                                    '0.89',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'SPI (Schedule Performance Index)',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(height: 50),
                                      Text(
                                        '\$46,666.00',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ],
                                  ),


                                  Text(
                                    'Planned Value (PV)',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.arrow_circle_up_rounded, color: Colors.orange, size: 38,),
                                  SizedBox(height: 5),
                                  Text(
                                    '0.87',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'CPI (Cost Performance Index)',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(height: 50), // Espace vertical de 5 pixels
                                      Text(
                                        '\$41,579.40',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Earned Value (EV)',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF26282C),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,                        children: [
                          Text(
                            'Temps Vs Phase du projet',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 10),
                          BarLabel(label: 'Closure Stage', value: 56, maxValue: 200),
                          BarLabel(label: 'Execution Stage', value: 164, maxValue: 200),
                          BarLabel(label: 'Monitor & Control', value: 36, maxValue: 200),
                          BarLabel(label: 'Project Initiation Stage', value: 40, maxValue: 200),
                          BarLabel(label: 'Project Planning Stage', value: 144, maxValue: 200),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF26282C),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Avancement des phases du projet',
                            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          SimplePieChart(),
                          const SizedBox(height: 20), // Ajoute un espace entre le graphique et les légendes
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LegendItem(color: Color(0xFF604AFC), label: 'Phase 1'),
                              LegendItem(color: Colors.yellow, label: 'Phase 2'),
                              LegendItem(color: Color(0xFF4BCE97), label: 'Phase 3'),
                            ],
                          ),
                        ],
                      ),
                    ),
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


class LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const LegendItem({
    Key? key,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Container(
            width: 10, // Diamètre du cercle
            height: 10, // Diamètre du cercle
            color: color,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(width: 50),
      ],
    );
  }
}

class BarLabel extends StatelessWidget {
  final String label;
  final int value;
  final int maxValue;

  const BarLabel({
    Key? key,
    required this.label,
    required this.value,
    required this.maxValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthFactor = value / maxValue;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              label,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            flex: 7,
            child: Stack(
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: widthFactor,
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              '$value',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class SimplePieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final List<double> slices = [0, 0.6, 0.3, 0.3]; // Les pourcentages pour chaque secteur
    final List<Color> colors = [Colors.blue, const Color(0xFF604AFC), const Color(0xFF4BCE97), Colors.yellow]; // Les couleurs pour chaque secteur
    double startRadian = -math.pi / 2;

    for (int i = 0; i < slices.length; i++) {
      final paint = Paint()
        ..style = PaintingStyle.fill
        ..color = colors[i];
      final sweepRadian = slices[i] * 2 * math.pi;
      canvas.drawArc(
        Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2),
        startRadian,
        sweepRadian,
        true,
        paint,
      );
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class SimplePieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(200, 200),
      painter: SimplePieChartPainter(),
    );
  }
}
