import 'package:flutter/material.dart';

import 'inline_text_translations.dart';

String _translateInlineText(String localeCode, String source) {
  final exact = inlineTextTranslations[localeCode]?[source] ??
      inlineAttributeTranslations[localeCode]?[source];
  if (exact != null) return exact;

  final templates = [
    inlineTextTemplateTranslations[localeCode],
    inlineAttributeTemplateTranslations[localeCode],
  ].whereType<Map<String, String>>();

  for (final map in templates) {
    for (final entry in map.entries) {
      final placeholders = RegExp(r'QZXVAR\d+QZX')
          .allMatches(entry.key)
          .map((match) => match.group(0)!)
          .toList(growable: false);
      if (placeholders.isEmpty) continue;
      final translatedPlaceholders = RegExp(r'QZXVAR\d+QZX')
          .allMatches(entry.value)
          .map((match) => match.group(0)!)
          .toSet();
      if (!translatedPlaceholders.containsAll(placeholders) ||
          !placeholders.toSet().containsAll(translatedPlaceholders)) {
        continue;
      }

      final parts = entry.key.split(RegExp(r'QZXVAR\d+QZX'));
      final pattern = '^${parts.map(RegExp.escape).join(r'([\s\S]*?)')}\$';
      final match = RegExp(pattern).firstMatch(source);
      if (match == null) continue;

      var translated = entry.value;
      for (var index = 0; index < placeholders.length; index++) {
        translated = translated.replaceAll(
          placeholders[index],
          match.group(index + 1) ?? '',
        );
      }
      return translated;
    }
  }

  return source;
}

String localizedUiText(BuildContext context, String source) {
  final languageCode = Localizations.maybeLocaleOf(context)?.languageCode;
  return _translateInlineText(languageCode ?? 'en', source);
}

/// A [Text] widget that localizes literal UI copy using the active app locale.
class LocalizedText extends StatelessWidget {
  const LocalizedText(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.semanticsIdentifier,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  @Deprecated('Use textScaler instead.')
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final String? semanticsIdentifier;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      localizedUiText(context, data),
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      semanticsIdentifier: semanticsIdentifier,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }
}
