// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/assistant/embedded/v1alpha1/embedded_assistant.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class AudioInConfig;
@class AudioOut;
@class AudioOutConfig;
@class ConverseConfig;
@class ConverseResult;
@class ConverseState;
@class RPCStatus;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum AudioInConfig_Encoding

/**
 * Audio encoding of the data sent in the audio message.
 * Audio must be one-channel (mono). The only language supported is "en-US".
 **/
typedef GPB_ENUM(AudioInConfig_Encoding) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  AudioInConfig_Encoding_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** Not specified. Will return result [google.rpc.Code.INVALID_ARGUMENT][]. */
  AudioInConfig_Encoding_EncodingUnspecified = 0,

  /**
   * Uncompressed 16-bit signed little-endian samples (Linear PCM).
   * This encoding includes no header, only the raw audio bytes.
   **/
  AudioInConfig_Encoding_Linear16 = 1,

  /**
   * [`FLAC`](https://xiph.org/flac/documentation.html) (Free Lossless Audio
   * Codec) is the recommended encoding because it is
   * lossless--therefore recognition is not compromised--and
   * requires only about half the bandwidth of `LINEAR16`. This encoding
   * includes the `FLAC` stream header followed by audio data. It supports
   * 16-bit and 24-bit samples, however, not all fields in `STREAMINFO` are
   * supported.
   **/
  AudioInConfig_Encoding_Flac = 2,
};

GPBEnumDescriptor *AudioInConfig_Encoding_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL AudioInConfig_Encoding_IsValidValue(int32_t value);

#pragma mark - Enum AudioOutConfig_Encoding

/**
 * Audio encoding of the data returned in the audio message. All encodings are
 * raw audio bytes with no header, except as indicated below.
 **/
typedef GPB_ENUM(AudioOutConfig_Encoding) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  AudioOutConfig_Encoding_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** Not specified. Will return result [google.rpc.Code.INVALID_ARGUMENT][]. */
  AudioOutConfig_Encoding_EncodingUnspecified = 0,

  /** Uncompressed 16-bit signed little-endian samples (Linear PCM). */
  AudioOutConfig_Encoding_Linear16 = 1,

  /** MP3 audio encoding. The sample rate is encoded in the payload. */
  AudioOutConfig_Encoding_Mp3 = 2,

  /**
   * Opus-encoded audio wrapped in an ogg container. The result will be a
   * file which can be played natively on Android and in some browsers (such
   * as Chrome). The quality of the encoding is considerably higher than MP3
   * while using the same bitrate. The sample rate is encoded in the payload.
   **/
  AudioOutConfig_Encoding_OpusInOgg = 3,
};

GPBEnumDescriptor *AudioOutConfig_Encoding_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL AudioOutConfig_Encoding_IsValidValue(int32_t value);

#pragma mark - Enum ConverseResult_MicrophoneMode

/** Possible states of the microphone after a `Converse` RPC completes. */
typedef GPB_ENUM(ConverseResult_MicrophoneMode) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  ConverseResult_MicrophoneMode_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** No mode specified. */
  ConverseResult_MicrophoneMode_MicrophoneModeUnspecified = 0,

  /**
   * The service is not expecting a follow-on question from the user.
   * The microphone should remain off until the user re-activates it.
   **/
  ConverseResult_MicrophoneMode_CloseMicrophone = 1,

  /**
   * The service is expecting a follow-on question from the user. The
   * microphone should be re-opened when the `AudioOut` playback completes
   * (by starting a new `Converse` RPC call to send the new audio).
   **/
  ConverseResult_MicrophoneMode_DialogFollowOn = 2,
};

GPBEnumDescriptor *ConverseResult_MicrophoneMode_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL ConverseResult_MicrophoneMode_IsValidValue(int32_t value);

#pragma mark - Enum ConverseResponse_EventType

/** Indicates the type of event. */
typedef GPB_ENUM(ConverseResponse_EventType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  ConverseResponse_EventType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** No event specified. */
  ConverseResponse_EventType_EventTypeUnspecified = 0,

  /**
   * This event indicates that the server has detected the end of the user's
   * speech utterance and expects no additional speech. Therefore, the server
   * will not process additional audio (although it may subsequently return
   * additional results). The client should stop sending additional audio
   * data, half-close the gRPC connection, and wait for any additional results
   * until the server closes the gRPC connection.
   **/
  ConverseResponse_EventType_EndOfUtterance = 1,
};

