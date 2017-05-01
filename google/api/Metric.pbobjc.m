// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/metric.proto

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

 #import "google/api/Metric.pbobjc.h"
 #import "google/api/Label.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GAPIMetricRoot

@implementation GAPIMetricRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GAPIMetricRoot_FileDescriptor

static GPBFileDescriptor *GAPIMetricRoot_FileDescriptor(void) {
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

#pragma mark - GAPIMetricDescriptor

@implementation GAPIMetricDescriptor

@dynamic name;
@dynamic type;
@dynamic labelsArray, labelsArray_Count;
@dynamic metricKind;
@dynamic valueType;
@dynamic unit;
@dynamic description_p;
@dynamic displayName;

typedef struct GAPIMetricDescriptor__storage_ {
  uint32_t _has_storage_[1];
  GAPIMetricDescriptor_MetricKind metricKind;
  GAPIMetricDescriptor_ValueType valueType;
  NSString *name;
  NSMutableArray *labelsArray;
  NSString *unit;
  NSString *description_p;
  NSString *displayName;
  NSString *type;
} GAPIMetricDescriptor__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GAPIMetricDescriptor_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GAPIMetricDescriptor__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "labelsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GAPILabelDescriptor),
        .number = GAPIMetricDescriptor_FieldNumber_LabelsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GAPIMetricDescriptor__storage_, labelsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "metricKind",
        .dataTypeSpecific.enumDescFunc = GAPIMetricDescriptor_MetricKind_EnumDescriptor,
        .number = GAPIMetricDescriptor_FieldNumber_MetricKind,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GAPIMetricDescriptor__storage_, metricKind),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "valueType",
        .dataTypeSpecific.enumDescFunc = GAPIMetricDescriptor_ValueType_EnumDescriptor,
        .number = GAPIMetricDescriptor_FieldNumber_ValueType,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GAPIMetricDescriptor__storage_, valueType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "unit",
        .dataTypeSpecific.className = NULL,
        .number = GAPIMetricDescriptor_FieldNumber_Unit,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GAPIMetricDescriptor__storage_, unit),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "description_p",
        .dataTypeSpecific.className = NULL,
        .number = GAPIMetricDescriptor_FieldNumber_Description_p,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GAPIMetricDescriptor__storage_, description_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "displayName",
        .dataTypeSpecific.className = NULL,
        .number = GAPIMetricDescriptor_FieldNumber_DisplayName,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(GAPIMetricDescriptor__storage_, displayName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "type",
        .dataTypeSpecific.className = NULL,
        .number = GAPIMetricDescriptor_FieldNumber_Type,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GAPIMetricDescriptor__storage_, type),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPIMetricDescriptor class]
                                     rootClass:[GAPIMetricRoot class]
                                          file:GAPIMetricRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPIMetricDescriptor__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GAPIMetricDescriptor_MetricKind_RawValue(GAPIMetricDescriptor *message) {
  GPBDescriptor *descriptor = [GAPIMetricDescriptor descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GAPIMetricDescriptor_FieldNumber_MetricKind];
  return GPBGetMessageInt32Field(message, field);
}

void SetGAPIMetricDescriptor_MetricKind_RawValue(GAPIMetricDescriptor *message, int32_t value) {
  GPBDescriptor *descriptor = [GAPIMetricDescriptor descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GAPIMetricDescriptor_FieldNumber_MetricKind];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t GAPIMetricDescriptor_ValueType_RawValue(GAPIMetricDescriptor *message) {
  GPBDescriptor *descriptor = [GAPIMetricDescriptor descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GAPIMetricDescriptor_FieldNumber_ValueType];
  return GPBGetMessageInt32Field(message, field);
}

void SetGAPIMetricDescriptor_ValueType_RawValue(GAPIMetricDescriptor *message, int32_t value) {
  GPBDescriptor *descriptor = [GAPIMetricDescriptor descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GAPIMetricDescriptor_FieldNumber_ValueType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum GAPIMetricDescriptor_MetricKind

GPBEnumDescriptor *GAPIMetricDescriptor_MetricKind_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "MetricKindUnspecified\000Gauge\000Delta\000Cumula"
        "tive\000";
    static const int32_t values[] = {
        GAPIMetricDescriptor_MetricKind_MetricKindUnspecified,
        GAPIMetricDescriptor_MetricKind_Gauge,
        GAPIMetricDescriptor_MetricKind_Delta,
        GAPIMetricDescriptor_MetricKind_Cumulative,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GAPIMetricDescriptor_MetricKind)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GAPIMetricDescriptor_MetricKind_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GAPIMetricDescriptor_MetricKind_IsValidValue(int32_t value__) {
  switch (value__) {
    case GAPIMetricDescriptor_MetricKind_MetricKindUnspecified:
    case GAPIMetricDescriptor_MetricKind_Gauge:
    case GAPIMetricDescriptor_MetricKind_Delta:
    case GAPIMetricDescriptor_MetricKind_Cumulative:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum GAPIMetricDescriptor_ValueType

GPBEnumDescriptor *GAPIMetricDescriptor_ValueType_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "ValueTypeUnspecified\000Bool\000Int64\000Double\000S"
        "tring\000Distribution\000Money\000";
    static const int32_t values[] = {
        GAPIMetricDescriptor_ValueType_ValueTypeUnspecified,
        GAPIMetricDescriptor_ValueType_Bool,
        GAPIMetricDescriptor_ValueType_Int64,
        GAPIMetricDescriptor_ValueType_Double,
        GAPIMetricDescriptor_ValueType_String,
        GAPIMetricDescriptor_ValueType_Distribution,
        GAPIMetricDescriptor_ValueType_Money,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GAPIMetricDescriptor_ValueType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GAPIMetricDescriptor_ValueType_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GAPIMetricDescriptor_ValueType_IsValidValue(int32_t value__) {
  switch (value__) {
    case GAPIMetricDescriptor_ValueType_ValueTypeUnspecified:
    case GAPIMetricDescriptor_ValueType_Bool:
    case GAPIMetricDescriptor_ValueType_Int64:
    case GAPIMetricDescriptor_ValueType_Double:
    case GAPIMetricDescriptor_ValueType_String:
    case GAPIMetricDescriptor_ValueType_Distribution:
    case GAPIMetricDescriptor_ValueType_Money:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - GAPIMetric

@implementation GAPIMetric

@dynamic type;
@dynamic labels, labels_Count;

typedef struct GAPIMetric__storage_ {
  uint32_t _has_storage_[1];
  NSMutableDictionary *labels;
  NSString *type;
} GAPIMetric__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "labels",
        .dataTypeSpecific.className = NULL,
        .number = GAPIMetric_FieldNumber_Labels,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GAPIMetric__storage_, labels),
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "type",
        .dataTypeSpecific.className = NULL,
        .number = GAPIMetric_FieldNumber_Type,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GAPIMetric__storage_, type),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPIMetric class]
                                     rootClass:[GAPIMetricRoot class]
                                          file:GAPIMetricRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPIMetric__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)