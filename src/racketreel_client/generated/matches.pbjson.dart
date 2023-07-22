//
//  Generated code. Do not modify.
//  source: matches.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use formatDescriptor instead')
const Format$json = {
  '1': 'Format',
  '2': [
    {'1': 'BEST_OF_ONE', '2': 0},
    {'1': 'TIEBREAK_TO_TEN', '2': 1},
    {'1': 'BEST_OF_THREE', '2': 2},
    {'1': 'BEST_OF_THREE_FST', '2': 3},
    {'1': 'BEST_OF_FIVE', '2': 4},
    {'1': 'BEST_OF_FIVE_FST', '2': 5},
    {'1': 'FAST4', '2': 6},
  ],
};

/// Descriptor for `Format`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List formatDescriptor = $convert.base64Decode(
    'CgZGb3JtYXQSDwoLQkVTVF9PRl9PTkUQABITCg9USUVCUkVBS19UT19URU4QARIRCg1CRVNUX0'
    '9GX1RIUkVFEAISFQoRQkVTVF9PRl9USFJFRV9GU1QQAxIQCgxCRVNUX09GX0ZJVkUQBBIUChBC'
    'RVNUX09GX0ZJVkVfRlNUEAUSCQoFRkFTVDQQBg==');

@$core.Deprecated('Use teamDescriptor instead')
const Team$json = {
  '1': 'Team',
  '2': [
    {'1': 'TEAM_ONE', '2': 0},
    {'1': 'TEAM_TWO', '2': 1},
  ],
};

/// Descriptor for `Team`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List teamDescriptor = $convert.base64Decode(
    'CgRUZWFtEgwKCFRFQU1fT05FEAASDAoIVEVBTV9UV08QAQ==');

@$core.Deprecated('Use playerCountDescriptor instead')
const PlayerCount$json = {
  '1': 'PlayerCount',
  '2': [
    {'1': 'SINGLES', '2': 0},
    {'1': 'DOUBLES', '2': 1},
  ],
};

/// Descriptor for `PlayerCount`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List playerCountDescriptor = $convert.base64Decode(
    'CgtQbGF5ZXJDb3VudBILCgdTSU5HTEVTEAASCwoHRE9VQkxFUxAB');

@$core.Deprecated('Use configureErrorDescriptor instead')
const ConfigureError$json = {
  '1': 'ConfigureError',
  '2': [
    {'1': 'MISSING_PLAYER_TWO_NAMES', '2': 0},
  ],
};

/// Descriptor for `ConfigureError`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List configureErrorDescriptor = $convert.base64Decode(
    'Cg5Db25maWd1cmVFcnJvchIcChhNSVNTSU5HX1BMQVlFUl9UV09fTkFNRVMQAA==');

@$core.Deprecated('Use pointErrorDescriptor instead')
const PointError$json = {
  '1': 'PointError',
  '2': [
    {'1': 'POINT_UNKNOWN', '2': 0},
    {'1': 'POINT_DOES_NOT_EXIST', '2': 1},
    {'1': 'POINT_PLAYERS_NOT_SET', '2': 2},
    {'1': 'POINT_IS_COMPLETE', '2': 3},
    {'1': 'POINT_NOTHING_TO_UNDO', '2': 4},
  ],
};

/// Descriptor for `PointError`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pointErrorDescriptor = $convert.base64Decode(
    'CgpQb2ludEVycm9yEhEKDVBPSU5UX1VOS05PV04QABIYChRQT0lOVF9ET0VTX05PVF9FWElTVB'
    'ABEhkKFVBPSU5UX1BMQVlFUlNfTk9UX1NFVBACEhUKEVBPSU5UX0lTX0NPTVBMRVRFEAMSGQoV'
    'UE9JTlRfTk9USElOR19UT19VTkRPEAQ=');

