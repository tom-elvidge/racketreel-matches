//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of racketreel.matches;

class ListMatches200Response {
  /// Returns a new [ListMatches200Response] instance.
  ListMatches200Response({
    required this.pageSize,
    required this.pageNumber,
    required this.totalPages,
    this.data = const [],
  });

  int pageSize;

  int pageNumber;

  int totalPages;

  List<Match> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListMatches200Response &&
     other.pageSize == pageSize &&
     other.pageNumber == pageNumber &&
     other.totalPages == totalPages &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pageSize.hashCode) +
    (pageNumber.hashCode) +
    (totalPages.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'ListMatches200Response[pageSize=$pageSize, pageNumber=$pageNumber, totalPages=$totalPages, data=$data]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'pageSize'] = pageSize;
      _json[r'pageNumber'] = pageNumber;
      _json[r'totalPages'] = totalPages;
      _json[r'data'] = data;
    return _json;
  }

  /// Returns a new [ListMatches200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListMatches200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListMatches200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListMatches200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListMatches200Response(
        pageSize: mapValueOfType<int>(json, r'pageSize')!,
        pageNumber: mapValueOfType<int>(json, r'pageNumber')!,
        totalPages: mapValueOfType<int>(json, r'totalPages')!,
        data: Match.listFromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<ListMatches200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListMatches200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListMatches200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListMatches200Response> mapFromJson(dynamic json) {
    final map = <String, ListMatches200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListMatches200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListMatches200Response-objects as value to a dart map
  static Map<String, List<ListMatches200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListMatches200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListMatches200Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'pageSize',
    'pageNumber',
    'totalPages',
    'data',
  };
}

