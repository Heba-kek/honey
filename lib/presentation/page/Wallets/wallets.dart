import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class wallets extends StatelessWidget {
  wallets({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 24.0, 375.0, 60.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffd64d),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(27.5, 44.6, 19.2, 19.4),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 9.7, 19.2, 1.0),
                  size: Size(19.2, 19.4),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_ldw3wo,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(9.6, 0.0, 1.0, 19.4),
                  size: Size(19.2, 19.4),
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child: SvgPicture.string(
                    _svg_3sifp6,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(318.0, 34.0, 40.0, 40.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 40.0, 40.0),
                  size: Size(40.0, 40.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(7.0, 7.5, 25.6, 24.5),
                  size: Size(40.0, 40.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'wallet' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(20.3, 14.8, 1.1, 1.1),
                        size: Size(25.6, 24.5),
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 1.1, 1.1),
                              size: Size(1.1, 1.1),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 1.1, 1.1),
                                    size: Size(1.1, 1.1),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xff416b97),
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
                        bounds: Rect.fromLTWH(18.2, 12.7, 7.5, 5.3),
                        size: Size(25.6, 24.5),
                        pinRight: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 7.5, 5.3),
                              size: Size(7.5, 5.3),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 7.5, 5.3),
                                    size: Size(7.5, 5.3),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: SvgPicture.string(
                                      _svg_no2o5l,
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
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 6.3, 25.6, 18.2),
                        size: Size(25.6, 24.5),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 25.6, 18.2),
                              size: Size(25.6, 18.2),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 25.6, 18.2),
                                    size: Size(25.6, 18.2),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: SvgPicture.string(
                                      _svg_xjaf4g,
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
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(21.4, 3.3, 3.6, 3.1),
                        size: Size(25.6, 24.5),
                        pinRight: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 3.6, 3.1),
                              size: Size(3.6, 3.1),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 3.6, 3.1),
                                    size: Size(3.6, 3.1),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: SvgPicture.string(
                                      _svg_eev0qo,
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
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.6, 3.1, 6.7, 3.4),
                        size: Size(25.6, 24.5),
                        pinLeft: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 6.7, 3.4),
                              size: Size(6.7, 3.4),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 6.7, 3.4),
                                    size: Size(6.7, 3.4),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: SvgPicture.string(
                                      _svg_vdrlq,
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
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(5.6, 0.0, 13.7, 5.2),
                        size: Size(25.6, 24.5),
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 13.7, 5.2),
                              size: Size(13.7, 5.2),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 13.7, 5.2),
                                    size: Size(13.7, 5.2),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: SvgPicture.string(
                                      _svg_vm2sks,
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
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(15.2, 2.6, 6.0, 2.6),
                        size: Size(25.6, 24.5),
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 6.0, 2.6),
                              size: Size(6.0, 2.6),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 6.0, 2.6),
                                    size: Size(6.0, 2.6),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: SvgPicture.string(
                                      _svg_9qya75,
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
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(225.0, 40.0, 102.0, 36.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'محفظات',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 20,
                color: const Color(0xff090808),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 14.0, 1.0, 1.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child: SvgPicture.string(
              _svg_29yfnr,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 755.0, 375.0, 57.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinBottom: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xfff3f3f3)),
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
          Pinned.fromSize(
            bounds: Rect.fromLTWH(162.1, 758.2, 50.8, 50.8),
            size: Size(375.0, 812.0),
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 50.8, 50.8),
                  size: Size(50.8, 50.8),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: SvgPicture.string(
                    _svg_r05er0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
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
                    _svg_hlrbsk,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ldw3wo =
    '<svg viewBox="27.5 23.3 19.2 1.0" ><path transform="translate(27.5, 23.29)" d="M 0 0 L 19.206298828125 0" fill="none" stroke="#ffffff" stroke-width="4" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_3sifp6 =
    '<svg viewBox="37.1 13.6 1.0 19.4" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 37.1, 13.58)" d="M 0 0 L 19.4195556640625 0" fill="none" stroke="#ffffff" stroke-width="4" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_no2o5l =
    '<svg viewBox="0.0 0.0 7.5 5.3" ><path transform="translate(-362.67, -265.54)" d="M 365.3379821777344 265.541015625 C 363.8646240234375 265.541015625 362.6669921875 266.7387084960938 362.6669921875 268.2119750976563 C 362.6669921875 269.6842041015625 363.8646850585938 270.8829650878906 365.3379821777344 270.8829650878906 L 370.145751953125 270.8829650878906 L 370.145751953125 265.541015625 L 365.3379821777344 265.541015625 Z M 365.3379821777344 269.8145751953125 C 364.4544067382813 269.8145751953125 363.7353515625 269.0955810546875 363.7353515625 268.2119750976563 C 363.7353515625 267.3283996582031 364.4544067382813 266.609375 365.3379821777344 266.609375 C 366.2215576171875 266.609375 366.9405822753906 267.3283996582031 366.9405822753906 268.2119750976563 C 366.9405822753906 269.0955810546875 366.2215576171875 269.8145751953125 365.3379821777344 269.8145751953125 Z" fill="#416b97" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xjaf4g =
    '<svg viewBox="0.0 0.0 25.6 18.2" ><path transform="translate(0.0, -137.54)" d="M 20.83376312255859 142.8820190429688 L 25.64155387878418 142.8820190429688 L 25.64155387878418 141.2794189453125 C 25.64155387878418 139.2174377441406 23.96418380737305 137.5400085449219 21.90214538574219 137.5400085449219 L 3.739410161972046 137.5400085449219 C 1.67736828327179 137.5400695800781 0 139.2174377441406 0 141.2794189453125 L 0 151.96337890625 C 0 154.0253753662109 1.67736828327179 155.7027893066406 3.739410161972046 155.7027893066406 L 21.90219497680664 155.7027893066406 C 23.96418380737305 155.7027893066406 25.64160346984863 154.0254211425781 25.64160346984863 151.96337890625 L 25.64160346984863 150.3607940673828 L 20.83381271362305 150.3607940673828 C 18.77182006835938 150.3607940673828 17.09440231323242 148.6834259033203 17.09440231323242 146.6213836669922 C 17.09440231323242 144.5593414306641 18.77177047729492 142.8820190429688 20.83376312255859 142.8820190429688 Z" fill="#416b97" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eev0qo =
    '<svg viewBox="0.0 0.0 3.6 3.1" ><path transform="translate(-427.52, -78.3)" d="M 427.5199890136719 78.29799652099609 L 428.4933471679688 80.24459838867188 C 429.5093688964844 80.34716796875 430.4260559082031 80.75959014892578 431.1568298339844 81.39631652832031 C 430.4388732910156 79.91236114501953 429.1268615722656 78.76701354980469 427.5199890136719 78.29799652099609 Z" fill="#416b97" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vdrlq =
    '<svg viewBox="0.0 0.0 6.7 3.4" ><path transform="translate(-11.56, -73.54)" d="M 16.85913276672363 73.54100036621094 C 14.52469825744629 73.54100036621094 12.50863075256348 74.91387176513672 11.56199645996094 76.8914794921875 C 12.29062843322754 76.2493896484375 13.20841598510742 75.83376312255859 14.22551345825195 75.72799682617188 L 18.28754615783691 73.54100036621094 L 16.85913276672363 73.54100036621094 Z" fill="#416b97" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vm2sks =
    '<svg viewBox="0.0 0.0 13.7 5.2" ><path transform="translate(-111.6, -11.79)" d="M 123.3751525878906 11.96880531311035 C 122.4029235839844 11.66215896606445 121.3729553222656 11.75941562652588 120.4734039306641 12.24124717712402 L 111.5950012207031 17.02234649658203 L 119.0417175292969 17.02234649658203 L 125.3324584960938 13.45175933837891 C 124.8634033203125 12.75297737121582 124.1914215087891 12.22732448577881 123.3751525878906 11.96880531311035 Z" fill="#416b97" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9qya75 =
    '<svg viewBox="0.0 0.0 6.0 2.6" ><path transform="translate(-303.53, -63.56)" d="M 308.1763916015625 63.55699920654297 L 303.531005859375 66.19377136230469 L 309.4937133789063 66.19377136230469 L 308.1763916015625 63.55699920654297 Z" fill="#416b97" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_29yfnr =
    '<svg viewBox="0.0 14.0 1.0 1.0" ><path  d="M 0 14 L 0 14 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r05er0 =
    '<svg viewBox="1050.1 2153.2 50.8 50.8" ><g transform="translate(-630.0, -145.0)"><path transform="translate(1680.07, 2298.16)" d="M 25.38232421875 0 C 39.40059280395508 0 50.7646484375 11.36405467987061 50.7646484375 25.38232421875 C 50.7646484375 39.40059280395508 39.40059280395508 50.7646484375 25.38232421875 50.7646484375 C 11.36405467987061 50.7646484375 0 39.40059280395508 0 25.38232421875 C 0 11.36405467987061 11.36405467987061 0 25.38232421875 0 Z" fill="#ffd64d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></g></svg>';
const String _svg_hlrbsk =
    '<svg viewBox="1058.7 2163.0 33.3 28.3" ><path transform="translate(1056.72, 2160.0)" d="M 15.31367015838623 31.29155158996582 L 15.31367015838623 21.30629730224609 L 21.97050666809082 21.30629730224609 L 21.97050666809082 31.29155158996582 L 30.29155158996582 31.29155158996582 L 30.29155158996582 17.97788047790527 L 35.2841796875 17.97788047790527 L 18.64208984375 2.999999761581421 L 2 17.97788047790527 L 6.992626667022705 17.97788047790527 L 6.992626667022705 31.29155158996582 L 15.31367015838623 31.29155158996582 Z" fill="#5b5a5a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