@$core.Deprecated('Use getSummaryErrorDescriptor instead')
const GetSummaryError$json = {
  '1': 'GetSummaryError',
  '2': [
    {'1': 'GET_SUMMARY_MATCH_DOES_NOT_EXIST', '2': 0},
    {'1': 'GET_SUMMARY_UNKNOWN', '2': 1},
  ],
};

/// Descriptor for `GetSummaryError`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List getSummaryErrorDescriptor = $convert.base64Decode(
    'Cg9HZXRTdW1tYXJ5RXJyb3ISJAogR0VUX1NVTU1BUllfTUFUQ0hfRE9FU19OT1RfRVhJU1QQAB'
    'IXChNHRVRfU1VNTUFSWV9VTktOT1dOEAE=');

@$core.Deprecated('Use configureRequestDescriptor instead')
const ConfigureRequest$json = {
  '1': 'ConfigureRequest',
  '2': [
    {'1': 'format', '3': 1, '4': 1, '5': 14, '6': '.RacketReel.Format', '10': 'format'},
    {'1': 'serving_first', '3': 2, '4': 1, '5': 14, '6': '.RacketReel.Team', '10': 'servingFirst'},
    {'1': 'player_count', '3': 3, '4': 1, '5': 14, '6': '.RacketReel.PlayerCount', '10': 'playerCount'},
    {'1': 'team_one_player_one_name', '3': 4, '4': 1, '5': 9, '10': 'teamOnePlayerOneName'},
    {'1': 'team_one_player_two_name', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'teamOnePlayerTwoName', '17': true},
    {'1': 'team_two_player_one_name', '3': 6, '4': 1, '5': 9, '10': 'teamTwoPlayerOneName'},
    {'1': 'team_two_player_two_name', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'teamTwoPlayerTwoName', '17': true},
  ],
  '8': [
    {'1': '_team_one_player_two_name'},
    {'1': '_team_two_player_two_name'},
  ],
};

/// Descriptor for `ConfigureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configureRequestDescriptor = $convert.base64Decode(
    'ChBDb25maWd1cmVSZXF1ZXN0EioKBmZvcm1hdBgBIAEoDjISLlJhY2tldFJlZWwuRm9ybWF0Ug'
    'Zmb3JtYXQSNQoNc2VydmluZ19maXJzdBgCIAEoDjIQLlJhY2tldFJlZWwuVGVhbVIMc2Vydmlu'
    'Z0ZpcnN0EjoKDHBsYXllcl9jb3VudBgDIAEoDjIXLlJhY2tldFJlZWwuUGxheWVyQ291bnRSC3'
    'BsYXllckNvdW50EjYKGHRlYW1fb25lX3BsYXllcl9vbmVfbmFtZRgEIAEoCVIUdGVhbU9uZVBs'
    'YXllck9uZU5hbWUSOwoYdGVhbV9vbmVfcGxheWVyX3R3b19uYW1lGAUgASgJSABSFHRlYW1Pbm'
    'VQbGF5ZXJUd29OYW1liAEBEjYKGHRlYW1fdHdvX3BsYXllcl9vbmVfbmFtZRgGIAEoCVIUdGVh'
    'bVR3b1BsYXllck9uZU5hbWUSOwoYdGVhbV90d29fcGxheWVyX3R3b19uYW1lGAcgASgJSAFSFH'
    'RlYW1Ud29QbGF5ZXJUd29OYW1liAEBQhsKGV90ZWFtX29uZV9wbGF5ZXJfdHdvX25hbWVCGwoZ'
    'X3RlYW1fdHdvX3BsYXllcl90d29fbmFtZQ==');

@$core.Deprecated('Use configureReplyDescriptor instead')
const ConfigureReply$json = {
  '1': 'ConfigureReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'error', '3': 2, '4': 1, '5': 14, '6': '.RacketReel.ConfigureError', '9': 0, '10': 'error', '17': true},
    {'1': 'match_id', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'matchId', '17': true},
  ],
  '8': [
    {'1': '_error'},
    {'1': '_match_id'},
  ],
};

