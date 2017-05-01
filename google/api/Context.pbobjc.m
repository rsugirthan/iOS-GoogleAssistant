// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/context.proto

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

 #import "google/api/Context.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GAPIContextRoot

@implementation GAPIContextRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - GAPIContextRoot_FileDescriptor

static GPBFileDescriptor *GAPIContextRoot_FileDescriptor(void) {
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

#pragma mark - GAPIContext

@implementation GAPIContext

@dynamic rulesArray, rulesArray_Count;

typedef struct GAPIContext__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *rulesArray;
} GAPIContext__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "rulesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GAPIContextRule),
        .number = GAPIContext_FieldNumber_RulesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GAPIContext__storage_, rulesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPIContext class]
                                     rootClass:[GAPIContextRoot class]
                                          file:GAPIContextRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPIContext__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GAPIContextRule

@implementation GAPIContextRule

@dynamic selector;
@dynamic requestedArray, requestedArray_Count;
@dynamic providedArray, providedArray_Count;

typedef struct GAPIContextRule__storage_ {
  uint32_t _has_storage_[1];
  NSString *selector;
  NSMutableArray *requestedArray;
  NSMutableArray *providedArray;
} GAPIContextRule__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "selector",
        .dataTypeSpecific.className = NULL,
        .number = GAPIContextRule_FieldNumber_Selector,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GAPIContextRule__storage_, selector),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "requestedArray",
        .dataTypeSpecific.className = NULL,
        .number = GAPIContextRule_FieldNumber_RequestedArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GAPIContextRule__storage_, requestedArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "providedArray",
        .dataTypeSpecific.className = NULL,
        .number = GAPIContextRule_FieldNumber_ProvidedArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GAPIContextRule__storage_, providedArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPIContextRule class]
                                     rootClass:[GAPIContextRoot class]
                                          file:GAPIContextRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPIContextRule__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
