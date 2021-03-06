import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:what_when_where/api/models/question_dto.dart';
import 'package:what_when_where/constants.dart';
import 'package:what_when_where/data/models/question_info.dart';
import 'package:what_when_where/data/models/question_sections/question_section.dart';
import 'package:what_when_where/data/models/tour_info.dart';
import 'package:what_when_where/data/parsers/question_parser/question_parser.dart';
import 'package:what_when_where/utils/extensions/string_extensions.dart';

part 'question.freezed.dart';

@freezed
abstract class Question with _$Question {
  const factory Question({
    String id,
    String display,
    List<QuestionSection> question,
    List<QuestionSection> answer,
    List<QuestionSection> passCriteria,
    List<QuestionSection> comments,
    String authors,
    String sources,
    @Default(QuestionInfo()) QuestionInfo info,
  }) = _Question;

  factory Question.fromDto(QuestionDto dto,
          {TourInfo tourInfo = const TourInfo()}) =>
      Question(
        id: dto.questionId,
        display: QuestionParser.trim(dto.question),
        question: QuestionParser.split(dto.question),
        answer: QuestionParser.split(dto.answer),
        passCriteria: QuestionParser.split(dto.passCriteria),
        comments: QuestionParser.split(dto.comments),
        authors: dto.authors.normalizeToSingleLine(),
        sources: dto.sources.normalizeToMultiLine(),
        info: QuestionInfo(
          id: dto.questionId,
          number: dto.number,
          url: dto.parentId != null && dto.number != null
              ? '${Constants.databaseUrl}/question/${dto.parentId}/${dto.number}'
              : null,
          tourInfo: tourInfo
              .copyWith(
                id: tourInfo.id ?? dto.tourId,
                title: tourInfo.title ?? dto.tourTitle.removeTrailingDot(),
              )
              .copyWith
              .tournamentInfo(
                id: tourInfo.tournamentInfo?.id ?? dto.tournamentId,
                title: tourInfo.tournamentInfo?.title ??
                    dto.tournamentTitle.removeTrailingDot(),
              ),
        ),
      );
}