/// Descriptor for `ConfigureReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configureReplyDescriptor = $convert.base64Decode(
    'Cg5Db25maWd1cmVSZXBseRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEjUKBWVycm9yGAIgAS'
    'gOMhouUmFja2V0UmVlbC5Db25maWd1cmVFcnJvckgAUgVlcnJvcogBARIeCghtYXRjaF9pZBgD'
    'IAEoCUgBUgdtYXRjaElkiAEBQggKBl9lcnJvckILCglfbWF0Y2hfaWQ=');

@$core.Deprecated('Use pointRequestDescriptor instead')
const PointRequest$json = {
  '1': 'PointRequest',
};

/// Descriptor for `PointRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointRequestDescriptor = $convert.base64Decode(
    'CgxQb2ludFJlcXVlc3Q=');

@$core.Deprecated('Use pointReplyDescriptor instead')
const PointReply$json = {
  '1': 'PointReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'error', '3': 2, '4': 1, '5': 14, '6': '.RacketReel.PointError', '9': 0, '10': 'error', '17': true},
  ],
  '8': [
    {'1': '_error'},
  ],
};

/// Descriptor for `PointReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointReplyDescriptor = $convert.base64Decode(
    'CgpQb2ludFJlcGx5EhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSMQoFZXJyb3IYAiABKA4yFi'
    '5SYWNrZXRSZWVsLlBvaW50RXJyb3JIAFIFZXJyb3KIAQFCCAoGX2Vycm9y');

@$core.Deprecated('Use getSummaryRequestDescriptor instead')
const GetSummaryRequest$json = {
  '1': 'GetSummaryRequest',
  '2': [
    {'1': 'match_id', '3': 1, '4': 1, '5': 5, '10': 'matchId'},
  ],
};

/// Descriptor for `GetSummaryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSummaryRequestDescriptor = $convert.base64Decode(
    'ChFHZXRTdW1tYXJ5UmVxdWVzdBIZCghtYXRjaF9pZBgBIAEoBVIHbWF0Y2hJZA==');

@$core.Deprecated('Use getSummaryReplyDescriptor instead')
const GetSummaryReply$json = {
  '1': 'GetSummaryReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'error', '3': 2, '4': 1, '5': 14, '6': '.RacketReel.GetSummaryError', '9': 0, '10': 'error', '17': true},
    {'1': 'summary', '3': 3, '4': 1, '5': 11, '6': '.RacketReel.Summary', '9': 1, '10': 'summary', '17': true},
  ],
  '8': [
    {'1': '_error'},
    {'1': '_summary'},
  ],
};

/// Descriptor for `GetSummaryReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSummaryReplyDescriptor = $convert.base64Decode(
    'Cg9HZXRTdW1tYXJ5UmVwbHkSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxI2CgVlcnJvchgCIA'
    'EoDjIbLlJhY2tldFJlZWwuR2V0U3VtbWFyeUVycm9ySABSBWVycm9yiAEBEjIKB3N1bW1hcnkY'
    'AyABKAsyEy5SYWNrZXRSZWVsLlN1bW1hcnlIAVIHc3VtbWFyeYgBAUIICgZfZXJyb3JCCgoIX3'
    'N1bW1hcnk=');

