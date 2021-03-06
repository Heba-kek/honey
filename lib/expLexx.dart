import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class expLexx extends StatefulWidget {
  @override
  _expLexx createState() => new _expLexx();
}

class _expLexx extends State<expLexx> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            colors: [const Color(0xffffd64d), const Color(0xfff3f3f3)],
            stops: [0.0, 1.0],
          ),
          border: Border.all(width: 1.0, color: const Color(0xff707070)),
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 10),
              blurRadius: 10,
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Row(
                              children: <Widget>[
                                SvgPicture.string(
                                  _svg_6oa7ke,
                                  allowDrawingOutsideViewBox: true,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Center(
                                    child: Text(
                                      'Honey Bee',
                                      style: TextStyle(
                                        fontFamily: 'Pristina',
                                        fontSize: 32,
                                        color: const Color(0xff0a0606),
                                        shadows: [
                                          Shadow(
                                            color: const Color(0x29000000),
                                            offset: Offset(3, 10),
                                            blurRadius: 6,
                                          )
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                new Spacer(),
                                SizedBox(
                                  width: 63.0,
                                  height: 63.0,
                                  child: Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds:
                                        Rect.fromLTWH(7.1, 7.2, 48.5, 48.5),
                                        size: Size(62.8, 62.8),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        pinBottom: true,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                            border: Border.all(
                                                width: 1.0,
                                                color: const Color(0xf2386694)),
                                          ),
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds:
                                        Rect.fromLTWH(22.1, 14.7, 19.0, 33.6),
                                        size: Size(62.8, 62.8),
                                        pinTop: true,
                                        pinBottom: true,
                                        fixedWidth: true,
                                        child:
                                        // Adobe XD layer: 'ic_attach_money_24px' (shape)
                                        SvgPicture.string(
                                          _svg_pew0t9,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: const Color(0x09010101),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x02000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),child: Container(
                      width: MediaQuery.of(context).size.width,
                      child:
                      Row(children: <Widget>[
                        new Spacer(),
                        Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),child: Container(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Text(
                              'تقرير',
                              style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 15,
                                color: const Color(0xff0a0606),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: const Color(0xbfc8c6c6),
                            border:
                            Border.all(width: 2.0, color: const Color(0xccf3f3f3)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x21000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),)],),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xfff3f3f3),
                        border: Border.all(
                            width: 1.0, color: const Color(0xfff3f3f3)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: SizedBox(
                          width: 45.0,
                          height: 45.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 45.0, 45.0),
                                size: Size(45.0, 45.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 45.0, 45.0),
                                      size: Size(45.0, 45.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 45.0, 45.0),
                                            size: Size(45.0, 45.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0xefe4dcdc),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color:
                                                    const Color(0xff1db3b8)),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                    const Color(0x29000000),
                                                    offset: Offset(0, 10),
                                                    blurRadius: 10,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(12.3, 21.1, 20.3, 3.4),
                                      size: Size(45.0, 45.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(5.0),
                                          color: const Color(0xf2386694),
                                          border: Border.all(
                                              width: 2.0,
                                              color: const Color(0xf21966b4)),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                      Rect.fromLTWH(12.3, 21.1, 20.3, 3.4),
                                      size: Size(45.0, 45.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Transform.rotate(
                                        angle: 1.5708,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5.0),
                                            color: const Color(0xf2386694),
                                            border: Border.all(
                                                width: 2.0,
                                                color: const Color(0xf21966b4)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),



            Transform.translate(
              offset: Offset(0.0, 750.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 57.0,
                decoration: BoxDecoration(
                  color: const Color(0x5effd64d),
                  border: Border.all(width: 1.0, color: const Color(0x5ef3f3f3)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0f000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(162.1, 750.2),
              child: SizedBox(
                width: 51.0,
                height: 51.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 50.8, 50.8),
                      size: Size(50.8, 50.8),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 50.8, 50.8),
                            size: Size(50.8, 50.8),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0xffffd64d),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(8.6, 9.8, 33.3, 28.3),
                      size: Size(50.8, 50.8),
                      pinLeft: true,
                      pinRight: true,
                      fixedHeight: true,
                      child:
                      // Adobe XD layer: 'ic_home_24px' (shape)
                      SvgPicture.string(
                        _svg_jtcmlr,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    )



      ;
  }
}

const String _svg_kw07ha =
    '<svg viewBox="7.0 2.0 7.0 9.0" ><path  d="M 13.95198822021484 5.329999923706055 C 13.95198822021484 4.599999904632568 13.53486824035645 4 13.02737426757813 4 L 11.86639213562012 4 L 11.86639213562012 2 L 9.085596084594727 2 L 9.085596084594727 4 L 7.924614429473877 4 C 7.41711950302124 4 7 4.599999904632568 7 5.329999923706055 L 7 11 L 13.95198822021484 11 L 13.95198822021484 5.329999923706055 Z" fill="#000000" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xa6yi7 =
    '<svg viewBox="7.0 11.0 7.0 11.0" ><path  d="M 7 11 L 7 20.67000007629395 C 7 21.39999961853027 7.41711950302124 22 7.924614429473877 22 L 13.02042198181152 22 C 13.53486824035645 22 13.95198822021484 21.39999961853027 13.95198822021484 20.67000007629395 L 13.95198822021484 11 L 7 11 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yv7ltq =
    '<svg viewBox="11.5 -23.5 8.0 1.0" ><path transform="translate(11.5, -23.5)" d="M 0 0 L 8 0" fill="none" stroke="#0a0606" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r0pq2s =
    '<svg viewBox="12.5 -21.5 6.0 1.0" ><path transform="translate(12.5, -21.5)" d="M 0 0 L 6 0" fill="none" stroke="#0a0606" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1knnuu =
    '<svg viewBox="13.5 -19.5 4.0 1.0" ><path transform="translate(13.5, -19.5)" d="M 0 0 L 4 0" fill="none" stroke="#0a0606" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7kj27s =
    '<svg viewBox="14.5 -17.5 2.0 1.0" ><path transform="translate(14.5, -17.5)" d="M 0 0 L 2 0" fill="none" stroke="#0a0606" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6oa7ke =
    '<svg viewBox="21.6 49.3 16.4 26.2" ><path transform="matrix(0.017452, 0.999848, -0.999848, 0.017452, 45.33, 43.19)" d="M 9.040546417236328 7.840000152587891 L 18.93849754333496 17.71638488769531 L 28.83644676208496 7.840000152587891 L 31.87699317932129 10.88054466247559 L 18.93849754333496 23.81904220581055 L 6 10.88054466247559 L 9.040546417236328 7.840000152587891 Z" fill="#0a0606" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rcdvvf =
    '<svg viewBox="117.2 361.0 62.8 62.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="15" stdDeviation="15"/></filter></defs><path transform="translate(117.16, 361.0)" d="M 31.42181396484375 0 C 48.77560043334961 0 62.8436279296875 14.06802558898926 62.8436279296875 31.42181396484375 C 62.8436279296875 48.77560043334961 48.77560043334961 62.8436279296875 31.42181396484375 62.8436279296875 C 14.06802558898926 62.8436279296875 0 48.77560043334961 0 31.42181396484375 C 0 14.06802558898926 14.06802558898926 0 31.42181396484375 0 Z" fill="#ffd64d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_pew0t9 =
    '<svg viewBox="139.2 375.7 19.0 33.6" ><path transform="translate(132.89, 372.68)" d="M 16.53794479370117 17.73024940490723 C 12.30533027648926 16.63014030456543 10.94417953491211 15.49274349212646 10.94417953491211 13.72138404846191 C 10.94417953491211 11.6889820098877 12.82741451263428 10.27189445495605 15.97856712341309 10.27189445495605 C 19.29753494262695 10.27189445495605 20.52816581726074 11.85679340362549 20.64003944396973 14.18752956390381 L 24.76077651977539 14.18752956390381 C 24.63025856018066 10.98043918609619 22.67243957519531 8.034388542175293 18.77544975280762 7.083449363708496 L 18.77544975280762 3 L 13.18168354034424 3 L 13.18168354034424 7.027511119842529 C 9.564384460449219 7.810638427734375 6.655625343322754 10.16001892089844 6.655625343322754 13.7586727142334 C 6.655625343322754 18.06587600708008 10.21698760986328 20.21015167236328 15.419189453125 21.45942497253418 C 20.08065986633301 22.57817840576172 21.01295471191406 24.21901512145996 21.01295471191406 25.95308113098145 C 21.01295471191406 27.23964691162109 20.09930801391602 29.29069519042969 15.97856616973877 29.29069519042969 C 12.13751316070557 29.29069519042969 10.62719821929932 27.57527351379395 10.42209243774414 25.37505531311035 L 6.319998741149902 25.37505531311035 C 6.543749332427979 29.45850944519043 9.601675033569336 31.7519474029541 13.18168354034424 32.51642990112305 L 13.18168354034424 36.56258773803711 L 18.77544975280762 36.56258773803711 L 18.77544975280762 32.55372619628906 C 22.41139793395996 31.86382865905762 25.30150985717773 29.75684547424316 25.30150985717773 25.93443870544434 C 25.30150985717773 20.63900566101074 20.77056121826172 18.83035659790039 16.53794479370117 17.73024940490723 Z" fill="#386694" fill-opacity="0.95" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jtcmlr =
    '<svg viewBox="1058.7 2163.0 33.3 28.3" ><path transform="translate(1056.72, 2160.0)" d="M 15.31367015838623 31.29155158996582 L 15.31367015838623 21.30629730224609 L 21.97050666809082 21.30629730224609 L 21.97050666809082 31.29155158996582 L 30.29155158996582 31.29155158996582 L 30.29155158996582 17.97788047790527 L 35.2841796875 17.97788047790527 L 18.64208984375 2.999999761581421 L 2 17.97788047790527 L 6.992626667022705 17.97788047790527 L 6.992626667022705 31.29155158996582 L 15.31367015838623 31.29155158996582 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
