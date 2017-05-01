// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/metric.proto

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

@class GAPILabelDescriptor;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum GAPIMetricDescriptor_MetricKind

/** The kind of measurement. It describes how the data is reported. */
typedef GPB_ENUM(GAPIMetricDescriptor_MetricKind) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  GAPIMetricDescriptor_MetricKind_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** Do not use this default value. */
  GAPIMetricDescriptor_MetricKind_MetricKindUnspecified = 0,

  /** An instantaneous measurement of a value. */
  GAPIMetricDescriptor_MetricKind_Gauge = 1,

  /** The change in a value during a time interval. */
  GAPIMetricDescriptor_MetricKind_Delta = 2,

  /**
   * A value accumulated over a time interval.  Cumulative
   * measurements in a time series should have the same start time
   * and increasing end times, until an event resets the cumulative
   * value to zero and sets a new start time for the following
   * points.
   **/
  GAPIMetricDescriptor_MetricKind_Cumulative = 3,
};

GPBEnumDescriptor *GAPIMetricDescriptor_MetricKind_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL GAPIMetricDescriptor_MetricKind_IsValidValue(int32_t value);

#pragma mark - Enum GAPIMetricDescriptor_ValueType

/** The value type of a metric. */
typedef GPB_ENUM(GAPIMetricDescriptor_ValueType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  GAPIMetricDescriptor_ValueType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** Do not use this default value. */
  GAPIMetricDescriptor_ValueType_ValueTypeUnspecified = 0,

  /**
   * The value is a boolean.
   * This value type can be used only if the metric kind is `GAUGE`.
   **/
  GAPIMetricDescriptor_ValueType_Bool = 1,

  /** The value is a signed 64-bit integer. */
  GAPIMetricDescriptor_ValueType_Int64 = 2,

  /** The value is a double precision floating point number. */
  GAPIMetricDescriptor_ValueType_Double = 3,

  /**
   * The value is a text string.
   * This value type can be used only if the metric kind is `GAUGE`.
   **/
  GAPIMetricDescriptor_ValueType_String = 4,

  /** The value is a [`Distribution`][google.api.Distribution]. */
  GAPIMetricDescriptor_ValueType_Distribution = 5,

  /** The value is money. */
  GAPIMetricDescriptor_ValueType_Money = 6,
};

GPBEnumDescriptor *GAPIMetricDescriptor_ValueType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL GAPIMetricDescriptor_ValueType_IsValidValue(int32_t value);

#pragma mark - GAPIMetricRoot

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
@interface GAPIMetricRoot : GPBRootObject
@end

#pragma mark - GAPIMetricDescriptor

typedef GPB_ENUM(GAPIMetricDescriptor_FieldNumber) {
  GAPIMetricDescriptor_FieldNumber_Name = 1,
  GAPIMetricDescriptor_FieldNumber_LabelsArray = 2,
  GAPIMetricDescriptor_FieldNumber_MetricKind = 3,
  GAPIMetricDescriptor_FieldNumber_ValueType = 4,
  GAPIMetricDescriptor_FieldNumber_Unit = 5,
  GAPIMetricDescriptor_FieldNumber_Description_p = 6,
  GAPIMetricDescriptor_FieldNumber_DisplayName = 7,
  GAPIMetricDescriptor_FieldNumber_Type = 8,
};

/**
 * Defines a metric type and its schema. Once a metric descriptor is created,
 * deleting or altering it stops data collection and makes the metric type's
 * existing data unusable.
 **/
@interface GAPIMetricDescriptor : GPBMessage

/**
 * The resource name of the metric descriptor. Depending on the
 * implementation, the name typically includes: (1) the parent resource name
 * that defines the scope of the metric type or of its data; and (2) the
 * metric's URL-encoded type, which also appears in the `type` field of this
 * descriptor. For example, following is the resource name of a custom
 * metric within the GCP project `my-project-id`:
 *
 *     "projects/my-project-id/metricDescriptors/custom.googleapis.com%2Finvoice%2Fpaid%2Famount"
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/**
 * The metric type, including its DNS name prefix. The type is not
 * URL-encoded.  All user-defined custom metric types have the DNS name
 * `custom.googleapis.com`.  Metric types should use a natural hierarchical
 * grouping. For example:
 *
 *     "custom.googleapis.com/invoice/paid/amount"
 *     "appengine.googleapis.com/http/server/response_latencies"
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

/**
 * The set of labels that can be used to describe a specific
 * instance of this metric type. For example, the
 * `appengine.googleapis.com/http/server/response_latencies` metric
 * type has a label for the HTTP response code, `response_code`, so
 * you can look at latencies for successful responses or just
 * for responses that failed.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<GAPILabelDescriptor*> *labelsArray;
/** The number of items in @c labelsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger labelsArray_Count;

/**
 * Whether the metric records instantaneous values, changes to a value, etc.
 * Some combinations of `metric_kind` and `value_type` might not be supported.
 **/