@$core.Deprecated('Use summaryDescriptor instead')
const Summary$json = {
  '1': 'Summary',
  '2': [
    {'1': 'match_id', '3': 1, '4': 1, '5': 5, '10': 'matchId'},
    {'1': 'started_at_utc', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startedAtUtc'},
    {'1': 'completed_at_utc', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'completedAtUtc'},
    {'1': 'duration', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'duration'},
    {'1': 'format', '3': 5, '4': 1, '5': 14, '6': '.RacketReel.Format', '10': 'format'},
    {'1': 'serving_first', '3': 6, '4': 1, '5': 14, '6': '.RacketReel.Team', '10': 'servingFirst'},
    {'1': 'set_one', '3': 7, '4': 1, '5': 11, '6': '.RacketReel.SetSummary', '10': 'setOne'},
    {'1': 'set_two', '3': 8, '4': 1, '5': 11, '6': '.RacketReel.SetSummary', '9': 0, '10': 'setTwo', '17': true},
    {'1': 'set_three', '3': 9, '4': 1, '5': 11, '6': '.RacketReel.SetSummary', '9': 1, '10': 'setThree', '17': true},
    {'1': 'set_four', '3': 10, '4': 1, '5': 11, '6': '.RacketReel.SetSummary', '9': 2, '10': 'setFour', '17': true},
    {'1': 'set_five', '3': 11, '4': 1, '5': 11, '6': '.RacketReel.SetSummary', '9': 3, '10': 'setFive', '17': true},
  ],
  '8': [
    {'1': '_set_two'},
    {'1': '_set_three'},
    {'1': '_set_four'},
    {'1': '_set_five'},
  ],
};

/// Descriptor for `Summary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List summaryDescriptor = $convert.base64Decode(
    'CgdTdW1tYXJ5EhkKCG1hdGNoX2lkGAEgASgFUgdtYXRjaElkEkAKDnN0YXJ0ZWRfYXRfdXRjGA'
    'IgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIMc3RhcnRlZEF0VXRjEkQKEGNvbXBs'
    'ZXRlZF9hdF91dGMYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg5jb21wbGV0ZW'
    'RBdFV0YxI1CghkdXJhdGlvbhgEIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIIZHVy'
    'YXRpb24SKgoGZm9ybWF0GAUgASgOMhIuUmFja2V0UmVlbC5Gb3JtYXRSBmZvcm1hdBI1Cg1zZX'
    'J2aW5nX2ZpcnN0GAYgASgOMhAuUmFja2V0UmVlbC5UZWFtUgxzZXJ2aW5nRmlyc3QSLwoHc2V0'
    'X29uZRgHIAEoCzIWLlJhY2tldFJlZWwuU2V0U3VtbWFyeVIGc2V0T25lEjQKB3NldF90d28YCC'
    'ABKAsyFi5SYWNrZXRSZWVsLlNldFN1bW1hcnlIAFIGc2V0VHdviAEBEjgKCXNldF90aHJlZRgJ'
    'IAEoCzIWLlJhY2tldFJlZWwuU2V0U3VtbWFyeUgBUghzZXRUaHJlZYgBARI2CghzZXRfZm91ch'
    'gKIAEoCzIWLlJhY2tldFJlZWwuU2V0U3VtbWFyeUgCUgdzZXRGb3VyiAEBEjYKCHNldF9maXZl'
    'GAsgASgLMhYuUmFja2V0UmVlbC5TZXRTdW1tYXJ5SANSB3NldEZpdmWIAQFCCgoIX3NldF90d2'
    '9CDAoKX3NldF90aHJlZUILCglfc2V0X2ZvdXJCCwoJX3NldF9maXZl');

@$core.Deprecated('Use setSummaryDescriptor instead')
const SetSummary$json = {
  '1': 'SetSummary',
  '2': [
    {'1': 'team_one_games', '3': 1, '4': 1, '5': 5, '10': 'teamOneGames'},
    {'1': 'team_two_games', '3': 2, '4': 1, '5': 5, '10': 'teamTwoGames'},
    {'1': 'tiebreak', '3': 3, '4': 1, '5': 8, '10': 'tiebreak'},
    {'1': 'team_one_tiebreak_points', '3': 4, '4': 1, '5': 5, '9': 0, '10': 'teamOneTiebreakPoints', '17': true},
    {'1': 'team_two_tiebreak_points', '3': 5, '4': 1, '5': 5, '9': 1, '10': 'teamTwoTiebreakPoints', '17': true},
  ],
  '8': [
    {'1': '_team_one_tiebreak_points'},
    {'1': '_team_two_tiebreak_points'},
  ],
};

