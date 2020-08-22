import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/svg.dart';

class XD extends StatefulWidget {
  @override
  _XD createState() => new _XD();
}

class _XD extends State<XD> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 375.0,
          height: 1395.0,
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
        ),
        Transform.translate(
          offset: Offset(8.0, 164.0),
          child: Container(
            width: 358.0,
            height: 154.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xfff3f3f3),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 10),
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(9.0, 467.0),
          child: Container(
            width: 358.0,
            height: 416.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color(0xfff3f3f3),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 10),
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(-5.0, 76.0),
          child: SizedBox(
            width: 153.0,
            height: 14.0,
            child: SingleChildScrollView(
                child: Text(
              'Honey Bee',
              style: TextStyle(
                fontFamily: 'Pristina',
                fontSize: 32,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(9.8, 32.9),
          child: SizedBox(
            width: 24.0,
            height: 20.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 23.8, 4.9),
                  size: Size(23.8, 20.4),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_hwnc8n,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 7.8, 23.8, 4.9),
                  size: Size(23.8, 20.4),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color(0xff5b5a5a),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff5b5a5a)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 15.5, 23.8, 4.9),
                  size: Size(23.8, 20.4),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color(0xff5b5a5a),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff5b5a5a)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(78.0, 182.5),
          child: Container(
            width: 204.1,
            height: 52.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(142.9, 204.5),
          child: SizedBox(
            width: 136.0,
            height: 20.0,
            child: SingleChildScrollView(
                child: Text(
              '500.000 ',
              style: TextStyle(
                fontFamily: 'Yu Gothic UI',
                fontSize: 20,
                color: const Color(0xf20a0606),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(118.9, 182.5),
          child: SizedBox(
            width: 136.0,
            height: 20.0,
            child: Text(
              'السيولة النقدية',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 18,
                color: const Color(0xf20a0606),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(126.9, 203.5),
          child: SizedBox(
            width: 42.0,
            height: 20.0,
            child: SingleChildScrollView(
                child: Text(
              'ل.س',
              style: TextStyle(
                fontFamily: 'Yu Gothic UI',
                fontSize: 20,
                color: const Color(0xf20a0606),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Container(
          width: 375.0,
          height: 14.0,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
          ),
        ),
        Transform.translate(
          offset: Offset(356.5, -2.5),
          child: Transform.rotate(
            angle: 4.7124,
            child:
                // Adobe XD layer: 'ic_battery_60_24px' (group)
                SizedBox(
              width: 7.0,
              height: 20.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 7.0, 9.0),
                    size: Size(7.0, 20.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_kw07ha,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 9.0, 7.0, 11.0),
                    size: Size(7.0, 20.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_xa6yi7,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(319.0, 0.0),
          child: SizedBox(
            width: 37.0,
            height: 9.0,
            child: SingleChildScrollView(
                child: Text(
              '%65',
              style: TextStyle(
                fontFamily: 'Yu Gothic UI',
                fontSize: 8,
                color: const Color(0xff0a0606),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(6.0, 4.0),
          child: SizedBox(
            width: 20.0,
            height: 5.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 5.0, 5.0),
                  size: Size(20.0, 5.0),
                  pinLeft: true,
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff0a0606),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff0a0606)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(5.0, 0.0, 5.0, 5.0),
                  size: Size(20.0, 5.0),
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff0a0606),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff0a0606)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(10.0, 0.0, 5.0, 5.0),
                  size: Size(20.0, 5.0),
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff0a0606),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff0a0606)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(15.0, 0.0, 5.0, 5.0),
                  size: Size(20.0, 5.0),
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff0a0606),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff0a0606)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(29.5, 3.5),
          child: SizedBox(
            width: 8.0,
            height: 6.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 8.0, 1.0),
                  size: Size(8.0, 6.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_yv7ltq,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(1.0, 2.0, 6.0, 1.0),
                  size: Size(8.0, 6.0),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_r0pq2s,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(2.0, 4.0, 4.0, 1.0),
                  size: Size(8.0, 6.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_1knnuu,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(3.0, 6.0, 2.0, 1.0),
                  size: Size(8.0, 6.0),
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_7kj27s,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(169.0, 0.0),
          child: SizedBox(
            width: 37.0,
            height: 9.0,
            child: SingleChildScrollView(
                child: Text(
              '10:10 Am',
              style: TextStyle(
                fontFamily: 'Yu Gothic UI',
                fontSize: 8,
                color: const Color(0xff0a0606),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(36.8, 486.9),
          child: Container(
            width: 139.6,
            height: 39.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xbfc8c6c6),
              border: Border.all(width: 2.0, color: const Color(0xccf3f3f3)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x21000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(197.8, 486.9),
          child: Container(
            width: 139.6,
            height: 39.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xbfc8c6c6),
              border: Border.all(width: 2.0, color: const Color(0xccf3f3f3)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x21000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(226.0, 495.8),
          child: SizedBox(
            width: 97.0,
            height: 10.0,
            child: SingleChildScrollView(
                child: Text(
              'إنشاء  موعد',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 20,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.left,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(70.0, 493.8),
          child: SizedBox(
            width: 113.0,
            height: 10.0,
            child: SingleChildScrollView(
                child: Text(
              'إنشاء مهمة',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 20,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.left,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(249.8, 255.9),
          child: Container(
            width: 105.6,
            height: 48.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xacc8c6c6),
              border: Border.all(width: 1.0, color: const Color(0xb8ffffff)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x1e000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(136.8, 255.9),
          child: Container(
            width: 101.6,
            height: 48.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xbfc8c6c6),
              border: Border.all(width: 1.0, color: const Color(0xccffffff)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x21000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(19.8, 255.9),
          child: Container(
            width: 104.6,
            height: 48.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xbfc8c6c6),
              border: Border.all(width: 1.0, color: const Color(0xccf3f3f3)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x21000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(146.4, 269.3),
          child: SizedBox(
            width: 57.0,
            height: 14.0,
            child: SingleChildScrollView(
                child: Text(
              'إيرادات',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 18,
                color: const Color(0xf20a0606),
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(29.5, 269.7),
          child: SizedBox(
            width: 57.0,
            height: 14.0,
            child: SingleChildScrollView(
                child: Text(
              'تحويل',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 18,
                color: const Color(0xf20a0606),
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(260.2, 268.5),
          child: SizedBox(
            width: 57.0,
            height: 11.0,
            child: SingleChildScrollView(
                child: Text(
              'مصاريف',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 18,
                color: const Color(0xf20a0606),
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(82.8, 265.8),
          child: Container(
            width: 27.2,
            height: 28.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              border: Border.all(width: 1.0, color: const Color(0xff0e7816)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(87.7, 274.8),
          child: SvgPicture.string(
            _svg_x0wtco,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        Transform.translate(
          offset: Offset(202.0, 267.0),
          child: Container(
            width: 27.0,
            height: 27.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              border: Border.all(width: 1.0, color: const Color(0xf21966b4)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(209.0, 279.0),
          child: Container(
            width: 13.0,
            height: 3.0,
            decoration: BoxDecoration(
              color: const Color(0xf21966b4),
              border: Border.all(width: 1.0, color: const Color(0xf21966b4)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(209.0, 279.0),
          child: Transform.rotate(
            angle: 1.5708,
            child: Container(
              width: 13.0,
              height: 3.0,
              decoration: BoxDecoration(
                color: const Color(0xf21966b4),
                border: Border.all(width: 1.0, color: const Color(0xf21966b4)),
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(319.0, 267.0),
          child: Container(
            width: 27.0,
            height: 27.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              border: Border.all(width: 1.0, color: const Color(0xfff13535)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(326.0, 279.0),
          child: Container(
            width: 13.0,
            height: 3.0,
            decoration: BoxDecoration(
              color: const Color(0xfff13535),
              border: Border.all(width: 1.0, color: const Color(0xfff13535)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(182.0, 169.0),
          child: SvgPicture.string(
            _svg_tbug4o,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        Transform.translate(
          offset: Offset(9.0, 542.0),
          child: Container(
            width: 357.0,
            height: 341.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xf21966b4)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 15),
                  blurRadius: 15,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(111.0, 550.0),
          child: SizedBox(
            width: 144.0,
            height: 23.0,
            child: SingleChildScrollView(
                child: Text(
              'July 2020',
              style: TextStyle(
                fontFamily: 'Yu Gothic UI',
                fontSize: 18,
                color: const Color(0xff0a0606),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(24.5, 581.5),
          child: SvgPicture.string(
            _svg_bfm08m,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        Transform.translate(
          offset: Offset(239.0, 552.0),
          child: SizedBox(
            width: 22.0,
            height: 22.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 22.0, 22.0),
                  size: Size(22.0, 22.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xf21966b4)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(8.5, 5.0, 6.9, 12.0),
                  size: Size(22.0, 22.0),
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child:
                      // Adobe XD layer: 'ic_chevron_right_24…' (shape)
                      SvgPicture.string(
                    _svg_joapjv,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(8.5, 5.0, 6.9, 12.0),
                  size: Size(22.0, 22.0),
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child:
                      // Adobe XD layer: 'ic_chevron_right_24…' (shape)
                      SvgPicture.string(
                    _svg_joapjv,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(104.0, 552.0),
          child: Transform.rotate(
            angle: 3.1416,
            child: SizedBox(
              width: 22.0,
              height: 22.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 22.0, 22.0),
                    size: Size(22.0, 22.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xf21966b4)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.5, 5.0, 6.9, 12.0),
                    size: Size(22.0, 22.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'ic_chevron_right_24…' (shape)
                        SvgPicture.string(
                      _svg_joapjv,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(223.0, 626.7),
          child: SizedBox(
            width: 50.0,
            height: 46.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 11.3, 35.0, 35.0),
                  size: Size(50.0, 46.3),
                  pinLeft: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffd64d),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffd64d)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(3, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(22.0, 0.0, 28.0, 30.0),
                  size: Size(50.0, 46.3),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 28.0, 30.0),
                        size: Size(28.0, 30.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: SvgPicture.string(
                          _svg_ok82yn,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(11.7, 1.7, 4.6, 8.0),
                        size: Size(28.0, 30.0),
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SingleChildScrollView(
                            child: Text(
                          '5',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 18,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(19.0, 593.0),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 28,
              runSpacing: 16,
              children: [
                {
                  'text': 'Mo',
                },
                {
                  'text': 'Tu',
                },
                {
                  'text': 'We',
                },
                {
                  'text': 'Th',
                },
                {
                  'text': 'Fr',
                },
                {
                  'text': 'Su',
                },
                {
                  'text': 'Sa',
                }
              ].map((map) {
                final text = map['text'];
                return Transform.translate(
                  offset: Offset(0.0, -3.0),
                  child: SizedBox(
                    width: 24.0,
                    height: 23.0,
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 24.0,
                          height: 23.0,
                          child: SingleChildScrollView(
                              child: Text(
                            text,
                            style: TextStyle(
                              fontFamily: 'Yu Gothic UI',
                              fontSize: 18,
                              color: const Color(0xff0a0606),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(20.0, 689.0),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 28,
              runSpacing: 16,
              children: [
                {
                  'text': '6',
                },
                {
                  'text': '7',
                },
                {
                  'text': '8',
                },
                {
                  'text': '9',
                },
                {
                  'text': '10',
                },
                {
                  'text': '11',
                },
                {
                  'text': '12',
                }
              ].map((map) {
                final text = map['text'];
                return SizedBox(
                  width: 24.0,
                  height: 23.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 24.0,
                        height: 23.0,
                        child: SingleChildScrollView(
                            child: Text(
                          text,
                          style: TextStyle(
                            fontFamily: 'Yu Gothic UI',
                            fontSize: 18,
                            color: const Color(0xff0a0606),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(19.0, 737.0),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 28,
              runSpacing: 16,
              children: [
                {
                  'text': '13',
                },
                {
                  'text': '14',
                },
                {
                  'text': '15',
                },
                {
                  'text': '16',
                },
                {
                  'text': '17',
                },
                {
                  'text': '18',
                },
                {
                  'text': '19',
                }
              ].map((map) {
                final text = map['text'];
                return SizedBox(
                  width: 24.0,
                  height: 23.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 24.0,
                        height: 23.0,
                        child: SingleChildScrollView(
                            child: Text(
                          text,
                          style: TextStyle(
                            fontFamily: 'Yu Gothic UI',
                            fontSize: 18,
                            color: const Color(0xff0a0606),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(19.0, 785.0),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 28,
              runSpacing: 16,
              children: [
                {
                  'text': '20',
                },
                {
                  'text': '21',
                },
                {
                  'text': '22',
                },
                {
                  'text': '23',
                },
                {
                  'text': '24',
                },
                {
                  'text': '25',
                },
                {
                  'text': '26',
                }
              ].map((map) {
                final text = map['text'];
                return SizedBox(
                  width: 24.0,
                  height: 23.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 24.0,
                        height: 23.0,
                        child: SingleChildScrollView(
                            child: Text(
                          text,
                          style: TextStyle(
                            fontFamily: 'Yu Gothic UI',
                            fontSize: 18,
                            color: const Color(0xff0a0606),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(19.0, 833.0),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 28,
              runSpacing: 16,
              children: [
                {
                  'text': '27',
                },
                {
                  'text': '28',
                },
                {
                  'text': '29',
                },
                {
                  'text': '30',
                },
                {
                  'text': '31',
                }
              ].map((map) {
                final text = map['text'];
                return SizedBox(
                  width: 24.0,
                  height: 23.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 24.0,
                        height: 23.0,
                        child: SingleChildScrollView(
                            child: Text(
                          text,
                          style: TextStyle(
                            fontFamily: 'Yu Gothic UI',
                            fontSize: 18,
                            color: const Color(0xff0a0606),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(23.0, 641.0),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 28,
              runSpacing: 16,
              children: [
                {
                  'text': '29',
                },
                {
                  'text': '30',
                }
              ].map((map) {
                final text = map['text'];
                return Transform.translate(
                  offset: Offset(-2.0, 0.0),
                  child: SizedBox(
                    width: 26.0,
                    height: 20.0,
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 26.0,
                          height: 20.0,
                          child: SingleChildScrollView(
                              child: Text(
                            text,
                            style: TextStyle(
                              fontFamily: 'Yu Gothic UI',
                              fontSize: 18,
                              color: const Color(0xff707070),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(280.0, 833.0),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 34,
              runSpacing: 16,
              children: [
                {
                  'text': '1',
                },
                {
                  'text': '2',
                }
              ].map((map) {
                final text = map['text'];
                return SizedBox(
                  width: 19.0,
                  height: 20.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 19.0,
                        height: 20.0,
                        child: SingleChildScrollView(
                            child: Text(
                          text,
                          style: TextStyle(
                            fontFamily: 'Yu Gothic UI',
                            fontSize: 18,
                            color: const Color(0xff707070),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(125.0, 641.0),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 34,
              runSpacing: 16,
              children: [
                {
                  'text': '1',
                },
                {
                  'text': '2',
                },
                {
                  'text': '3',
                },
                {
                  'text': '4',
                },
                {
                  'text': '5',
                }
              ].map((map) {
                final text = map['text'];
                return SizedBox(
                  width: 19.0,
                  height: 20.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 19.0,
                        height: 20.0,
                        child: SingleChildScrollView(
                            child: Text(
                          text,
                          style: TextStyle(
                            fontFamily: 'Yu Gothic UI',
                            fontSize: 18,
                            color: const Color(0xff0a0606),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(119.0, 670.4),
          child: SizedBox(
            width: 49.0,
            height: 49.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 13.6, 35.0, 35.0),
                  size: Size(49.0, 48.6),
                  pinLeft: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xf21966b4)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(3, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(21.0, 0.0, 28.0, 28.0),
                  size: Size(49.0, 48.6),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 28.0, 28.0),
                        size: Size(28.0, 28.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: SvgPicture.string(
                          _svg_gu9nkf,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(10.8, 0.0, 6.5, 12.0),
                        size: Size(28.0, 28.0),
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SingleChildScrollView(
                            child: Text(
                          '5',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 18,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(65.8, 669.9),
          child: SizedBox(
            width: 53.0,
            height: 49.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 14.2, 35.0, 35.0),
                  size: Size(52.6, 49.2),
                  pinLeft: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xf21966b4)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(3, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(24.6, 0.0, 28.0, 28.0),
                  size: Size(52.6, 49.2),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 28.0, 28.0),
                        size: Size(28.0, 28.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xfff13535),
                            border: Border.all(
                                width: 1.0, color: const Color(0xfff13535)),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(10.1, 0.0, 7.8, 14.0),
                        size: Size(28.0, 28.0),
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SingleChildScrollView(
                            child: Text(
                          '3',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 18,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(170.3, 670.2),
          child: SizedBox(
            width: 51.0,
            height: 49.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 14.0, 35.0, 35.0),
                  size: Size(50.8, 49.0),
                  pinLeft: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xf21966b4)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(3, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(22.8, 0.0, 28.0, 28.7),
                  size: Size(50.8, 49.0),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 28.0, 28.7),
                        size: Size(28.0, 28.7),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xfff13535),
                            border: Border.all(
                                width: 1.0, color: const Color(0xfff13535)),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(10.1, 0.7, 7.8, 15.4),
                        size: Size(28.0, 28.7),
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SingleChildScrollView(
                            child: Text(
                          '2',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 18,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(169.3, 721.8),
          child: SizedBox(
            width: 53.0,
            height: 46.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 11.4, 35.0, 35.0),
                  size: Size(52.8, 46.4),
                  pinLeft: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xf21966b4)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(3, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(24.8, 0.0, 28.0, 30.0),
                  size: Size(52.8, 46.4),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 28.0, 30.0),
                        size: Size(28.0, 30.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xfff13535),
                            border: Border.all(
                                width: 1.0, color: const Color(0xfff13535)),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(11.2, 1.1, 5.5, 10.7),
                        size: Size(28.0, 30.0),
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SingleChildScrollView(
                            child: Text(
                          '2',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 18,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(6.0, 112.0),
          child: SizedBox(
            width: 181.0,
            height: 15.0,
            child: SingleChildScrollView(
                child: Text(
              'Organize Your Life',
              style: TextStyle(
                fontFamily: 'Simple Indust Outline',
                fontSize: 22,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(8.0, 899.0),
          child: SizedBox(
            width: 358.0,
            height: 131.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 8.0, 358.0, 123.0),
                  size: Size(358.0, 131.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 358.0, 36.0),
                  size: Size(358.0, 131.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xfff3f3f3),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 94.0, 358.0, 36.0),
                  size: Size(358.0, 131.0),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xfff3f3f3),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(133.0, 5.0, 99.0, 19.0),
                  size: Size(358.0, 131.0),
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SingleChildScrollView(
                      child: Text(
                    'التنبيهات',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      color: const Color(0xff0a0606),
                    ),
                    textAlign: TextAlign.center,
                  )),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(145.0, 55.0, 185.0, 34.0),
                  size: Size(358.0, 131.0),
                  pinRight: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'موعد جرعة الدواء',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      color: const Color(0xff5b5a5a),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(7.0, 57.0, 108.0, 29.0),
                  size: Size(358.0, 131.0),
                  pinLeft: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'باقي 45 دقيقة',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 18,
                      color: const Color(0xff5b5a5a),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(170.2, 108.0, 15.8, 9.8),
                  size: Size(358.0, 131.0),
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'ic_keyboard_arrow_d…' (shape)
                      SvgPicture.string(
                    _svg_sar7d0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(315.8, 5.0, 21.3, 25.9),
                  size: Size(358.0, 131.0),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'ic_notifications_24…' (shape)
                      SvgPicture.string(
                    _svg_ryatj7,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(9.0, 1050.0),
          child: SizedBox(
            width: 357.0,
            height: 296.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 357.0, 296.3),
                  size: Size(357.0, 296.3),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 15),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 357.0, 35.7),
                  size: Size(357.0, 296.3),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xfff3f3f3),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(91.7, 6.9, 176.5, 13.9),
                  size: Size(357.0, 296.3),
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SingleChildScrollView(
                      child: Text(
                    'ادارة الصحة والهوايات',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 20,
                      color: const Color(0xff0a0606),
                    ),
                    textAlign: TextAlign.center,
                  )),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(240.0, 1101.0),
          child: SizedBox(
            width: 75.0,
            height: 75.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xefe4dcdc),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(17.0, 18.0, 42.0, 40.0),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'ic_directions_run_2…' (shape)
                      SvgPicture.string(
                    _svg_sr84yq,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(50.0, 1219.0),
          child: SizedBox(
            width: 75.0,
            height: 75.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xefe4dcdc),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(11.0, 12.0, 42.0, 40.0),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'ic_smoking_rooms_24…' (shape)
                      SvgPicture.string(
                    _svg_uoptdq,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0.0, 335.0),
          child: Container(
            width: 375.0,
            height: 114.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.0, -1.0),
                end: Alignment(0.0, 3.2),
                colors: [const Color(0xffffffff), const Color(0xffc8c8c8)],
                stops: [0.0, 1.0],
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(15, 15),
                  blurRadius: 15,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(-4.0, 426.0),
          child: SizedBox(
            width: 101.0,
            height: 12.0,
            child: SingleChildScrollView(
                child: Text(
              ' مواعيد الدواء',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 16,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(195.0, 426.0),
          child: SizedBox(
            width: 73.0,
            height: 12.0,
            child: SingleChildScrollView(
                child: Text(
              'إيرادات',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 16,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(286.0, 426.0),
          child: SizedBox(
            width: 73.0,
            height: 12.0,
            child: SingleChildScrollView(
                child: Text(
              'إضافة',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 16,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(15.3, 346.0),
          child: SizedBox(
            width: 73.0,
            height: 73.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 72.7, 72.7),
                  size: Size(72.7, 72.7),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffd64d),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 15),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(32.0, 6.3, 19.4, 46.5),
                  size: Size(72.7, 72.7),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Transform.rotate(
                    angle: -0.8203,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            width: 2.0, color: const Color(0xf2386694)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(43.1, 29.6, 12.6, 13.6),
                  size: Size(72.7, 72.7),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_yxn4yl,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(39.2, 25.7, 12.6, 13.6),
                  size: Size(72.7, 72.7),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_477k2f,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(10.5, 38.6, 22.4, 22.4),
                  size: Size(72.7, 72.7),
                  pinLeft: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'ic_update_24px' (shape)
                      SvgPicture.string(
                    _svg_6dmz9u,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(104.2, 346.0),
          child: SizedBox(
            width: 73.0,
            height: 73.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 72.7, 72.7),
                  size: Size(72.7, 72.7),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: SvgPicture.string(
                    _svg_au9zo2,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(8.3, 8.4, 56.1, 56.1),
                  size: Size(72.7, 72.7),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xf2386694)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(25.5, 17.0, 22.0, 38.8),
                  size: Size(72.7, 72.7),
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child:
                      // Adobe XD layer: 'ic_attach_money_24px' (shape)
                      SvgPicture.string(
                    _svg_gubfho,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(106.0, 426.0),
          child: SizedBox(
            width: 73.0,
            height: 12.0,
            child: SingleChildScrollView(
                child: Text(
              'مصاريف',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 16,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(285.0, 347.0),
          child: SizedBox(
            width: 75.0,
            height: 75.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffd64d),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 15),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(15.3, 35.9, 43.7, 3.8),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: const Color(0xf2386694),
                      border: Border.all(
                          width: 1.0, color: const Color(0xf2386694)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(35.2, 16.0, 3.8, 43.7),
                  size: Size(75.0, 75.0),
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child: SvgPicture.string(
                    _svg_qu82a4,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(193.0, 346.0),
          child: SizedBox(
            width: 75.0,
            height: 75.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                        size: Size(75.0, 75.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffffd64d),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x29000000),
                                offset: Offset(0, 15),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(15.1, 8.6, 44.8, 57.4),
                        size: Size(75.0, 75.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: SvgPicture.string(
                          _svg_1bampq,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(23.3, 40.9, 3.3, 22.0),
                        size: Size(75.0, 75.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_s8qz2e,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(28.9, 38.7, 3.3, 24.2),
                        size: Size(75.0, 75.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_szxi62,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(34.5, 42.0, 3.3, 20.8),
                        size: Size(75.0, 75.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_ij7ovb,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(40.1, 38.7, 3.3, 24.2),
                        size: Size(75.0, 75.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_74s257,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(45.7, 35.3, 3.3, 27.5),
                        size: Size(75.0, 75.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xf2386694),
                            border: Border.all(
                                width: 1.0, color: const Color(0xf2386694)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(29.2, 11.0, 13.5, 23.8),
                  size: Size(75.0, 75.0),
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'ic_attach_money_24px' (shape)
                      SvgPicture.string(
                    _svg_tmneyq,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(240.0, 1219.0),
          child: SizedBox(
            width: 75.0,
            height: 75.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                        size: Size(75.0, 75.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xefe4dcdc),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x29000000),
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
                  bounds: Rect.fromLTWH(20.0, 35.1, 35.0, 5.8),
                  size: Size(75.0, 75.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xf2386694),
                      border: Border.all(
                          width: 1.0, color: const Color(0xf21966b4)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(20.0, 35.1, 35.0, 5.8),
                  size: Size(75.0, 75.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Transform.rotate(
                    angle: 1.5708,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xf2386694),
                        border: Border.all(
                            width: 1.0, color: const Color(0xf21966b4)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(62.5, 31.0),
          child: SvgPicture.string(
            _svg_84auew,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        Transform.translate(
          offset: Offset(145.0, 1219.0),
          child: SizedBox(
            width: 75.0,
            height: 75.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                        size: Size(75.0, 75.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xefe4dcdc),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x29000000),
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
                  bounds: Rect.fromLTWH(18.0, 18.0, 40.0, 40.0),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'ic_import_contacts_…' (shape)
                      SvgPicture.string(
                    _svg_962h15,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(285.0, 1.0),
          child:
              // Adobe XD layer: 'honey bee new logo …' (shape)
              Container(
            width: 73.0,
            height: 104.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(''),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(293.0, 80.0),
          child: SizedBox(
            width: 58.0,
            height: 12.0,
            child: SingleChildScrollView(
                child: Text(
              'Honey Bee',
              style: TextStyle(
                fontFamily: 'Pristina',
                fontSize: 16,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Transform.translate(
          offset: Offset(145.0, 1101.0),
          child: SizedBox(
            width: 75.0,
            height: 75.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                        size: Size(75.0, 75.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                              size: Size(75.0, 75.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xefe4dcdc),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x29000000),
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
                        bounds: Rect.fromLTWH(13.0, 13.0, 50.0, 50.0),
                        size: Size(75.0, 75.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'bmi-01' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(''),
                              fit: BoxFit.fill,
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
        Transform.translate(
          offset: Offset(50.0, 1187.0),
          child: SizedBox(
            width: 78.0,
            height: 17.0,
            child: Text(
              'غذاء و وجبات',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 15,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(50.0, 1306.0),
          child: SizedBox(
            width: 78.0,
            height: 17.0,
            child: Text(
              'ادارة التدخين',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 15,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(143.0, 1306.0),
          child: SizedBox(
            width: 78.0,
            height: 17.0,
            child: Text(
              'قراءة',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 15,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(239.0, 1306.0),
          child: SizedBox(
            width: 78.0,
            height: 17.0,
            child: Text(
              'إضافة',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 15,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(144.0, 1187.0),
          child: SizedBox(
            width: 78.0,
            height: 17.0,
            child: Text(
              'BMI',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 15,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(239.0, 1187.0),
          child: SizedBox(
            width: 78.0,
            height: 17.0,
            child: Text(
              'رياضة',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 15,
                color: const Color(0xff0a0606),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(274.5, 552.0),
          child: SizedBox(
            width: 78.0,
            height: 21.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 78.5, 21.0),
                  size: Size(78.5, 21.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xfff13535),
                      border: Border.all(
                          width: 1.0, color: const Color(0xfff13535)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(1.1, 2.2, 67.4, 9.9),
                  size: Size(78.5, 21.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  fixedHeight: true,
                  child: SingleChildScrollView(
                      child: Text(
                    ' 2 Weeks',
                    style: TextStyle(
                      fontFamily: 'Verdana',
                      fontSize: 12,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.center,
                  )),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(50.0, 1101.0),
          child: SizedBox(
            width: 75.0,
            height: 75.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                        size: Size(75.0, 75.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 75.0),
                              size: Size(75.0, 75.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xefe4dcdc),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x29000000),
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
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(17.0, 13.7, 41.3, 41.3),
                  size: Size(75.0, 75.0),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'ic_local_dining_24px' (shape)
                      SvgPicture.string(
                    _svg_fgksyb,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0.0, 1365.0),
          child: Container(
            width: 375.0,
            height: 57.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.0, -1.0),
                end: Alignment(0.0, 4.84),
                colors: [const Color(0xefffffff), const Color(0xff7b7b7b)],
                stops: [0.0, 1.0],
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(10, 3),
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(90.0, 1369.2),
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
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(11.3, 12.1, 28.5, 28.5),
                        size: Size(50.8, 50.8),
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 28.5, 28.5),
                              size: Size(28.5, 28.5),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'ic_settings_24px' (shape)
                                  SvgPicture.string(
                                _svg_alkmwu,
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
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(14.0, 1369.0),
          child: SizedBox(
            width: 50.0,
            height: 51.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 50.1, 51.0),
                  size: Size(50.1, 51.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 50.1, 51.0),
                        size: Size(50.1, 51.0),
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
                  bounds: Rect.fromLTWH(9.4, 8.9, 32.9, 31.9),
                  size: Size(50.1, 51.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 32.9, 31.9),
                        size: Size(32.9, 31.9),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'ic_person_24px' (shape)
                            SvgPicture.string(
                          _svg_glj5jl,
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
        ),
        Transform.translate(
          offset: Offset(236.1, 1369.2),
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
                  bounds: Rect.fromLTWH(11.9, 8.8, 26.0, 33.0),
                  size: Size(50.8, 50.8),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'ic_insert_drive_fil…' (shape)
                      SvgPicture.string(
                    _svg_f426zk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(15.9, 24.8, 17.0, 1.0),
                  size: Size(50.8, 50.8),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffd64d)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(15.9, 27.8, 17.0, 1.0),
                  size: Size(50.8, 50.8),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffd64d)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(15.9, 30.8, 17.0, 1.0),
                  size: Size(50.8, 50.8),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: const Color(0xffffd64d),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffd64d)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(15.9, 33.8, 17.0, 1.0),
                  size: Size(50.8, 50.8),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: const Color(0xffffd64d),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffd64d)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(16.6, 13.8, 6.3, 6.3),
                  size: Size(50.8, 50.8),
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'ic_edit_24px' (shape)
                      SvgPicture.string(
                    _svg_yqbn5g,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(310.1, 1369.2),
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
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffd64d),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(10.9, 23.8, 30.0, 5.0),
                  size: Size(50.8, 50.8),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xff0a0606),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff0a0606)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(10.9, 23.8, 30.0, 5.0),
                  size: Size(50.8, 50.8),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Transform.rotate(
                    angle: 1.5708,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xff0a0606),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff0a0606)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(162.1, 1368.2),
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
        Transform.translate(
          offset: Offset(18.0, 1373.3),
          child: SvgPicture.string(
            _svg_4g8cc3,
            allowDrawingOutsideViewBox: true,
          ),
        ),
      ],
    );
  }
}

const String _svg_hwnc8n =
    '<svg viewBox="8.0 21.0 23.8 4.9" ><path transform="translate(8.0, 21.0)" d="M 2.443168163299561 0 L 21.39618682861328 0 C 22.74551200866699 0 23.83935546875 1.093843698501587 23.83935546875 2.443168163299561 C 23.83935546875 3.792492389678955 22.74551200866699 4.886336326599121 21.39618682861328 4.886336326599121 L 2.443168163299561 4.886336326599121 C 1.093843698501587 4.886336326599121 0 3.792492389678955 0 2.443168163299561 C 0 1.093843698501587 1.093843698501587 0 2.443168163299561 0 Z" fill="#5b5a5a" stroke="#5b5a5a" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
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
const String _svg_x0wtco =
    '<svg viewBox="87.7 274.8 18.6 11.3" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 106.29, 274.84)" d="M 3.221011161804199 0 L 0 4.122444629669189 L 2.415757656097412 4.122444629669189 L 2.415757656097412 11.36513710021973 L 4.02626371383667 11.36513710021973 L 4.02626371383667 4.122444629669189 L 6.442022323608398 4.122444629669189 L 3.221011161804199 0 Z M 8.85777759552002 14.47505187988281 L 8.85777759552002 7.23236083984375 L 7.24727201461792 7.23236083984375 L 7.24727201461792 14.47505187988281 L 4.831516265869141 14.47505187988281 L 8.052526473999023 18.59749794006348 L 11.27353668212891 14.47505187988281 L 8.85777759552002 14.47505187988281 Z" fill="#0e7816" stroke="#0e7816" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tbug4o =
    '<svg viewBox="182.0 169.0 12.0 7.4" ><path transform="translate(176.0, 161.16)" d="M 7.409999847412109 7.840000152587891 L 12 12.42000007629395 L 16.59000015258789 7.840000152587891 L 18 9.25 L 12 15.25 L 6 9.25 L 7.409999847412109 7.840000152587891 Z" fill="#0a0606" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_joapjv =
    '<svg viewBox="1326.5 1253.0 6.9 12.0" ><path transform="translate(1317.41, 1247.0)" d="M 10 6 L 9.122848510742188 6.86572265625 L 14.26191711425781 12 L 9.224411010742188 17.0015869140625 L 10 18 L 16 12 L 10 6 Z" fill="#1966b4" fill-opacity="0.95" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bfm08m =
    '<svg viewBox="24.5 581.5 326.0 1.0" ><path transform="translate(24.5, 581.5)" d="M 0 0 L 326 0" fill="none" stroke="#1966b4" stroke-width="1" stroke-opacity="0.95" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ok82yn =
    '<svg viewBox="1314.0 1248.3 28.0 30.0" ><path transform="translate(1314.0, 1248.33)" d="M 14 0 C 21.73198509216309 0 28 6.715729713439941 28 15 C 28 23.28426933288574 21.73198509216309 30 14 30 C 6.268013000488281 30 0 23.28426933288574 0 15 C 0 6.715729713439941 6.268013000488281 0 14 0 Z" fill="#f13535" stroke="#f13535" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gu9nkf =
    '<svg viewBox="1313.0 1254.0 28.0 28.0" ><path transform="translate(1313.0, 1254.0)" d="M 13.9999942779541 -1.58945738348848e-07 C 21.73197174072266 -1.58945738348848e-07 27.9999885559082 6.268010139465332 27.9999885559082 13.99998950958252 C 27.9999885559082 21.73196792602539 21.73197174072266 27.99997901916504 13.9999942779541 27.99997901916504 C 6.268011093139648 27.99997901916504 0 21.73196792602539 0 13.99998950958252 C 0 6.268010139465332 6.268011093139648 -1.58945738348848e-07 13.9999942779541 -1.58945738348848e-07 Z" fill="#f13535" stroke="#f13535" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sar7d0 =
    '<svg viewBox="178.2 1004.0 15.8 9.8" ><path transform="translate(172.18, 996.16)" d="M 7.858915328979492 7.840000629425049 L 13.9102783203125 13.8781795501709 L 19.96164131164551 7.840000629425049 L 21.820556640625 9.698915481567383 L 13.9102783203125 17.60919380187988 L 6 9.698915481567383 L 7.858915328979492 7.840000629425049 Z" fill="#0a0606" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ryatj7 =
    '<svg viewBox="323.8 901.0 21.3 25.9" ><path transform="translate(319.75, 898.5)" d="M 14.625 28.3984375 C 16.0859375 28.3984375 17.28125 27.203125 17.28125 25.7421875 L 11.96875 25.7421875 C 11.96875 27.203125 13.15078163146973 28.3984375 14.625 28.3984375 Z M 22.59375 20.4296875 L 22.59375 13.7890625 C 22.59375 9.711719512939453 20.41562652587891 6.298437595367432 16.6171875 5.395312309265137 L 16.6171875 4.4921875 C 16.6171875 3.389843940734863 15.72734451293945 2.5 14.625 2.5 C 13.52265644073486 2.5 12.6328125 3.389843940734863 12.6328125 4.4921875 L 12.6328125 5.395312309265137 C 8.821093559265137 6.298437595367432 6.65625 9.698437690734863 6.65625 13.7890625 L 6.65625 20.4296875 L 4 23.0859375 L 4 24.4140625 L 25.25 24.4140625 L 25.25 23.0859375 L 22.59375 20.4296875 Z" fill="#ffd64d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sr84yq =
    '<svg viewBox="1692.0 2058.0 42.0 40.0" ><path transform="translate(1689.11, 2056.52)" d="M 30.54217338562012 8.921860694885254 C 33.41173934936523 8.921860694885254 35.75956344604492 7.24744176864624 35.75956344604492 5.200930118560791 C 35.75956344604492 3.1544189453125 33.41173934936523 1.480000138282776 30.54217338562012 1.480000138282776 C 27.67260551452637 1.480000138282776 25.32478141784668 3.1544189453125 25.32478141784668 5.200930118560791 C 25.32478141784668 7.24744176864624 27.67260551452637 8.921860694885254 30.54217338562012 8.921860694885254 Z M 21.1508674621582 34.78232574462891 L 23.75956344604492 26.59627914428711 L 29.23782539367676 30.31720924377441 L 29.23782539367676 41.48000335693359 L 34.45521545410156 41.48000335693359 L 34.45521545410156 27.52651023864746 L 28.97695350646973 23.80558013916016 L 30.54217338562012 18.22418594360352 C 33.93347930908203 21.01488304138184 39.1508674621582 22.87534713745117 44.88999938964844 22.87534713745117 L 44.88999938964844 19.15441703796387 C 39.93347930908203 19.15441703796387 35.75956344604492 17.29395294189453 33.672607421875 14.68930339813232 L 31.06390953063965 11.71255874633789 C 30.02043342590332 10.59628009796143 28.45521354675293 9.852093696594238 26.62912940979004 9.852093696594238 C 25.84651947021484 9.852093696594238 25.32478141784668 10.03814029693604 24.54217147827148 10.03814029693604 L 10.97695541381836 14.13116264343262 L 10.97695541381836 22.87534713745117 L 16.1943473815918 22.87534713745117 L 16.1943473815918 16.54976654052734 L 20.88999938964844 15.24744319915771 L 16.71608543395996 30.31720924377441 L 3.933477878570557 28.45674324035645 L 2.889998912811279 32.17767715454102 L 21.1508674621582 34.78232574462891 Z" fill="#386694" fill-opacity="0.95" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uoptdq =
    '<svg viewBox="1786.0 2053.0 42.0 40.0" ><path transform="translate(1784.0, 2051.0)" d="M 1.99999988079071 34.9411735534668 L 33.5 34.9411735534668 L 33.5 42 L 1.99999988079071 42 L 1.99999988079071 34.9411735534668 Z M 40.84999847412109 34.9411735534668 L 44 34.9411735534668 L 44 42 L 40.84999847412109 42 L 40.84999847412109 34.9411735534668 Z M 35.59999847412109 34.9411735534668 L 38.75 34.9411735534668 L 38.75 42 L 35.59999847412109 42 L 35.59999847412109 34.9411735534668 Z M 37.38500213623047 15.48234939575195 C 38.68700408935547 14.04705619812012 39.48500061035156 12.07058715820313 39.48500061035156 9.882350921630859 C 39.48500061035156 5.529411792755127 36.33499908447266 2 32.45000076293945 2 L 32.45000076293945 5.529411792755127 C 34.59199905395508 5.529411792755127 36.33499908447266 7.482353210449219 36.33499908447266 9.882351875305176 C 36.33499908447266 12.28235244750977 34.59199905395508 14.2352933883667 32.45000076293945 14.2352933883667 L 32.45000076293945 17.76470565795898 C 37.15399932861328 17.76470565795898 40.84999847412109 22.07058525085449 40.84999847412109 27.3411750793457 L 40.84999847412109 32.58823394775391 L 44 32.58823394775391 L 44 27.31764793395996 C 44 22.09411811828613 41.31199645996094 17.57647323608398 37.38500213623047 15.48235321044922 Z M 31.46299934387207 21.29411697387695 L 28.24999809265137 21.29411697387695 C 26.10799789428711 21.29411697387695 24.36499786376953 18.98823356628418 24.36499786376953 16.58823394775391 C 24.36499786376953 14.18823623657227 26.10799789428711 12.4705867767334 28.24999809265137 12.4705867767334 L 28.24999809265137 8.94117546081543 C 24.36499786376953 8.94117546081543 21.21499824523926 12.4705867767334 21.21499824523926 16.82352828979492 C 21.21499824523926 21.17646789550781 24.36499786376953 24.70588111877441 28.24999809265137 24.70588111877441 L 31.46299934387207 24.70588111877441 C 33.66799926757813 24.70588111877441 35.59999847412109 26.44705772399902 35.59999847412109 29.52940940856934 L 35.59999847412109 32.58823394775391 L 38.75 32.58823394775391 L 38.75 28.72940826416016 C 38.75 24.4705867767334 35.38999938964844 21.29411697387695 31.46299934387207 21.29411697387695 Z" fill="#386694" fill-opacity="0.95" stroke="#386694" stroke-width="1" stroke-opacity="0.95" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yxn4yl =
    '<svg viewBox="68.4 390.6 12.6 13.6" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(68.41, 390.56)" d="M 12.59912490844727 0 L 0 13.56828784942627" fill="none" stroke="#386694" stroke-width="2" stroke-opacity="0.95" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_477k2f =
    '<svg viewBox="64.5 386.7 12.6 13.6" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(64.53, 386.68)" d="M 12.59912490844727 0 L 0 13.56828784942627" fill="none" stroke="#386694" stroke-width="2" stroke-opacity="0.95" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_6dmz9u =
    '<svg viewBox="35.8 399.6 22.4 22.4" ><path transform="translate(32.79, 396.59)" d="M 25.4140625 11.86612510681152 L 16.9713191986084 11.86612510681152 L 20.38328170776367 8.354541778564453 C 16.98377227783203 4.992387771606445 11.47980117797852 4.867863178253174 8.080288887023926 8.230016708374023 C 4.680777072906494 11.60462379455566 4.680777072906494 17.04633331298828 8.080288887023926 20.42093849182129 C 11.47980117797852 23.79554557800293 16.98377227783203 23.79554557800293 20.38328170776367 20.42093849182129 C 22.07681274414063 18.7523136138916 22.9235782623291 16.79728317260742 22.9235782623291 14.33170509338379 L 25.4140625 14.33170509338379 C 25.4140625 16.79728317260742 24.31825065612793 19.99755859375 22.12662315368652 22.16427612304688 C 17.75582313537598 26.49771881103516 10.65794277191162 26.49771881103516 6.2871413230896 22.16427612304688 C 1.928793430328369 17.84328651428223 1.891436338424683 10.82011985778809 6.262236595153809 6.499129772186279 C 10.63303661346436 2.178139209747314 17.64375114440918 2.178139209747314 22.01455116271973 6.499129772186279 L 25.4140625 3 L 25.4140625 11.86612510681152 Z M 14.82950305938721 9.226211547851563 L 14.82950305938721 14.51848983764648 L 19.18785095214844 17.10859298706055 L 18.2912769317627 18.61533737182617 L 12.96163940429688 15.45242118835449 L 12.96163940429688 9.226211547851563 L 14.82950305938721 9.226211547851563 Z" fill="#386694" fill-opacity="0.95" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_au9zo2 =
    '<svg viewBox="117.2 361.0 72.7 72.7" ><defs><filter id="shadow"><feDropShadow dx="0" dy="15" stdDeviation="15"/></filter></defs><path transform="translate(117.16, 361.0)" d="M 36.3436279296875 0 C 56.41565704345703 0 72.687255859375 16.27159690856934 72.687255859375 36.3436279296875 C 72.687255859375 56.41565704345703 56.41565704345703 72.687255859375 36.3436279296875 72.687255859375 C 16.27159690856934 72.687255859375 0 56.41565704345703 0 36.3436279296875 C 0 16.27159690856934 16.27159690856934 0 36.3436279296875 0 Z" fill="#ffd64d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_gubfho =
    '<svg viewBox="142.7 378.0 22.0 38.8" ><path transform="translate(136.35, 374.98)" d="M 18.13845062255859 20.03754806518555 C 13.24285411834717 18.76512336730957 11.66849708557129 17.4495677947998 11.66849708557129 15.40074729919434 C 11.66849708557129 13.0499963760376 13.84671592712402 11.4109411239624 17.491455078125 11.4109411239624 C 21.33029365539551 11.4109411239624 22.75368690490723 13.2440938949585 22.88308334350586 15.93990898132324 L 27.6492805480957 15.93990898132324 C 27.49831771850586 12.23046970367432 25.23383331298828 8.822958946228027 20.72643089294434 7.723067760467529 L 20.72643089294434 3 L 14.25647640228271 3 L 14.25647640228271 7.658367156982422 C 10.07257461547852 8.56416130065918 6.708196640014648 11.28154182434082 6.708196640014648 15.44387722015381 C 6.708196640014648 20.42574691772461 10.82740020751953 22.9058952331543 16.84445762634277 24.35085105895996 C 22.23608589172363 25.64484214782715 23.31441116333008 27.54269409179688 23.31441116333008 29.54837989807129 C 23.31441116333008 31.03646850585938 22.25765419006348 33.40878677368164 17.49145317077637 33.40878677368164 C 13.04875087738037 33.40878677368164 11.30186462402344 31.42466735839844 11.06463146209717 28.87981414794922 L 6.319998264312744 28.87981414794922 C 6.57879638671875 33.60288619995117 10.11570644378662 36.25556182861328 14.25647640228271 37.13978958129883 L 14.25647640228271 41.81972503662109 L 20.72643089294434 41.81972503662109 L 20.72643089294434 37.18292617797852 C 24.9319019317627 36.38496780395508 28.27471351623535 33.94795227050781 28.27471351623535 29.52681541442871 C 28.27471351623535 23.40192413330078 23.03404998779297 21.30997276306152 18.13845062255859 20.03754806518555 Z" fill="#386694" fill-opacity="0.95" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qu82a4 =
    '<svg viewBox="1306.2 1286.0 3.8 43.7" ><defs><filter id="shadow"><feDropShadow dx="0" dy="10" stdDeviation="10"/></filter></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 1310.06, 1286.0)" d="M 1.91740870475769 0 L 41.79951095581055 0 C 42.85846710205078 0 43.7169189453125 0.8584531545639038 43.7169189453125 1.91740870475769 C 43.7169189453125 2.976364135742188 42.85846710205078 3.834817409515381 41.79951095581055 3.834817409515381 L 1.91740870475769 3.834817409515381 C 0.8584531545639038 3.834817409515381 0 2.976364135742188 0 1.91740870475769 C 0 0.8584531545639038 0.8584531545639038 0 1.91740870475769 0 Z" fill="#386694" fill-opacity="0.95" stroke="#386694" stroke-width="1" stroke-opacity="0.95" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_1bampq =
    '<svg viewBox="1290.1 1221.6 44.8 57.4" ><path transform="translate(1290.1, 1221.64)" d="M 5 0 L 39.80591201782227 0 C 42.56733703613281 0 44.80591201782227 2.238576173782349 44.80591201782227 5 L 44.80591201782227 52.36330795288086 C 44.80591201782227 55.12473297119141 42.56733703613281 57.36330795288086 39.80591201782227 57.36330795288086 L 5 57.36330795288086 C 2.238576173782349 57.36330795288086 0 55.12473297119141 0 52.36330795288086 L 0 5 C 0 2.238576173782349 2.238576173782349 0 5 0 Z" fill="none" stroke="#386694" stroke-width="1" stroke-opacity="0.95" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s8qz2e =
    '<svg viewBox="1298.3 1253.9 3.3 22.0" ><path transform="translate(1298.34, 1253.9)" d="M 0 0 L 3.346868276596069 0 L 3.346868276596069 21.9572868347168 L 0 21.9572868347168 L 0 0 Z" fill="#386694" fill-opacity="0.95" stroke="#386694" stroke-width="1" stroke-opacity="0.95" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_szxi62 =
    '<svg viewBox="1303.9 1251.7 3.3 24.2" ><path transform="translate(1303.92, 1251.67)" d="M 0 0 L 3.346868276596069 0 L 3.346868276596069 24.18853187561035 L 0 24.18853187561035 L 0 0 Z" fill="#386694" fill-opacity="0.95" stroke="#386694" stroke-width="1" stroke-opacity="0.95" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ij7ovb =
    '<svg viewBox="1309.5 1255.0 3.3 20.8" ><path transform="translate(1309.5, 1255.01)" d="M 0 0 L 3.346868276596069 0 L 3.346868276596069 20.8416633605957 L 0 20.8416633605957 L 0 0 Z" fill="#386694" fill-opacity="0.95" stroke="#386694" stroke-width="1" stroke-opacity="0.95" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_74s257 =
    '<svg viewBox="1315.1 1251.7 3.3 24.2" ><path transform="translate(1315.08, 1251.67)" d="M 0 0 L 3.346868276596069 0 L 3.346868276596069 24.18853187561035 L 0 24.18853187561035 L 0 0 Z" fill="#386694" fill-opacity="0.95" stroke="#386694" stroke-width="1" stroke-opacity="0.95" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tmneyq =
    '<svg viewBox="1370.2 1228.0 13.5 23.8" ><path transform="translate(1363.85, 1224.98)" d="M 13.56315422058105 13.44177436828613 C 10.56279754638672 12.66194534301758 9.59792423248291 11.85568332672119 9.59792423248291 10.60002613067627 C 9.59792423248291 9.159324645996094 10.93288612365723 8.154799461364746 13.16663074493408 8.154799461364746 C 15.5193338394165 8.154799461364746 16.39168548583984 9.278281211853027 16.47098922729492 10.93046092987061 L 19.39204025268555 10.93046092987061 C 19.29952049255371 8.657062530517578 17.91168975830078 6.568707466125488 15.149245262146 5.894618988037109 L 15.149245262146 3 L 11.18401527404785 3 L 11.18401527404785 5.854966163635254 C 8.619833946228027 6.410098075866699 6.557912826538086 8.075494766235352 6.557912826538086 10.6264591217041 C 6.557912826538086 13.67968940734863 9.082442283630371 15.19969367980957 12.77010631561279 16.08526039123535 C 16.07446479797363 16.8783073425293 16.73533630371094 18.04144096374512 16.73533630371094 19.27066230773926 C 16.73533630371094 20.18266487121582 16.08768272399902 21.63658332824707 13.16662979125977 21.63658332824707 C 10.44383811950684 21.63658332824707 9.373226165771484 20.42057800292969 9.22783374786377 18.86091804504395 L 6.319998264312744 18.86091804504395 C 6.478607177734375 21.75554084777832 8.646267890930176 23.38128089904785 11.18401527404785 23.92319679260254 L 11.18401527404785 26.79137992858887 L 15.149245262146 26.79137992858887 L 15.149245262146 23.94963264465332 C 17.72664451599121 23.46059036254883 19.77534866333008 21.96702003479004 19.77534866333008 19.25744438171387 C 19.77534866333008 15.50369453430176 16.56351089477539 14.22160339355469 13.56315422058105 13.44177436828613 Z" fill="#386694" fill-opacity="0.95" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_962h15 =
    '<svg viewBox="163.0 1286.0 40.0 40.0" ><path transform="translate(162.0, 1281.5)" d="M 37.3636360168457 5.676469802856445 C 35.34545516967773 4.852941036224365 33.12727355957031 4.499999523162842 30.99999809265137 4.499999523162842 C 27.45454788208008 4.499999523162842 23.6363639831543 5.441175937652588 21.00000190734863 8.029412269592285 C 18.36363792419434 5.441175937652588 14.54545497894287 4.499999523162842 11 4.499999523162842 C 7.454546451568604 4.499999523162842 3.636363744735718 5.441175937652588 1 8.029412269592285 L 1 42.5 C 1 43.08823394775391 1.454545378684998 43.67646789550781 1.909090995788574 43.67646789550781 C 2.090909242630005 43.67646789550781 2.181818008422852 43.55882263183594 2.363636493682861 43.55882263183594 C 4.818181991577148 42.02941513061523 8.363637924194336 40.97058868408203 11 40.97058868408203 C 14.54545497894287 40.97058868408203 18.36363792419434 41.91176223754883 21.00000190734863 44.5 C 23.45454788208008 42.5 27.90909194946289 40.97058868408203 30.99999809265137 40.97058868408203 C 34 40.97058868408203 37.09091186523438 41.67646789550781 39.6363639831543 43.44117736816406 C 39.81818389892578 43.55882263183594 39.90909194946289 43.55882263183594 40.09091186523438 43.55882263183594 C 40.54545211791992 43.55882263183594 41 42.97058486938477 41 42.38235092163086 L 41 8.029412269592285 C 39.90909194946289 6.970588207244873 38.72727203369141 6.264705657958984 37.3636360168457 5.676469802856445 Z M 37.3636360168457 37.4411735534668 C 35.3636360168457 36.61764526367188 33.18181991577148 36.26470565795898 30.99999809265137 36.26470565795898 C 27.90909194946289 36.26470565795898 23.45454788208008 37.79411697387695 21.00000190734863 39.79411697387695 L 21.00000190734863 12.73529529571533 C 23.45454788208008 10.73529434204102 27.90909194946289 9.20588207244873 30.99999809265137 9.20588207244873 C 33.18181991577148 9.20588207244873 35.3636360168457 9.55882453918457 37.3636360168457 10.38235378265381 L 37.3636360168457 37.4411735534668 Z" fill="#386694" fill-opacity="0.95" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_84auew =
    '<svg viewBox="62.5 31.0 76.5 28.4" ><path transform="translate(60.5, 29.0)" d="M 15.23675060272217 2 C 7.922749996185303 2 2 7.936000347137451 2 15.25000190734863 C 2 22.56400108337402 7.922749996185303 28.5 15.23675060272217 28.5 C 22.56400108337402 28.5 28.5 22.56400108337402 28.5 15.25000190734863 C 28.5 7.936000347137451 22.56400108337402 2 15.23675060272217 2 Z M 24.41900062561035 9.949999809265137 L 20.51025199890137 9.949999809265137 C 20.08625221252441 8.293750762939453 19.47675132751465 6.703750133514404 18.6817512512207 5.232999801635742 C 21.1197509765625 6.067749977111816 23.14699935913086 7.763749599456787 24.41900062561035 9.949999809265137 Z M 15.25000190734863 4.703000068664551 C 16.34975242614746 6.292999744415283 17.21100044250488 8.05525016784668 17.78075218200684 9.949999809265137 L 12.71925067901611 9.949999809265137 C 13.28900146484375 8.055251121520996 14.15025043487549 6.292999744415283 15.25000190734863 4.703000068664551 Z M 4.994500637054443 17.90000152587891 C 4.78249979019165 17.05200004577637 4.650000095367432 16.16425132751465 4.650000095367432 15.25000190734863 C 4.650000095367432 14.3357515335083 4.78249979019165 13.44800090789795 4.994500637054443 12.60000038146973 L 9.473000526428223 12.60000038146973 C 9.367001533508301 13.47450160980225 9.287501335144043 14.34900093078613 9.287501335144043 15.25000190734863 C 9.287501335144043 16.1510009765625 9.367001533508301 17.0255012512207 9.473000526428223 17.90000152587891 L 4.994500637054443 17.90000152587891 Z M 6.081000804901123 20.55000114440918 L 9.989751815795898 20.55000114440918 C 10.41375064849854 22.20625114440918 11.02325057983398 23.79624938964844 11.81825160980225 25.26699829101563 C 9.380250930786133 24.43224906921387 7.353001594543457 22.7495002746582 6.081001281738281 20.55000114440918 Z M 9.989751815795898 9.949999809265137 L 6.081000328063965 9.949999809265137 C 7.353000164031982 7.750500679016113 9.380249977111816 6.067749500274658 11.81825065612793 5.232999801635742 C 11.02325057983398 6.703750133514404 10.41375064849854 8.293750762939453 9.989749908447266 9.949999809265137 Z M 15.25000190734863 25.79700088500977 C 14.15025043487549 24.20699882507324 13.28900146484375 22.44474792480469 12.71925067901611 20.55000114440918 L 17.78075218200684 20.55000114440918 C 17.21100044250488 22.44474792480469 16.34975242614746 24.20699882507324 15.25000190734863 25.79700088500977 Z M 18.35050201416016 17.90000152587891 L 12.14949989318848 17.90000152587891 C 12.03024959564209 17.0255012512207 11.9375 16.1510009765625 11.9375 15.25000190734863 C 11.9375 14.34900093078613 12.03024959564209 13.46125030517578 12.14949989318848 12.60000038146973 L 18.35050201416016 12.60000038146973 C 18.46975326538086 13.46125030517578 18.56250190734863 14.34900093078613 18.56250190734863 15.25000190734863 C 18.56250190734863 16.1510009765625 18.46975326538086 17.0255012512207 18.35050201416016 17.90000152587891 Z M 18.6817512512207 25.26699829101563 C 19.47675132751465 23.7962474822998 20.08625030517578 22.20625114440918 20.51025199890137 20.55000114440918 L 24.41900062561035 20.55000114440918 C 23.14700126647949 22.73624992370605 21.1197509765625 24.43224906921387 18.6817512512207 25.26699829101563 Z M 21.02700233459473 17.90000152587891 C 21.13300132751465 17.0255012512207 21.21249961853027 16.1510009765625 21.21249961853027 15.25000190734863 C 21.21249961853027 14.34900093078613 21.13300132751465 13.47450160980225 21.02700233459473 12.60000038146973 L 25.50550270080566 12.60000038146973 C 25.71750259399414 13.44800090789795 25.85000228881836 14.33574962615967 25.85000228881836 15.25000190734863 C 25.85000228881836 16.16425323486328 25.71750259399414 17.05200004577637 25.50550270080566 17.90000152587891 L 21.02700233459473 17.90000152587891 Z" fill="#5b5a5a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(113.36, 30.5)" d="M 14.82019519805908 28.87422370910645 C 16.30797004699707 28.87422370910645 17.52524185180664 27.65694999694824 17.52524185180664 26.16917610168457 L 12.11514663696289 26.16917610168457 C 12.11514663696289 27.65694999694824 13.31889247894287 28.87422370910645 14.82019519805908 28.87422370910645 Z M 22.93533897399902 20.75907707214355 L 22.93533897399902 13.99645805358887 C 22.93533897399902 9.844207763671875 20.71720123291016 6.368219375610352 16.84897994995117 5.448503017425537 L 16.84897994995117 4.528786659240723 C 16.84897994995117 3.406191349029541 15.94279003143311 2.5 14.82019519805908 2.5 C 13.69759941101074 2.5 12.79140758514404 3.406191349029541 12.79140758514404 4.528786659240723 L 12.79140758514404 5.448503017425537 C 8.909663200378418 6.368219375610352 6.705048561096191 9.830680847167969 6.705048561096191 13.99645805358887 L 6.705048561096191 20.75907707214355 L 4 23.46412658691406 L 4 24.816650390625 L 25.64038848876953 24.816650390625 L 25.64038848876953 23.46412658691406 L 22.93533897399902 20.75907707214355 Z" fill="#5b5a5a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fgksyb =
    '<svg viewBox="67.0 1206.7 41.3 41.3" ><path transform="translate(64.26, 1203.57)" d="M 14.31754779815674 26.3504638671875 L 20.43032073974609 19.91305160522461 L 5.267188549041748 3.967377662658691 C 1.897603750228882 7.515914916992188 1.897603750228882 13.27091598510742 5.267188549041748 16.84219932556152 L 14.31754779815674 26.3504638671875 Z M 28.96228408813477 22.23325157165527 C 32.26707458496094 23.84828948974609 36.91104888916016 22.7109375 40.34543991088867 19.09415817260742 C 44.47101974487305 14.74947357177734 45.27021789550781 8.516786575317383 42.09502792358398 5.172972202301025 C 38.94144439697266 1.85190486907959 33.02306747436523 2.670798063278198 28.87588691711426 7.015481948852539 C 25.44150161743164 10.6322603225708 24.36150550842285 15.52287483215332 25.89509963989258 19.00317001342773 L 4.813590526580811 41.20428466796875 L 7.859177589416504 44.41161346435547 L 22.74151039123535 28.78439521789551 L 37.60225296020508 44.43436050415039 L 40.6478385925293 41.22703170776367 L 25.7870979309082 25.57706451416016 L 28.96228408813477 22.23324775695801 Z" fill="#386694" fill-opacity="0.95" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_alkmwu =
    '<svg viewBox="1543.3 2330.2 28.5 28.5" ><path transform="translate(1541.03, 2328.21)" d="M 27.39526176452637 17.63815498352051 C 27.45382881164551 17.18239784240723 27.49775505065918 16.72664070129395 27.49775505065918 16.24240112304688 C 27.49775505065918 15.75815963745117 27.45382881164551 15.30240249633789 27.39526176452637 14.84664630889893 L 30.48471260070801 12.49665069580078 C 30.76290512084961 12.2830171585083 30.83611679077148 11.89846992492676 30.66041564941406 11.58513736724854 L 27.73203086853027 6.657265663146973 C 27.55632591247559 6.34393310546875 27.1609935760498 6.229993343353271 26.8388671875 6.34393310546875 L 23.19302368164063 7.768173217773438 C 22.4316463470459 7.198477745056152 21.61169624328613 6.728477478027344 20.71853828430176 6.372417449951172 L 20.16214370727539 2.598181009292603 C 20.11821556091309 2.256363391876221 19.81073570251465 1.999999761581421 19.44468688964844 1.999999761581421 L 13.58791160583496 1.999999761581421 C 13.22186374664307 1.999999761581421 12.914381980896 2.256363391876221 12.87045669555664 2.598180770874023 L 12.31406402587891 6.372417449951172 C 11.4209041595459 6.728477478027344 10.60095500946045 7.212719440460205 9.839573860168457 7.768173217773438 L 6.193729877471924 6.343932151794434 C 5.856966018676758 6.215750217437744 5.47627592086792 6.343932151794434 5.300571441650391 6.657264709472656 L 2.372183561325073 11.5851354598999 C 2.181837797164917 11.89846801757813 2.269690036773682 12.28301334381104 2.547886371612549 12.49665069580078 L 5.637336730957031 14.84664440155029 C 5.578768730163574 15.30240058898926 5.534842491149902 15.77239894866943 5.534842491149902 16.24240112304688 C 5.534842491149902 16.71240043640137 5.578768730163574 17.18239784240723 5.637336730957031 17.63815498352051 L 2.547887086868286 19.98815155029297 C 2.269690036773682 20.20178413391113 2.19648003578186 20.58633041381836 2.372183561325073 20.8996639251709 L 5.300572395324707 25.82753372192383 C 5.47627592086792 26.14086151123047 5.871608257293701 26.25480270385742 6.193730354309082 26.14086151123047 L 9.839574813842773 24.71662521362305 C 10.60095691680908 25.28632164001465 11.4209041595459 25.75631904602051 12.31406497955322 26.11237907409668 L 12.87045860290527 29.8866138458252 C 12.91438293457031 30.22843360900879 13.22186470031738 30.48479843139648 13.58791351318359 30.48479843139648 L 19.44468879699707 30.48479843139648 C 19.81073570251465 30.48479843139648 20.11821746826172 30.22843360900879 20.16214370727539 29.8866138458252 L 20.71853828430176 26.11237907409668 C 21.6116943359375 25.75631904602051 22.4316463470459 25.2720775604248 23.19302368164063 24.71662521362305 L 26.8388671875 26.14086151123047 C 27.17563438415527 26.26904487609863 27.55632591247559 26.14086151123047 27.73203086853027 25.82753372192383 L 30.66041564941406 20.8996639251709 C 30.83611679077148 20.58633041381836 30.76290512084961 20.20178604125977 30.48471260070801 19.98815155029297 L 27.39526176452637 17.63815498352051 Z M 16.51630020141602 21.22724151611328 C 13.69040679931641 21.22724151611328 11.39161968231201 18.99118423461914 11.39161968231201 16.24240112304688 C 11.39161968231201 13.49361705780029 13.69040679931641 11.25756072998047 16.51630020141602 11.25756072998047 C 19.34219551086426 11.25756072998047 21.6409797668457 13.49361705780029 21.6409797668457 16.24240112304688 C 21.6409797668457 18.99118423461914 19.34219551086426 21.22724151611328 16.51630020141602 21.22724151611328 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_glj5jl =
    '<svg viewBox="1480.4 2327.9 32.9 31.9" ><path transform="translate(1476.4, 2323.85)" d="M 20.44999313354492 19.96432113647461 C 24.99430274963379 19.96432113647461 28.67498970031738 16.39230346679688 28.67498970031738 11.98216342926025 C 28.67498970031738 7.572016716003418 24.99430274963379 4 20.44999313354492 4 C 15.90568256378174 4 12.22499847412109 7.572016716003418 12.22499847412109 11.98216342926025 C 12.22499847412109 16.39230346679688 15.90568256378174 19.96432113647461 20.44999313354492 19.96432113647461 Z M 20.44999313354492 23.95540046691895 C 14.95980644226074 23.95540046691895 4 26.62942123413086 4 31.93756484985352 L 4 35.92864990234375 L 36.89999008178711 35.92864990234375 L 36.89999008178711 31.93756484985352 C 36.89999008178711 26.62942123413086 25.94018173217773 23.95540046691895 20.44999313354492 23.95540046691895 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f426zk =
    '<svg viewBox="1761.0 2249.0 26.0 33.0" ><path transform="translate(1757.0, 2247.0)" d="M 7.25 2 C 5.462500095367432 2 4.016250133514404 3.485000371932983 4.016250133514404 5.300000190734863 L 4 31.70000076293945 C 4 33.51499938964844 5.446249485015869 35 7.233750343322754 35 L 26.75 35 C 28.53749847412109 35 30 33.51499938964844 30 31.70000076293945 L 30 11.89999961853027 L 20.25 2 L 7.25 2 Z M 18.625 13.54999923706055 L 18.625 4.475000381469727 L 27.5625 13.54999923706055 L 18.625 13.54999923706055 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yqbn5g =
    '<svg viewBox="1765.7 2254.0 6.3 6.3" ><path transform="translate(1762.67, 2251.0)" d="M 3 8.00739860534668 L 3 9.3255615234375 L 4.318163394927979 9.3255615234375 L 8.205865859985352 5.437859535217285 L 6.887701988220215 4.119696140289307 L 3 8.00739860534668 Z M 9.225244522094727 4.418479919433594 C 9.362334251403809 4.281391143798828 9.362334251403809 4.059939861297607 9.225244522094727 3.922850608825684 L 8.402710914611816 3.100316762924194 C 8.265623092651367 2.963227987289429 8.044170379638672 2.963227987289429 7.907081127166748 3.100316762924194 L 7.26381778717041 3.74358057975769 L 8.581981658935547 5.061744213104248 L 9.225244522094727 4.418480396270752 Z" fill="#ffd64d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jtcmlr =
    '<svg viewBox="1058.7 2163.0 33.3 28.3" ><path transform="translate(1056.72, 2160.0)" d="M 15.31367015838623 31.29155158996582 L 15.31367015838623 21.30629730224609 L 21.97050666809082 21.30629730224609 L 21.97050666809082 31.29155158996582 L 30.29155158996582 31.29155158996582 L 30.29155158996582 17.97788047790527 L 35.2841796875 17.97788047790527 L 18.64208984375 2.999999761581421 L 2 17.97788047790527 L 6.992626667022705 17.97788047790527 L 6.992626667022705 31.29155158996582 L 15.31367015838623 31.29155158996582 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4g8cc3 =
    '<svg viewBox="18.0 1373.3 14.8 21.6" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 37.84, 1370.35)" d="M 11.38283443450928 15.87943840026855 L 11.38283443450928 19.83559989929199 L 3 12.91232013702393 L 11.38283443450928 5.989042282104492 L 11.38283443450928 10.04410457611084 C 17.37057304382324 10.04410457611084 21.56198883056641 8.461641311645508 24.55585861206055 5 C 23.35830879211426 9.945201873779297 19.76566696166992 14.89039993286133 11.38283443450928 15.87943840026855 Z" fill="#0a0606" fill-opacity="0.9" stroke="none" stroke-width="1" stroke-opacity="0.9" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