@property(nonatomic, readwrite) GAPIMetricDescriptor_MetricKind metricKind;

/**
 * Whether the measurement is an integer, a floating-point number, etc.
 * Some combinations of `metric_kind` and `value_type` might not be supported.
 **/
@property(nonatomic, readwrite) GAPIMetricDescriptor_ValueType valueType;

/**
 * The unit in which the metric value is reported. It is only applicable
 * if the `value_type` is `INT64`, `DOUBLE`, or `DISTRIBUTION`. The
 * supported units are a subset of [The Unified Code for Units of
 * Measure](http://unitsofmeasure.org/ucum.html) standard:
 *
 * **Basic units (UNIT)**
 *
 * * `bit`   bit
 * * `By`    byte
 * * `s`     second
 * * `min`   minute
 * * `h`     hour
 * * `d`     day
 *
 * **Prefixes (PREFIX)**
 *
 * * `k`     kilo    (10**3)
 * * `M`     mega    (10**6)
 * * `G`     giga    (10**9)
 * * `T`     tera    (10**12)
 * * `P`     peta    (10**15)
 * * `E`     exa     (10**18)
 * * `Z`     zetta   (10**21)
 * * `Y`     yotta   (10**24)
 * * `m`     milli   (10**-3)
 * * `u`     micro   (10**-6)
 * * `n`     nano    (10**-9)
 * * `p`     pico    (10**-12)
 * * `f`     femto   (10**-15)
 * * `a`     atto    (10**-18)
 * * `z`     zepto   (10**-21)
 * * `y`     yocto   (10**-24)
 * * `Ki`    kibi    (2**10)
 * * `Mi`    mebi    (2**20)
 * * `Gi`    gibi    (2**30)
 * * `Ti`    tebi    (2**40)
 *
 * **Grammar**
 *
 * The grammar includes the dimensionless unit `1`, such as `1/s`.
 *
 * The grammar also includes these connectors:
 *
 * * `/`    division (as an infix operator, e.g. `1/s`).
 * * `.`    multiplication (as an infix operator, e.g. `GBy.d`)
 *
 * The grammar for a unit is as follows:
 *
 *     Expression = Component { "." Component } { "/" Component } ;
 *
 *     Component = [ PREFIX ] UNIT [ Annotation ]
 *               | Annotation
 *               | "1"
 *               ;
 *
 *     Annotation = "{" NAME "}" ;
 *
 * Notes:
 *
 * * `Annotation` is just a comment if it follows a `UNIT` and is
 *    equivalent to `1` if it is used alone. For examples,
 *    `{requests}/s == 1/s`, `By{transmitted}/s == By/s`.
 * * `NAME` is a sequence of non-blank printable ASCII characters not
 *    containing '{' or '}'.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *unit;

/** A detailed description of the metric, which can be used in documentation. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

/**
 * A concise name for the metric, which can be displayed in user interfaces.
 * Use sentence case without an ending period, for example "Request count".
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *displayName;

@end

/**
 * Fetches the raw value of a @c GAPIMetricDescriptor's @c metricKind property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t GAPIMetricDescriptor_MetricKind_RawValue(GAPIMetricDescriptor *message);
/**
 * Sets the raw value of an @c GAPIMetricDescriptor's @c metricKind property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetGAPIMetricDescriptor_MetricKind_RawValue(GAPIMetricDescriptor *message, int32_t value);

/**
 * Fetches the raw value of a @c GAPIMetricDescriptor's @c valueType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t GAPIMetricDescriptor_ValueType_RawValue(GAPIMetricDescriptor *message);
/**
 * Sets the raw value of an @c GAPIMetricDescriptor's @c valueType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetGAPIMetricDescriptor_ValueType_RawValue(GAPIMetricDescriptor *message, int32_t value);

#pragma mark - GAPIMetric

typedef GPB_ENUM(GAPIMetric_FieldNumber) {
  GAPIMetric_FieldNumber_Labels = 2,
  GAPIMetric_FieldNumber_Type = 3,
};

/**
 * A specific metric, identified by specifying values for all of the
 * labels of a [`MetricDescriptor`][google.api.MetricDescriptor].
 **/
@interface GAPIMetric : GPBMessage

/**
 * An existing metric type, see [google.api.MetricDescriptor][google.api.MetricDescriptor].
 * For example, `custom.googleapis.com/invoice/paid/amount`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

/**
 * The set of label values that uniquely identify this metric. All
 * labels listed in the `MetricDescriptor` must be assigned values.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, NSString*> *labels;
/** The number of items in @c labels without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger labels_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
