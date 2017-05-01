// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/quota.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "google/api/Quota.pbobjc.h"
 #import "google/api/Annotations.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GAPIQuotaRoot

@implementation GAPIQuotaRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    registry = [[GPBExtensionRegistry alloc] init];
    // Merge in the imports (direct or indirect) that defined extensions.
    [registry addExtensions:[GAPIAnnotationsRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - GAPIQuotaRoot_FileDescriptor

static GPBFileDescriptor *GAPIQuotaRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.api"
                                                 objcPrefix:@"GAPI"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GAPIQuota

@implementation GAPIQuota

@dynamic limitsArray, limitsArray_Count;
@dynamic metricRulesArray, metricRulesArray_Count;

typedef struct GAPIQuota__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *limitsArray;
  NSMutableArray *metricRulesArray;
} GAPIQuota__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "limitsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GAPIQuotaLimit),
        .number = GAPIQuota_FieldNumber_LimitsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GAPIQuota__storage_, limitsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "metricRulesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GAPIMetricRule),
        .number = GAPIQuota_FieldNumber_MetricRulesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GAPIQuota__storage_, metricRulesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPIQuota class]
                                     rootClass:[GAPIQuotaRoot class]
                                          file:GAPIQuotaRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPIQuota__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GAPIMetricRule

@implementation GAPIMetricRule

@dynamic selector;
@dynamic metricCosts, metricCosts_Count;

typedef struct GAPIMetricRule__storage_ {
  uint32_t _has_storage_[1];
  NSString *selector;
  GPBStringInt64Dictionary *metricCosts;
} GAPIMetricRule__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "selector",
        .dataTypeSpecific.className = NULL,
        .number = GAPIMetricRule_FieldNumber_Selector,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GAPIMetricRule__storage_, selector),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "metricCosts",
        .dataTypeSpecific.className = NULL,
        .number = GAPIMetricRule_FieldNumber_MetricCosts,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GAPIMetricRule__storage_, metricCosts),
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPIMetricRule class]
                                     rootClass:[GAPIQuotaRoot class]
                                          file:GAPIQuotaRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPIMetricRule__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GAPIQuotaLimit

@implementation GAPIQuotaLimit

@dynamic name;
@dynamic description_p;
@dynamic defaultLimit;
@dynamic maxLimit;
@dynamic freeTier;
@dynamic duration;
@dynamic metric;
@dynamic unit;
@dynamic values, values_Count;
@dynamic displayName;

typedef struct GAPIQuotaLimit__storage_ {
  uint32_t _has_storage_[1];
  NSString *description_p;
  NSString *duration;
  NSString *name;
  NSString *metric;
  NSString *unit;
  GPBStringInt64Dictionary *values;
  NSString *displayName;
  int64_t defaultLimit;
  int64_t maxLimit;
  int64_t freeTier;
} GAPIQuotaLimit__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "description_p",
        .dataTypeSpecific.className = NULL,
        .number = GAPIQuotaLimit_FieldNumber_Description_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GAPIQuotaLimit__storage_, description_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "defaultLimit",
        .dataTypeSpecific.className = NULL,
        .number = GAPIQuotaLimit_FieldNumber_DefaultLimit,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GAPIQuotaLimit__storage_, defaultLimit),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "maxLimit",
        .dataTypeSpecific.className = NULL,
        .number = GAPIQuotaLimit_FieldNumber_MaxLimit,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GAPIQuotaLimit__storage_, maxLimit),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "duration",
        .dataTypeSpecific.className = NULL,
        .number = GAPIQuotaLimit_FieldNumber_Duration,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GAPIQuotaLimit__storage_, duration),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GAPIQuotaLimit_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GAPIQuotaLimit__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "freeTier",
        .dataTypeSpecific.className = NULL,
        .number = GAPIQuotaLimit_FieldNumber_FreeTier,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GAPIQuotaLimit__storage_, freeTier),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "metric",
        .dataTypeSpecific.className = NULL,
        .number = GAPIQuotaLimit_FieldNumber_Metric,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(GAPIQuotaLimit__storage_, metric),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "unit",
        .dataTypeSpecific.className = NULL,
        .number = GAPIQuotaLimit_FieldNumber_Unit,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(GAPIQuotaLimit__storage_, unit),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "values",
        .dataTypeSpecific.className = NULL,
        .number = GAPIQuotaLimit_FieldNumber_Values,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GAPIQuotaLimit__storage_, values),
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "displayName",
        .dataTypeSpecific.className = NULL,
        .number = GAPIQuotaLimit_FieldNumber_DisplayName,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(GAPIQuotaLimit__storage_, displayName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPIQuotaLimit class]
                                     rootClass:[GAPIQuotaRoot class]
                                          file:GAPIQuotaRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPIQuotaLimit__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)