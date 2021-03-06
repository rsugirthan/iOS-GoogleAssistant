// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/config_change.proto

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

@class GAPIAdvice;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum GAPIChangeType

/**
 * Classifies set of possible modifications to an object in the service
 * configuration.
 **/
typedef GPB_ENUM(GAPIChangeType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  GAPIChangeType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** No value was provided. */
  GAPIChangeType_ChangeTypeUnspecified = 0,

  /**
   * The changed object exists in the 'new' service configuration, but not
   * in the 'old' service configuration.
   **/
  GAPIChangeType_Added = 1,

  /**
   * The changed object exists in the 'old' service configuration, but not
   * in the 'new' service configuration.
   **/
  GAPIChangeType_Removed = 2,

  /**
   * The changed object exists in both service configurations, but its value
   * is different.
   **/
  GAPIChangeType_Modified = 3,
};

GPBEnumDescriptor *GAPIChangeType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL GAPIChangeType_IsValidValue(int32_t value);

#pragma mark - GAPIConfigChangeRoot

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
@interface GAPIConfigChangeRoot : GPBRootObject
@end

#pragma mark - GAPIConfigChange

typedef GPB_ENUM(GAPIConfigChange_FieldNumber) {
  GAPIConfigChange_FieldNumber_Element = 1,
  GAPIConfigChange_FieldNumber_OldValue = 2,
  GAPIConfigChange_FieldNumber_NewValue = 3,
  GAPIConfigChange_FieldNumber_ChangeType = 4,
  GAPIConfigChange_FieldNumber_AdvicesArray = 5,
};

/**
 * Output generated from semantically comparing two versions of a service
 * configuration.
 *
 * Includes detailed information about a field that have changed with
 * applicable advice about potential consequences for the change, such as
 * backwards-incompatibility.
 **/
@interface GAPIConfigChange : GPBMessage

/**
 * Object hierarchy path to the change, with levels separated by a '.'
 * character. For repeated fields, an applicable unique identifier field is
 * used for the index (usually selector, name, or id). For maps, the term
 * 'key' is used. If the field has no unique identifier, the numeric index
 * is used.
 * Examples:
 * - visibility.rules[selector=="google.LibraryService.CreateBook"].restriction
 * - quota.metric_rules[selector=="google"].metric_costs[key=="reads"].value
 * - logging.producer_destinations[0]
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *element;

/**
 * Value of the changed object in the old Service configuration,
 * in JSON format. This field will not be populated if ChangeType == ADDED.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *oldValue;

/**
 * Value of the changed object in the new Service configuration,
 * in JSON format. This field will not be populated if ChangeType == REMOVED.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *newValue NS_RETURNS_NOT_RETAINED;

/** The type for this change, either ADDED, REMOVED, or MODIFIED. */
@property(nonatomic, readwrite) GAPIChangeType changeType;

/**
 * Collection of advice provided for this change, useful for determining the
 * possible impact of this change.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<GAPIAdvice*> *advicesArray;
/** The number of items in @c advicesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger advicesArray_Count;

@end

/**
 * Fetches the raw value of a @c GAPIConfigChange's @c changeType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t GAPIConfigChange_ChangeType_RawValue(GAPIConfigChange *message);
/**
 * Sets the raw value of an @c GAPIConfigChange's @c changeType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetGAPIConfigChange_ChangeType_RawValue(GAPIConfigChange *message, int32_t value);

#pragma mark - GAPIAdvice

typedef GPB_ENUM(GAPIAdvice_FieldNumber) {
  GAPIAdvice_FieldNumber_Description_p = 2,
};

/**
 * Generated advice about this change, used for providing more
 * information about how a change will affect the existing service.
 **/
@interface GAPIAdvice : GPBMessage

/**
 * Useful description for why this advice was applied and what actions should
 * be taken to mitigate any implied risks.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