/// Descriptor for `SetSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSummaryDescriptor = $convert.base64Decode(
    'CgpTZXRTdW1tYXJ5EiQKDnRlYW1fb25lX2dhbWVzGAEgASgFUgx0ZWFtT25lR2FtZXMSJAoOdG'
    'VhbV90d29fZ2FtZXMYAiABKAVSDHRlYW1Ud29HYW1lcxIaCgh0aWVicmVhaxgDIAEoCFIIdGll'
    'YnJlYWsSPAoYdGVhbV9vbmVfdGllYnJlYWtfcG9pbnRzGAQgASgFSABSFXRlYW1PbmVUaWVicm'
    'Vha1BvaW50c4gBARI8Chh0ZWFtX3R3b190aWVicmVha19wb2ludHMYBSABKAVIAVIVdGVhbVR3'
    'b1RpZWJyZWFrUG9pbnRziAEBQhsKGV90ZWFtX29uZV90aWVicmVha19wb2ludHNCGwoZX3RlYW'
    '1fdHdvX3RpZWJyZWFrX3BvaW50cw==');

@$core.Deprecated('Use getSummariesRequestDescriptor instead')
const GetSummariesRequest$json = {
  '1': 'GetSummariesRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_number', '3': 2, '4': 1, '5': 5, '10': 'pageNumber'},
  ],
};

/// Descriptor for `GetSummariesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSummariesRequestDescriptor = $convert.base64Decode(
    'ChNHZXRTdW1tYXJpZXNSZXF1ZXN0EhsKCXBhZ2Vfc2l6ZRgBIAEoBVIIcGFnZVNpemUSHwoLcG'
    'FnZV9udW1iZXIYAiABKAVSCnBhZ2VOdW1iZXI=');

@$core.Deprecated('Use getSummariesReplyDescriptor instead')
const GetSummariesReply$json = {
  '1': 'GetSummariesReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'page_count', '3': 2, '4': 1, '5': 5, '10': 'pageCount'},
    {'1': 'summaries', '3': 3, '4': 3, '5': 11, '6': '.RacketReel.Summary', '10': 'summaries'},
  ],
};

/// Descriptor for `GetSummariesReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSummariesReplyDescriptor = $convert.base64Decode(
    'ChFHZXRTdW1tYXJpZXNSZXBseRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEh0KCnBhZ2VfY2'
    '91bnQYAiABKAVSCXBhZ2VDb3VudBIxCglzdW1tYXJpZXMYAyADKAsyEy5SYWNrZXRSZWVsLlN1'
    'bW1hcnlSCXN1bW1hcmllcw==');

@$core.Deprecated('Use getStateRequestDescriptor instead')
const GetStateRequest$json = {
  '1': 'GetStateRequest',
  '2': [
    {'1': 'match_id', '3': 1, '4': 1, '5': 5, '10': 'matchId'},
  ],
};

/// Descriptor for `GetStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStateRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRTdGF0ZVJlcXVlc3QSGQoIbWF0Y2hfaWQYASABKAVSB21hdGNoSWQ=');

@$core.Deprecated('Use getStateReplyDescriptor instead')
const GetStateReply$json = {
  '1': 'GetStateReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'state', '3': 2, '4': 1, '5': 11, '6': '.RacketReel.State', '9': 0, '10': 'state', '17': true},
  ],
  '8': [
    {'1': '_state'},
  ],
};

/// Descriptor for `GetStateReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStateReplyDescriptor = $convert.base64Decode(
    'Cg1HZXRTdGF0ZVJlcGx5EhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSLAoFc3RhdGUYAiABKA'
    'syES5SYWNrZXRSZWVsLlN0YXRlSABSBXN0YXRliAEBQggKBl9zdGF0ZQ==');

