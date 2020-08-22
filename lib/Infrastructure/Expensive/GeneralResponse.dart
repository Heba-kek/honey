
class GeneralResponse {
  final String code;
  final String msg;

  GeneralResponse(this.code, this.msg);

  GeneralResponse.fromJson(Map<String, dynamic> json)
      :
        code = json["code"],
        msg = json['msg'];

  GeneralResponse.withError(String errorValue)
      :
        code = "-1",
        msg = errorValue.split('msg')[1].toString().split(':')[1].toString().split('}')[0].toString();
}