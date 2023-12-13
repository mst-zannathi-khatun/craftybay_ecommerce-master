class ResponseModel{
  final int statusCode;
  final bool isSuccess;
  final dynamic returenData;

  ResponseModel({required this.statusCode, required this.isSuccess, required this.returenData});
}