GPBEnumDescriptor *ConverseResponse_EventType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL ConverseResponse_EventType_IsValidValue(int32_t value);

#pragma mark - EmbeddedAssistantRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface EmbeddedAssistantRoot : GPBRootObject
@end

#pragma mark - ConverseConfig

typedef GPB_ENUM(ConverseConfig_FieldNumber) {
  ConverseConfig_FieldNumber_AudioInConfig = 1,
  ConverseConfig_FieldNumber_AudioOutConfig = 2,
  ConverseConfig_FieldNumber_ConverseState = 3,
};

/**
 * Specifies how to process the `ConverseRequest` messages.
 **/
@interface ConverseConfig : GPBMessage

/** *Required* Specifies how to process the subsequent incoming audio. */
@property(nonatomic, readwrite, strong, null_resettable) AudioInConfig *audioInConfig;
/** Test to see if @c audioInConfig has been set. */
@property(nonatomic, readwrite) BOOL hasAudioInConfig;

/** *Required* Specifies how to format the audio that will be returned. */
@property(nonatomic, readwrite, strong, null_resettable) AudioOutConfig *audioOutConfig;
/** Test to see if @c audioOutConfig has been set. */
@property(nonatomic, readwrite) BOOL hasAudioOutConfig;

/** *Required* Represents the current dialog state. */
@property(nonatomic, readwrite, strong, null_resettable) ConverseState *converseState;
/** Test to see if @c converseState has been set. */
@property(nonatomic, readwrite) BOOL hasConverseState;

@end

#pragma mark - AudioInConfig

typedef GPB_ENUM(AudioInConfig_FieldNumber) {
  AudioInConfig_FieldNumber_Encoding = 1,
  AudioInConfig_FieldNumber_SampleRateHertz = 2,
};

/**
 * Specifies how to process the `audio_in` data that will be provided in
 * subsequent requests. For recommended settings, see the Google Assistant SDK
 * [best practices](https://developers.google.com/assistant/best-practices).
 **/
@interface AudioInConfig : GPBMessage

/** *Required* Encoding of audio data sent in all `audio_in` messages. */
@property(nonatomic, readwrite) AudioInConfig_Encoding encoding;

/**
 * *Required* Sample rate (in Hertz) of the audio data sent in all `audio_in`
 * messages. Valid values are from 16000-24000, but 16000 is optimal.
 * For best results, set the sampling rate of the audio source to 16000 Hz.
 * If that's not possible, use the native sample rate of the audio source
 * (instead of re-sampling).
 **/
@property(nonatomic, readwrite) int32_t sampleRateHertz;

@end

/**
 * Fetches the raw value of a @c AudioInConfig's @c encoding property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t AudioInConfig_Encoding_RawValue(AudioInConfig *message);
/**
 * Sets the raw value of an @c AudioInConfig's @c encoding property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetAudioInConfig_Encoding_RawValue(AudioInConfig *message, int32_t value);

#pragma mark - AudioOutConfig

typedef GPB_ENUM(AudioOutConfig_FieldNumber) {
  AudioOutConfig_FieldNumber_Encoding = 1,
  AudioOutConfig_FieldNumber_SampleRateHertz = 2,
  AudioOutConfig_FieldNumber_VolumePercentage = 3,
};

/**
 * Specifies the desired format for the server to use when it returns
 * `audio_out` messages.
 **/
@interface AudioOutConfig : GPBMessage

/**
 * *Required* The encoding of audio data to be returned in all `audio_out`
 * messages.
 **/
@property(nonatomic, readwrite) AudioOutConfig_Encoding encoding;

/**
 * *Required* The sample rate in Hertz of the audio data returned in
 * `audio_out` messages. Valid values are: 16000-24000.
 **/
@property(nonatomic, readwrite) int32_t sampleRateHertz;

/**
 * *Required* Current volume setting of the device's audio output.
 * Valid values are 1 to 100 (corresponding to 1% to 100%).
 **/
