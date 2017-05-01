// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/endpoint.proto

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

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GAPIEndpointRoot

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
@interface GAPIEndpointRoot : GPBRootObject
@end

#pragma mark - GAPIEndpoint

typedef GPB_ENUM(GAPIEndpoint_FieldNumber) {
  GAPIEndpoint_FieldNumber_Name = 1,
  GAPIEndpoint_FieldNumber_AliasesArray = 2,
  GAPIEndpoint_FieldNumber_ApisArray = 3,
  GAPIEndpoint_FieldNumber_FeaturesArray = 4,
  GAPIEndpoint_FieldNumber_AllowCors = 5,
  GAPIEndpoint_FieldNumber_Target = 101,
};

/**
 * `Endpoint` describes a network endpoint that serves a set of APIs.
 * A service may expose any number of endpoints, and all endpoints share the
 * same service configuration, such as quota configuration and monitoring
 * configuration.
 *
 * Example service configuration:
 *
 *     name: library-example.googleapis.com
 *     endpoints:
 *       # Below entry makes 'google.example.library.v1.Library'
 *       # API be served from endpoint address library-example.googleapis.com.
 *       # It also allows HTTP OPTIONS calls to be passed to the backend, for
 *       # it to decide whether the subsequent cross-origin request is
 *       # allowed to proceed.
 *     - name: library-example.googleapis.com
 *       allow_cors: true
 **/
@interface GAPIEndpoint : GPBMessage

/** The canonical name of this endpoint. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/**
 * DEPRECATED: This field is no longer supported. Instead of using aliases,
 * please specify multiple [google.api.Endpoint][google.api.Endpoint] for each of the intented
 * alias.
 *
 * Additional names that this endpoint will be hosted on.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *aliasesArray;
/** The number of items in @c aliasesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger aliasesArray_Count;

/** The list of APIs served by this endpoint. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *apisArray;
/** The number of items in @c apisArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger apisArray_Count;

/** The list of features enabled on this endpoint. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *featuresArray;
/** The number of items in @c featuresArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger featuresArray_Count;

/**
 * The specification of an Internet routable address of API frontend that will
 * handle requests to this [API Endpoint](https://cloud.google.com/apis/design/glossary).
 * It should be either a valid IPv4 address or a fully-qualified domain name.
 * For example, "8.8.8.8" or "myservice.appspot.com".
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *target;

/**
 * Allowing
 * [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing), aka
 * cross-domain traffic, would allow the backends served from this endpoint to
 * receive and respond to HTTP OPTIONS requests. The response will be used by
 * the browser to determine whether the subsequent cross-origin request is
 * allowed to proceed.
 **/
@property(nonatomic, readwrite) BOOL allowCors;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
