import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_details.freezed.dart';
part 'card_details.g.dart';

@freezed
class CardDetails with _$CardDetails{

  const factory CardDetails({
    final String? cardNo,
    final String? cardName,
    @Default(false) bool isAccountSelected,
}) = _CardDetails;


  factory CardDetails.fromJson(Map<String, dynamic> json) =>
      _$CardDetailsFromJson(json);

}