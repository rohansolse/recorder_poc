class PineFontFamily {
  final String heading;
  final String body;
  final String paragraph;

  PineFontFamily({
    required this.heading,
    required this.body,
    required this.paragraph,
  });
}

class PineFontSize {
  final double heading;
  final double header;
  final double paragraph;
  final double paragraph_m;
  final double list;
  final double body;
  final double appbarTitle;
  final double filter;
  final double badgeCounter;
  final double date;
  final double rating;
  final double subtitle;
  final double headerWeb;
  PineFontSize({
    required this.header,
    required this.heading,
    required this.paragraph,
    required this.paragraph_m,
    required this.list,
    required this.body,
    required this.appbarTitle,
    required this.filter,
    required this.badgeCounter,
    required this.date,
    required this.rating,
    required this.subtitle,
    required this.headerWeb,
  });
}

class PineLineHeight {
  final double xsmall;
  final double xsmedium;
  final double small;
  final double medium;

  PineLineHeight({
    required this.xsmall,
    required this.xsmedium,
    required this.small,
    required this.medium,
  });
}

class PineFontTheme {
  final PineFontFamily family;
  final PineFontSize size;
  final PineLineHeight lineHeight;

  PineFontTheme({
    required this.family,
    required this.size,
    required this.lineHeight,
  });
}