@property(nonatomic, readwrite) int32_t volumePercentage;

@end

/**
 * Fetches the raw value of a @c AudioOutConfig's @c encoding property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t AudioOutConfig_Encoding_RawValue(AudioOutConfig *message);
/**
 * Sets the raw value of an @c AudioOutConfig's @c encoding property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetAudioOutConfig_Encoding_RawValue(AudioOutConfig *message, int32_t value);

#pragma mark - ConverseState

typedef GPB_ENUM(ConverseState_FieldNumber) {
  ConverseState_FieldNumber_ConversationState = 1,
};

/**
 * Provides information about the current dialog state.
 **/
@interface ConverseState : GPBMessage

/**
 * *Required* The `conversation_state` value returned in the prior
 * `ConverseResponse`. Omit (do not set the field) if there was no prior
 * `ConverseResponse`. If there was a prior `ConverseResponse`, do not omit
 * this field; doing so will end that conversation (and this new request will
 * start a new conversation).
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSData *conversationState;

@end

#pragma mark - AudioOut

typedef GPB_ENUM(AudioOut_FieldNumber) {
  AudioOut_FieldNumber_AudioData = 1,
};

/**
 * The audio containing the assistant's response to the query. Sequential chunks
 * of audio data are received in sequential `ConverseResponse` messages.
 **/
@interface AudioOut : GPBMessage

/**
 * *Output-only* The audio data containing the assistant's response to the
 * query. Sequential chunks of audio data are received in sequential
 * `ConverseResponse` messages.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSData *audioData;

@end

#pragma mark - ConverseResult

typedef GPB_ENUM(ConverseResult_FieldNumber) {
  ConverseResult_FieldNumber_SpokenRequestText = 1,
  ConverseResult_FieldNumber_SpokenResponseText = 2,
  ConverseResult_FieldNumber_ConversationState = 3,
  ConverseResult_FieldNumber_MicrophoneMode = 4,
  ConverseResult_FieldNumber_VolumePercentage = 5,
};

/**
 * The semantic result for the user's spoken query.
 **/
@interface ConverseResult : GPBMessage

/** *Output-only* The recognized transcript of what the user said. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *spokenRequestText;

/**
 * *Output-only* The text of the assistant's spoken response. This is only
 * returned for an IFTTT action.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *spokenResponseText;

/**
 * *Output-only* State information for subsequent `ConverseRequest`. This
 * value should be saved in the client and returned in the
 * `conversation_state` with the next `ConverseRequest`. (The client does not
 * need to interpret or otherwise use this value.) There is no need to save
 * this information across device restarts.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSData *conversationState;

/**
 * *Output-only* Specifies the mode of the microphone after this `Converse`
 * RPC is processed.
 **/
@property(nonatomic, readwrite) ConverseResult_MicrophoneMode microphoneMode;

/**
 * *Output-only* Updated volume level. The value will be 0 or omitted
 * (indicating no change) unless a voice command such as "Increase the volume"
 * or "Set volume level 4" was recognized, in which case the value will be
 * between 1 and 100 (corresponding to the new volume level of 1% to 100%).
 * Typically, a client should use this volume level when playing the
 * `audio_out` data, and retain this value as the current volume level and
 * supply it in the `AudioOutConfig` of the next `ConverseRequest`. (Some
 * clients may also implement other ways to allow the current volume level to
 * be changed, for example, by providing a knob that the user can turn.)
 **/
@property(nonatomic, readwrite) int32_t volumePercentage;

@end

/**
 * Fetches the raw value of a @c ConverseResult's @c microphoneMode property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t ConverseResult_MicrophoneMode_RawValue(ConverseResult *message);
/**
 * Sets the raw value of an @c ConverseResult's @c microphoneMode property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetConverseResult_MicrophoneMode_RawValue(ConverseResult *message, int32_t value);

#pragma mark - ConverseRequest

typedef GPB_ENUM(ConverseRequest_FieldNumber) {
  ConverseRequest_FieldNumber_Config = 1,
  ConverseRequest_FieldNumber_AudioIn = 2,
};

typedef GPB_ENUM(ConverseRequest_ConverseRequest_OneOfCase) {
  ConverseRequest_ConverseRequest_OneOfCase_GPBUnsetOneOfCase = 0,
  ConverseRequest_ConverseRequest_OneOfCase_Config = 1,
  ConverseRequest_ConverseRequest_OneOfCase_AudioIn = 2,
};

/**
 * The top-level message sent by the client. Clients must send at least two, and
 * typically numerous `ConverseRequest` messages. The first message must
 * contain a `config` message and must not contain `audio_in` data. All
 * subsequent messages must contain `audio_in` data and must not contain a
 * `config` message.
 **/