@$core.Deprecated('Use stateDescriptor instead')
const State$json = {
  '1': 'State',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
    {'1': 'created_at_utc', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAtUtc'},
    {'1': 'serving', '3': 3, '4': 1, '5': 14, '6': '.RacketReel.Team', '10': 'serving'},
    {'1': 'highlighted', '3': 4, '4': 1, '5': 8, '10': 'highlighted'},
    {'1': 'player_one_name', '3': 5, '4': 1, '5': 9, '10': 'playerOneName'},
    {'1': 'player_two_name', '3': 6, '4': 1, '5': 9, '10': 'playerTwoName'},
    {'1': 'team_one_points', '3': 7, '4': 1, '5': 9, '10': 'teamOnePoints'},
    {'1': 'team_two_points', '3': 8, '4': 1, '5': 9, '10': 'teamTwoPoints'},
    {'1': 'team_one_games', '3': 9, '4': 1, '5': 9, '10': 'teamOneGames'},
    {'1': 'team_two_games', '3': 10, '4': 1, '5': 9, '10': 'teamTwoGames'},
    {'1': 'team_one_sets', '3': 11, '4': 1, '5': 9, '10': 'teamOneSets'},
    {'1': 'team_two_sets', '3': 12, '4': 1, '5': 9, '10': 'teamTwoSets'},
  ],
};

/// Descriptor for `State`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateDescriptor = $convert.base64Decode(
    'CgVTdGF0ZRIYCgd2ZXJzaW9uGAEgASgFUgd2ZXJzaW9uEkAKDmNyZWF0ZWRfYXRfdXRjGAIgAS'
    'gLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIMY3JlYXRlZEF0VXRjEioKB3NlcnZpbmcY'
    'AyABKA4yEC5SYWNrZXRSZWVsLlRlYW1SB3NlcnZpbmcSIAoLaGlnaGxpZ2h0ZWQYBCABKAhSC2'
    'hpZ2hsaWdodGVkEiYKD3BsYXllcl9vbmVfbmFtZRgFIAEoCVINcGxheWVyT25lTmFtZRImCg9w'
    'bGF5ZXJfdHdvX25hbWUYBiABKAlSDXBsYXllclR3b05hbWUSJgoPdGVhbV9vbmVfcG9pbnRzGA'
    'cgASgJUg10ZWFtT25lUG9pbnRzEiYKD3RlYW1fdHdvX3BvaW50cxgIIAEoCVINdGVhbVR3b1Bv'
    'aW50cxIkCg50ZWFtX29uZV9nYW1lcxgJIAEoCVIMdGVhbU9uZUdhbWVzEiQKDnRlYW1fdHdvX2'
    'dhbWVzGAogASgJUgx0ZWFtVHdvR2FtZXMSIgoNdGVhbV9vbmVfc2V0cxgLIAEoCVILdGVhbU9u'
    'ZVNldHMSIgoNdGVhbV90d29fc2V0cxgMIAEoCVILdGVhbVR3b1NldHM=');

@$core.Deprecated('Use getStateAtVersionRequestDescriptor instead')
const GetStateAtVersionRequest$json = {
  '1': 'GetStateAtVersionRequest',
  '2': [
    {'1': 'match_id', '3': 1, '4': 1, '5': 5, '10': 'matchId'},
    {'1': 'version', '3': 2, '4': 1, '5': 5, '10': 'version'},
  ],
};

/// Descriptor for `GetStateAtVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStateAtVersionRequestDescriptor = $convert.base64Decode(
    'ChhHZXRTdGF0ZUF0VmVyc2lvblJlcXVlc3QSGQoIbWF0Y2hfaWQYASABKAVSB21hdGNoSWQSGA'
    'oHdmVyc2lvbhgCIAEoBVIHdmVyc2lvbg==');

