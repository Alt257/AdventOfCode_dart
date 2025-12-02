part of 'advent_of_code_website.dart';


@freezed
sealed class AdventOfCodeWebsiteResponse with _$AdventOfCodeWebsiteResponse {

  const factory AdventOfCodeWebsiteResponse.getDescription({
    required String description,
  }) = AdventOfCodeWebsite_GetDescriptionResponse;


  const factory AdventOfCodeWebsiteResponse.getInput({
    required String input,
  }) = AdventOfCodeWebsite_GetInputResponse;

}
