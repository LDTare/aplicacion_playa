import 'package:flutter/material.dart';
//por si acaso xd
import 'Screen1.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2 ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarea 2',
      home: cuerpo(),
    );
  }
}

class cuerpo extends StatefulWidget{
  const cuerpo({Key? key}) : super(key: key);

  @override
  _cuerpo createState() =>  _cuerpo();
}

class _cuerpo extends State<cuerpo> with SingleTickerProviderStateMixin{
  late TabController _controller;


  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }
  
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/BG2.jpg',
                  fit: BoxFit.fitWidth,
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.grey.shade200.withOpacity(0.1),
                        Colors.grey.shade50,
                      ],
                      stops: const [0.7, 1.0],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     
                    Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(color: Colors.blueGrey.shade300.withOpacity(0.8)),
                        color: Colors.blueGrey.shade300.withOpacity(0.8)
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> const Pantalla1()),);
                        },
                      ),
                    ),

                    Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(color: Colors.blueGrey.shade300.withOpacity(0.8)),
                        color: Colors.blueGrey.shade300.withOpacity(0.8)
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.favorite_outline ),
                        color: Colors.white,
                        onPressed: (){

                        },
                      ),
                    ),

                  ],
                )
              ],
            ),

            SizedBox(
              width: 375,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: 
                    Text('Pandawa Beach',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ), 
                    textAlign: TextAlign.left,),
                  ),
                  Text('\$48',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ), 
                  textAlign: TextAlign.right,),
                  Text('/person',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey.shade600
                  ), 
                  textAlign: TextAlign.right),
                ],
              )
            ),
            
            SizedBox(
              width: 375,
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Column(children: const[
                    Icon(Icons.room_outlined,
                    size: 25,
                    color: Colors.grey,)
                  ]),
                ),
                
                Text('Bali, Indonesia',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey.shade600
                  ), 
                  textAlign: TextAlign.left
                  ),
              ],),
            ),

             SizedBox(
              width: 375,
              child: Row(children: <Widget>[
                Container(
                      width: 80,
                      height: 40,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.blueGrey.shade300.withOpacity(0.8)),
                        color: Colors.grey.shade200
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(Icons.lock_clock_outlined,
                          size: 20,
                          color: Colors.grey,
                          ),
                          Text('  3 days', 
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Colors.grey.shade600
                          ), 
                          textAlign: TextAlign.left)
                        ],
                      )
                  ),
                  Container(
                      width: 106,
                      height: 40,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.blueGrey.shade300.withOpacity(0.8)),
                        color: Colors.grey.shade200
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(Icons.star_border_outlined,
                          size: 20,
                          color: Colors.grey,
                          ),
                          Text('  4.5 Ratings', 
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Colors.grey.shade600
                          ), 
                          textAlign: TextAlign.left)
                        ],
                      )
                  ),
                  Container(
                      width: 106,
                      height: 40,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.blueGrey.shade300.withOpacity(0.8)),
                        color: Colors.grey.shade200
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(Icons.emoji_emotions_outlined,
                          size: 20,
                          color: Colors.grey,
                          ),
                          Text('  With guide', 
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Colors.grey.shade600
                          ), 
                          textAlign: TextAlign.left)
                        ],
                      )
                  ),
              ],),
            ),

            Container(
              height: 40,
              width: 250,
              margin:  EdgeInsets.only(left: 25.0, right: MediaQuery.of(context).size.width * 0.4),
              child: TabBar(
                
                indicator: CircleTabIndicator(color: Colors.blue, radius: 3),
                labelColor: Colors.blue,
                labelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w500
                ),
                unselectedLabelColor: Colors.black,
                unselectedLabelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w600
                ),
                controller: _controller,
                tabs: const [
                  Tab(text: 'Description',),
                  Tab(text: 'Reviews',),
                ],
              ),
            ),

            Stack(
              children: <Widget>[
                  Container(
                  height: 100,
                  margin: const EdgeInsets.only(left: 25.0, right: 20.0),
                  child: TabBarView(
                    controller: _controller,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 2.5),
                        child: SingleChildScrollView(
                          controller: ScrollController(),
                          scrollDirection: Axis.vertical,
                          
                          child: Text('Pandawa Beach, conocida localmente como Pantai Pandawa, es una gran adición a la colección de hermosas playas de Bali, ubicada en la península de Bukit, al sur de Bali. El fino tramo costero de un kilómetro se encuentra en la aldea de Kutuh, a solo cinco kilómetros al oeste de Samabe Bali Suites & Villas ya ocho kilómetros al sur del centro principal del complejo BTDC en Nusa Dua.', 
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.justify,),
                        ),
                      ),
                      
                      Container(
                        margin: const EdgeInsets.only(top: 2.5),
                        child: SingleChildScrollView(
                          controller: ScrollController(),
                          scrollDirection: Axis.vertical,
                          child: Text('Mobius, was a MOTH scientist of the Previous Era, being behind the creation of the stigmata, MANTISes and other projects. Among the Thirteen Flame Chasers, she is numbered tenth with the codename Infinity. Her creations include Gray Serpent and ELF Klein. A sim based on her inhibits Elysian Realm. Even from her childhood, Mobius has always been special. Her mother, described as having delicate features and green hair, was pregnant with her for 10 months, and she managed to name Mobius and give her a golden earring just moments before she died. Quickly after the birth, Mobius uttered her first words, much to the shock of the people in the room', 
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.justify,),
                        ),
                      ),
                    ],)
                ),

                Container(
                  height: 30.0,
                  margin: const EdgeInsets.only(top: 75.0),
                  foregroundDecoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.grey.shade50.withOpacity(0.0),
                            Colors.grey.shade100,
                          ],
                  )
                  ),
                )
              ],
            ),
            
            SizedBox(
              width: 330,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                onPressed: () {

                },
                child: const Text('Book Now!'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }  
}


class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius}) : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset = offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}