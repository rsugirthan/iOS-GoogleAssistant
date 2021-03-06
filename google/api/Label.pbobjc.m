// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/label.proto

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

 #import "google/api/Label.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GAPILabelRoot

@implementation GAPILabelRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - GAPILabelRoot_FileDescriptor

static GPBFileDescriptor *GAPILabelRoot_FileDescriptor(void) {
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

#pragma mark - GAPILabelDescriptor

@implementation GAPILabelDescriptor

@dynamic key;
@dynamic valueType;
@dynamic description_p;

typedef struct GAPILabelDescriptor__storage_ {
  uint32_t _has_storage_[1];
  GAPILabelDescriptor_ValueType valueType;
  NSString *key;
  NSString *description_p;
} GAPILabelDescriptor__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "key",
        .dataTypeSpecific.className = NULL,
        .number = GAPILabelDescriptor_FieldNumber_Key,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GAPILabelDescriptor__storage_, key),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "valueType",
        .dataTypeSpecific.enumDescFunc = GAPILabelDescriptor_ValueType_EnumDescriptor,
        .number = GAPILabelDescriptor_FieldNumber_ValueType,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GAPILabelDescriptor__storage_, valueType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "description_p",
        .dataTypeSpecific.className = NULL,
        .number = GAPILabelDescriptor_FieldNumber_Description_p,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GAPILabelDescriptor__storage_, description_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPILabelDescriptor class]
                                     rootClass:[GAPILabelRoot class]
                                          file:GAPILabelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPILabelDescriptor__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GAPILabelDescriptor_ValueType_RawValue(GAPILabelDescriptor *message) {
  GPBDescriptor *descriptor = [GAPILabelDescriptor descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GAPILabelDescriptor_FieldNumber_ValueType];
  return GPBGetMessageInt32Field(message, field);
}

void SetGAPILabelDescriptor_ValueType_RawValue(GAPILabelDescriptor *message, int32_t value) {
  GPBDescriptor *descriptor = [GAPILabelDescriptor descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GAPILabelDescriptor_FieldNumber_ValueType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum GAPILabelDescriptor_ValueType

GPBEnumDescriptor *GAPILabelDescriptor_ValueType_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "String\000Bool\000Int64\000";
    static const int32_t values[] = {
        GAPILabelDescriptor_ValueType_String,
        GAPILabelDescriptor_ValueType_Bool,
        GAPILabelDescriptor_ValueType_Int64,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GAPILabelDescriptor_ValueType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GAPILabelDescriptor_ValueType_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GAPILabelDescriptor_ValueType_IsValidValue(int32_t value__) {
  switch (value__) {
    case GAPILabelDescriptor_ValueType_String:
    case GAPILabelDescriptor_ValueType_Bool:
    case GAPILabelDescriptor_ValueType_Int64:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
