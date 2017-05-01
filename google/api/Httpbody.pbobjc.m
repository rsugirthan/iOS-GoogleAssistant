// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/httpbody.proto

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

 #import "google/api/Httpbody.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GAPIHttpbodyRoot

@implementation GAPIHttpbodyRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - GAPIHttpbodyRoot_FileDescriptor

static GPBFileDescriptor *GAPIHttpbodyRoot_FileDescriptor(void) {
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

#pragma mark - GAPIHttpBody

@implementation GAPIHttpBody

@dynamic contentType;
@dynamic data_p;

typedef struct GAPIHttpBody__storage_ {
  uint32_t _has_storage_[1];
  NSString *contentType;
  NSData *data_p;
} GAPIHttpBody__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "contentType",
        .dataTypeSpecific.className = NULL,
        .number = GAPIHttpBody_FieldNumber_ContentType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GAPIHttpBody__storage_, contentType),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "data_p",
        .dataTypeSpecific.className = NULL,
        .number = GAPIHttpBody_FieldNumber_Data_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GAPIHttpBody__storage_, data_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GAPIHttpBody class]
                                     rootClass:[GAPIHttpbodyRoot class]
                                          file:GAPIHttpbodyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GAPIHttpBody__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
