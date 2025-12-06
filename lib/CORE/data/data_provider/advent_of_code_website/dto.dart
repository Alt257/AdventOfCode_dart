part of 'advent_of_code_website.dart';


@freezed
sealed class AdventOfCodeWebsiteResponse with _$AdventOfCodeWebsiteResponse {

  const factory AdventOfCodeWebsiteResponse.getDescription({
    required String description,
    required String exampleInput,
    required String exampleAnswer,
  }) = AdventOfCodeWebsite_GetDescription_Response;

  const factory AdventOfCodeWebsiteResponse.getInput({
    required String input,
  }) = AdventOfCodeWebsite_GetInput_Response;

}
