// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/backend.proto

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

@class GAPIBackendRule;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GAPIBackendRoot

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
@interface GAPIBackendRoot : GPBRootObject
@end

#pragma mark - GAPIBackend

typedef GPB_ENUM(GAPIBackend_FieldNumber) {
  GAPIBackend_FieldNumber_RulesArray = 1,
};

/**
 * `Backend` defines the backend configuration for a service.
 **/
@interface GAPIBackend : GPBMessage

/**
 * A list of API backend rules that apply to individual API methods.
 *
 * **NOTE:** All service configuration rules follow "last one wins" order.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<GAPIBackendRule*> *rulesArray;
/** The number of items in @c rulesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger rulesArray_Count;

@end

#pragma mark - GAPIBackendRule

typedef GPB_ENUM(GAPIBackendRule_FieldNumber) {
  GAPIBackendRule_FieldNumber_Selector = 1,
  GAPIBackendRule_FieldNumber_Address = 2,
  GAPIBackendRule_FieldNumber_Deadline = 3,
};

/**
 * A backend rule provides configuration for an individual API element.
 **/
@interface GAPIBackendRule : GPBMessage

/**
 * Selects the methods to which this rule applies.
 *
 * Refer to [selector][google.api.DocumentationRule.selector] for syntax details.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *selector;

/** The address of the API backend. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *address;

/**
 * The number of seconds to wait for a response from a request.  The
 * default depends on the deployment context.
 **/
@property(nonatomic, readwrite) double deadline;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
