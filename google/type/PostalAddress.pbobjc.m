// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/type/postal_address.proto

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

 #import "google/type/PostalAddress.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GTPPostalAddressRoot

@implementation GTPPostalAddressRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - GTPPostalAddressRoot_FileDescriptor

static GPBFileDescriptor *GTPPostalAddressRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.type"
                                                 objcPrefix:@"GTP"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GTPPostalAddress

@implementation GTPPostalAddress

@dynamic revision;
@dynamic regionCode;
@dynamic languageCode;
@dynamic postalCode;
@dynamic sortingCode;
@dynamic administrativeArea;
@dynamic locality;
@dynamic sublocality;
@dynamic addressLinesArray, addressLinesArray_Count;
@dynamic recipientsArray, recipientsArray_Count;
@dynamic organization;

typedef struct GTPPostalAddress__storage_ {
  uint32_t _has_storage_[1];
  int32_t revision;
  NSString *regionCode;
  NSString *languageCode;
  NSString *postalCode;
  NSString *sortingCode;
  NSString *administrativeArea;
  NSString *locality;
  NSString *sublocality;
  NSMutableArray *addressLinesArray;
  NSMutableArray *recipientsArray;
  NSString *organization;
} GTPPostalAddress__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "revision",
        .dataTypeSpecific.className = NULL,
        .number = GTPPostalAddress_FieldNumber_Revision,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GTPPostalAddress__storage_, revision),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "regionCode",
        .dataTypeSpecific.className = NULL,
        .number = GTPPostalAddress_FieldNumber_RegionCode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GTPPostalAddress__storage_, regionCode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "languageCode",
        .dataTypeSpecific.className = NULL,
        .number = GTPPostalAddress_FieldNumber_LanguageCode,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GTPPostalAddress__storage_, languageCode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "postalCode",
        .dataTypeSpecific.className = NULL,
        .number = GTPPostalAddress_FieldNumber_PostalCode,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GTPPostalAddress__storage_, postalCode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "sortingCode",
        .dataTypeSpecific.className = NULL,
        .number = GTPPostalAddress_FieldNumber_SortingCode,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GTPPostalAddress__storage_, sortingCode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "administrativeArea",
        .dataTypeSpecific.className = NULL,
        .number = GTPPostalAddress_FieldNumber_AdministrativeArea,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GTPPostalAddress__storage_, administrativeArea),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "locality",
        .dataTypeSpecific.className = NULL,
        .number = GTPPostalAddress_FieldNumber_Locality,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(GTPPostalAddress__storage_, locality),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "sublocality",
        .dataTypeSpecific.className = NULL,
        .number = GTPPostalAddress_FieldNumber_Sublocality,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(GTPPostalAddress__storage_, sublocality),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "addressLinesArray",
        .dataTypeSpecific.className = NULL,
        .number = GTPPostalAddress_FieldNumber_AddressLinesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GTPPostalAddress__storage_, addressLinesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "recipientsArray",
        .dataTypeSpecific.className = NULL,
        .number = GTPPostalAddress_FieldNumber_RecipientsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GTPPostalAddress__storage_, recipientsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "organization",
        .dataTypeSpecific.className = NULL,
        .number = GTPPostalAddress_FieldNumber_Organization,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(GTPPostalAddress__storage_, organization),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GTPPostalAddress class]
                                     rootClass:[GTPPostalAddressRoot class]
                                          file:GTPPostalAddressRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GTPPostalAddress__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