@interface ConverseRequest : GPBMessage

/** Exactly one of these fields must be specified in each `ConverseRequest`. */
@property(nonatomic, readonly) ConverseRequest_ConverseRequest_OneOfCase converseRequestOneOfCase;

/**
 * The `config` message provides information to the recognizer that
 * specifies how to process the request.
 * The first `ConverseRequest` message must contain a `config` message.
 **/
@property(nonatomic, readwrite, strong, null_resettable) ConverseConfig *config;

/**
 * The audio data to be recognized. Sequential chunks of audio data are sent
 * in sequential `ConverseRequest` messages. The first `ConverseRequest`
 * message must not contain `audio_in` data and all subsequent
 * `ConverseRequest` messages must contain `audio_in` data. The audio bytes
 * must be encoded as specified in `AudioInConfig`.
 * Audio must be sent at approximately real-time (16000 samples per second).
 * An error will be returned if audio is sent significantly faster or
 * slower.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSData *audioIn;

@end

/**
 * Clears whatever value was set for the oneof 'converseRequest'.
 **/
void ConverseRequest_ClearConverseRequestOneOfCase(ConverseRequest *message);

#pragma mark - ConverseResponse

typedef GPB_ENUM(ConverseResponse_FieldNumber) {
  ConverseResponse_FieldNumber_Error = 1,
  ConverseResponse_FieldNumber_EventType = 2,
  ConverseResponse_FieldNumber_AudioOut = 3,
  ConverseResponse_FieldNumber_Result = 5,
};

typedef GPB_ENUM(ConverseResponse_ConverseResponse_OneOfCase) {
  ConverseResponse_ConverseResponse_OneOfCase_GPBUnsetOneOfCase = 0,
  ConverseResponse_ConverseResponse_OneOfCase_Error = 1,
  ConverseResponse_ConverseResponse_OneOfCase_EventType = 2,
  ConverseResponse_ConverseResponse_OneOfCase_AudioOut = 3,
  ConverseResponse_ConverseResponse_OneOfCase_Result = 5,
};

/**
 * The top-level message received by the client. A series of one or more
 * `ConverseResponse` messages are streamed back to the client.
 **/
@interface ConverseResponse : GPBMessage

/** Exactly one of these fields will be populated in each `ConverseResponse`. */
@property(nonatomic, readonly) ConverseResponse_ConverseResponse_OneOfCase converseResponseOneOfCase;

/**
 * *Output-only* If set, returns a [google.rpc.Status][google.rpc.Status] message that
 * specifies the error for the operation.
 * If an error occurs during processing, this message will be set and there
 * will be no further messages sent.
 **/
@property(nonatomic, readwrite, strong, null_resettable) RPCStatus *error;

/** *Output-only* Indicates the type of event. */
@property(nonatomic, readwrite) ConverseResponse_EventType eventType;

/** *Output-only* The audio containing the assistant's response to the query. */
@property(nonatomic, readwrite, strong, null_resettable) AudioOut *audioOut;

/** *Output-only* The semantic result for the user's spoken query. */
@property(nonatomic, readwrite, strong, null_resettable) ConverseResult *result;

@end

/**
 * Fetches the raw value of a @c ConverseResponse's @c eventType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t ConverseResponse_EventType_RawValue(ConverseResponse *message);
/**
 * Sets the raw value of an @c ConverseResponse's @c eventType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetConverseResponse_EventType_RawValue(ConverseResponse *message, int32_t value);

/**
 * Clears whatever value was set for the oneof 'converseResponse'.
 **/
void ConverseResponse_ClearConverseResponseOneOfCase(ConverseResponse *message);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)