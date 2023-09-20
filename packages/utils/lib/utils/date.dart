// ignore_for_file: constant_identifier_names, prefer_interpolation_to_compose_strings, no_leading_underscores_for_local_identifiers

class DateUtils {
  /// Defining a constant called `FORMAT_DATE` and assigning it the value `DD/MM/YYYY`.
  static const FORMAT_DATE = 'DD/MM/YYYY';

  /// Defining a constant called `FORMAT_DATE_SQL` and assigning it the value `YYYY-MM-DD`.
  static const FORMAT_DATE_SQL = 'YYYY-MM-DD';

  /// Defining a constant called `FORMAT_DATE_TIME_ZONE` and assigning it the value `YYYY-MM-DD
  /// HH:mm:ss.SSSZZZ`.
  static const FORMAT_DATE_TIME_ZONE = 'YYYY-MM-DD HH:mm:ss.SSSZZZ';

  /// Defining a constant called `FORMAT_DATE_TIME_ZONE_T` and assigning it the value
  /// `YYYY-MM-DDTHH:mm:ss.sssZ`.
  static const FORMAT_DATE_TIME_ZONE_T = 'YYYY-MM-DDTHH:mm:ss.sssZ';

  /// Defining a constant called `FORMAT_DATE_TIME_ZONE_A` and assigning it the value
  /// `HH:mm DD/MM/YYYY`.
  static const FORMAT_DATE_TIME_ZONE_A = 'HH:mm DD/MM/YYYY';

  /// Defining a constant called `FORMAT_TIME` and assigning it the value `HH:mm`.
  static const FORMAT_TIME = 'HH:mm';

  /// Defining a constant called `FORMAT_TIME_A` and assigning it the value `HH:mma`.
  static const FORMAT_TIME_A = 'HH:mma';

  /// Defining a constant called `FORMAT_TIME_SECOND` and assigning it the value `HH:mm:ss`.
  static const FORMAT_TIME_SECOND = 'HH:mm:ss';

  /// Defining a constant called `FORMAT_TIME_SECONDS` and assigning it the value `hh:mm:ss`.
  static const FORMAT_TIME_SECONDS = 'hh:mm:ss';

  /// Defining a constant called `FORMAT_DATE_TIME` and assigning it the value of the
  /// constant `FORMAT_DATE` concatenated with the string ` - ` concatenated with the constant
  /// `FORMAT_TIME`.
  static const FORMAT_DATE_TIME = FORMAT_DATE + ' - ' + FORMAT_TIME;

  /// Defining a constant called `FORMAT_DATE_TIMES` and assigning it the value of the constant
  /// `FORMAT_DATE_SQL` concatenated with the string ` ` concatenated with the constant
  /// `FORMAT_TIME_SECONDS`.
  static const FORMAT_DATE_TIMES = FORMAT_DATE_SQL + ' ' + FORMAT_TIME_SECONDS;

  /// Concatenating the value of the constant `FORMAT_DATE` with the string ` ` with the value of the
  /// constant `FORMAT_TIME_SECOND`.
  static const FORMAT_DATE_TIME_SQL = FORMAT_DATE + ' ' + FORMAT_TIME_SECOND;

  /// Return a new Date object with the current date and time.
  static now() {
    return DateTime.now();
  }

  /// It takes a date and a divider (defaults to "/") and returns a string in the format "dd/mm/yyyy"
  ///
  /// Args:
  ///   _date (DateTime): The date you want to convert to a string.
  ///   divider (String): The character to use as a divider between the day, month and year.
  ///
  /// Returns:
  ///   A string in the format of dd/mm/yyyy
  static getDayMonthYearString(DateTime? _date, String? divider) {
    String div = divider ?? "/";
    DateTime? date = _date;

    if (date == null) {
      return '';
    }

    int dd = date.day;
    int mm = date.month + 1;
    int yyyy = date.year;

    return '${dd < 10 ? '0' : ''}$dd$div${mm < 10 ? '0' : ''}$mm$div$yyyy';
  }

  /// > It takes a date and returns a string in the format `yyyy/mm/dd`
  ///
  /// The function takes two parameters:
  ///
  /// 1. `_date` - a `DateTime` object
  /// 2. `divider` - a string that will be used to separate the year, month and day
  ///
  /// The function returns a string in the format `yyyy/mm/dd`
  ///
  /// The function has a default value for the `divider` parameter. If the `divider` parameter is not
  /// passed in, the function will use `/` as the divider
  ///
  /// Args:
  ///   _date (DateTime): The date you want to convert to a string.
  ///   divider: The character that separates the year, month, and day.
  ///
  /// Returns:
  ///   A string in the format of yyyy/mm/dd
  static getYearMonthDayString(DateTime? _date, [String divider = "/"]) {
    String div = divider;
    DateTime? date = _date;

    if (date == null) {
      return '';
    }

    int dd = date.day;
    int mm = date.month + 1;
    int yyyy = date.year;

    return '$yyyy$div${mm < 10 ? '0' : ''}$mm$div${dd < 10 ? '0' : ''}$dd';
  }

  /// If the date is null, return an empty string, otherwise return a string in the format of `hh:mm:ss`
  /// where `hh` is the hour, `mm` is the minute, and `ss` is the second
  ///
  /// Args:
  ///   date (DateTime): The date to format.
  ///   divider (String): The character to use to separate the hours, minutes, and seconds. Defaults to
  /// :
  ///
  /// Returns:
  ///   A string with the time in the format hh:mm:ss
  static getTimeString(DateTime? date, [String divider = ":"]) {
    if (date == null) {
      return '';
    }

    int hh = date.hour;
    int mm = date.minute;
    int ss = date.second;

    return '${hh < 10 ? '0' : ''}$hh$divider${mm < 10 ? '0' : ''}$mm$divider${ss < 10 ? '0' : ''}$ss';
  }
}
