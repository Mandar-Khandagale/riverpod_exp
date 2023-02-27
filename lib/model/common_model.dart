 final List<CardDetails> cardDetails = [
   CardDetails(cardNo: "1232 1214 3524 1234", cardName: "Axis"),
   CardDetails(cardNo: "1122 1234 4321 4902", cardName: "SBI"),
   CardDetails(cardNo: "09400 3411 1244 1234", cardName: "HDFC"),
   CardDetails(cardNo: "4532 3456 1234 0993", cardName: " PNJ"),
 ];




class CardDetails{
  final String? cardNo;
  final String? cardName;

  CardDetails({this.cardNo, this.cardName});
}