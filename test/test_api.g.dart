// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v16.0.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import, no_leading_underscores_for_local_identifiers
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:video_player_linux/src/messages.g.dart';

abstract class TestHostVideoPlayerApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> pigeonChannelCodec =
      StandardMessageCodec();

  /// Initializes the video player.
  void initialize();

  /// Creates a new instance of the video player.
  /// Returns the textureId of the created player.
  int create(String? asset, String? uri, Map<String?, String?> httpHeaders);

  /// Disposes the video player with the given textureId.
  void dispose(int textureId);

  /// Sets the looping state of the video player with the given textureId.
  void setLooping(int textureId, bool isLooping);

  /// Sets the volume of the video player with the given textureId.
  void setVolume(int textureId, double volume);

  /// Sets the playback speed of the video player with the given textureId.
  void setPlaybackSpeed(int textureId, double speed);

  /// Starts playing the video in the video player with the given textureId.
  void play(int textureId);

  /// Gets the current position of the video player with the given textureId.
  /// Returns the position in milliseconds.
  int getPosition(int textureId);

  /// Seeks to the given position in the video player with the given textureId.
  /// The position is in milliseconds.
  void seekTo(int textureId, int position);

  /// Pauses the video in the video player with the given textureId.
  void pause(int textureId);

  static void setup(TestHostVideoPlayerApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.initialize',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          try {
            api.initialize();
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.create',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.create was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_asset = (args[0] as String?);
          final String? arg_uri = (args[1] as String?);
          final Map<String?, String?>? arg_httpHeaders =
              (args[2] as Map<Object?, Object?>?)?.cast<String?, String?>();
          assert(arg_httpHeaders != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.create was null, expected non-null Map<String?, String?>.');
          try {
            final int output = api.create(arg_asset, arg_uri, arg_httpHeaders!);
            return <Object?>[output];
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.dispose',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.dispose was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_textureId = (args[0] as int?);
          assert(arg_textureId != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.dispose was null, expected non-null int.');
          try {
            api.dispose(arg_textureId!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setLooping',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setLooping was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_textureId = (args[0] as int?);
          assert(arg_textureId != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setLooping was null, expected non-null int.');
          final bool? arg_isLooping = (args[1] as bool?);
          assert(arg_isLooping != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setLooping was null, expected non-null bool.');
          try {
            api.setLooping(arg_textureId!, arg_isLooping!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setVolume',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setVolume was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_textureId = (args[0] as int?);
          assert(arg_textureId != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setVolume was null, expected non-null int.');
          final double? arg_volume = (args[1] as double?);
          assert(arg_volume != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setVolume was null, expected non-null double.');
          try {
            api.setVolume(arg_textureId!, arg_volume!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setPlaybackSpeed',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setPlaybackSpeed was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_textureId = (args[0] as int?);
          assert(arg_textureId != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setPlaybackSpeed was null, expected non-null int.');
          final double? arg_speed = (args[1] as double?);
          assert(arg_speed != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.setPlaybackSpeed was null, expected non-null double.');
          try {
            api.setPlaybackSpeed(arg_textureId!, arg_speed!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.play',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.play was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_textureId = (args[0] as int?);
          assert(arg_textureId != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.play was null, expected non-null int.');
          try {
            api.play(arg_textureId!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.getPosition',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.getPosition was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_textureId = (args[0] as int?);
          assert(arg_textureId != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.getPosition was null, expected non-null int.');
          try {
            final int output = api.getPosition(arg_textureId!);
            return <Object?>[output];
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.seekTo',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.seekTo was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_textureId = (args[0] as int?);
          assert(arg_textureId != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.seekTo was null, expected non-null int.');
          final int? arg_position = (args[1] as int?);
          assert(arg_position != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.seekTo was null, expected non-null int.');
          try {
            api.seekTo(arg_textureId!, arg_position!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.pause',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.pause was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_textureId = (args[0] as int?);
          assert(arg_textureId != null,
              'Argument for dev.flutter.pigeon.video_player_linux.LinuxVideoPlayerApi.pause was null, expected non-null int.');
          try {
            api.pause(arg_textureId!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
  }
}
