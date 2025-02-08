import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required Burc this.secilenBurc,super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi=Colors.pink;
  late PaletteGenerator _generator;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_)=>appBarRenginiBul());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appBarRengi,
          flexibleSpace: FlexibleSpaceBar(background:Image.asset("assets/images/"+widget.secilenBurc.burcBuyukResim,fit: BoxFit.cover,),title: Text(widget.secilenBurc.burcAdi+" ve Özellikleri"),
          centerTitle: true,),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(child: Text(widget.secilenBurc.burcDetayi, style: Theme.of(context).textTheme.labelLarge,),),
        )
      ],),
    );
  }
  
  void appBarRenginiBul() async {
    PaletteGenerator _generator=await PaletteGenerator.fromImageProvider(AssetImage("assets/images/"+widget.secilenBurc.burcBuyukResim));
    appBarRengi=_generator.dominantColor!.color;
    setState(() {
      
    });
  }
}