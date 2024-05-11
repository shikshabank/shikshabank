.class public Lgnu/xquery/lang/XQuery;
.super Lgnu/expr/Language;
.source "XQuery.java"


# static fields
.field public static final DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

.field public static final DEFAULT_FUNCTION_PREFIX:Ljava/lang/String; = "(functions)"

.field public static final KAWA_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://kawa.gnu.org/"

.field public static final LOCAL_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/xquery-local-functions"

.field public static final PARSE_WITH_FOCUS:I = 0x10000

.field public static final QEXO_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://qexo.gnu.org/"

.field public static final SCHEMA_INSTANCE_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field public static final SCHEMA_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final VARIADIC_FUNCTION_NAMESPACE:I = -0x2

.field public static final XHTML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"

.field public static final XQUERY_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions"

.field static charIsInt:Z

.field public static final defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

.field static envCounter:I

.field public static extensionsEnvEnv:Lgnu/mapping/Environment;

.field public static falseExp:Lgnu/expr/QuoteExp;

.field public static final falseFunction:Lgnu/kawa/functions/ConstantFunction0;

.field public static final instance:Lgnu/xquery/lang/XQuery;

.field public static final kawaFunctionNamespace:Lgnu/mapping/Namespace;

.field public static final qexoFunctionNamespace:Lgnu/mapping/Namespace;

.field public static trueExp:Lgnu/expr/QuoteExp;

.field public static final trueFunction:Lgnu/kawa/functions/ConstantFunction0;

.field static typeMap:[Ljava/lang/Object;

.field public static final xqEnvironment:Lgnu/mapping/Environment;

.field public static final xqueryFunctionNamespace:Lgnu/mapping/Namespace;


# instance fields
.field defaultNamespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 41
    const-string v0, "http://www.w3.org/2005/xpath-functions"

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    .line 43
    const-string v2, "http://kawa.gnu.org/"

    invoke-static {v2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v3

    sput-object v3, Lgnu/xquery/lang/XQuery;->kawaFunctionNamespace:Lgnu/mapping/Namespace;

    .line 45
    const-string v4, "http://qexo.gnu.org/"

    invoke-static {v4}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v4

    sput-object v4, Lgnu/xquery/lang/XQuery;->qexoFunctionNamespace:Lgnu/mapping/Namespace;

    .line 47
    const/4 v5, 0x4

    new-array v6, v5, [Lgnu/mapping/Namespace;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v1, v6, v4

    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const/4 v8, 0x2

    aput-object v1, v6, v8

    const/4 v1, 0x3

    aput-object v3, v6, v1

    sput-object v6, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    .line 52
    sput-boolean v7, Lgnu/xquery/lang/XQuery;->charIsInt:Z

    .line 55
    const/4 v3, 0x0

    sput-object v3, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    .line 279
    sput v7, Lgnu/xquery/lang/XQuery;->envCounter:I

    .line 282
    invoke-static {v2}, Lgnu/mapping/Environment;->getInstance(Ljava/lang/String;)Lgnu/mapping/Environment;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQuery;->extensionsEnvEnv:Lgnu/mapping/Environment;

    .line 553
    invoke-static {v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    .line 558
    new-instance v0, Lgnu/xquery/lang/XQuery;

    invoke-direct {v0}, Lgnu/xquery/lang/XQuery;-><init>()V

    sput-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    .line 559
    invoke-direct {v0}, Lgnu/xquery/lang/XQuery;->initXQuery()V

    .line 763
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-direct {v0, v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    .line 765
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-direct {v0, v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    .line 768
    new-instance v0, Lgnu/kawa/functions/ConstantFunction0;

    sget-object v2, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    const-string v3, "false"

    invoke-direct {v0, v3, v2}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->falseFunction:Lgnu/kawa/functions/ConstantFunction0;

    .line 770
    new-instance v0, Lgnu/kawa/functions/ConstantFunction0;

    sget-object v2, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    const-string v3, "true"

    invoke-direct {v0, v3, v2}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->trueFunction:Lgnu/kawa/functions/ConstantFunction0;

    .line 778
    const/16 v0, 0x60

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "string"

    aput-object v2, v0, v7

    sget-object v2, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v4

    const-string v2, "untypedAtomic"

    aput-object v2, v0, v8

    sget-object v2, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const-string v1, "boolean"

    aput-object v1, v0, v5

    sget-object v1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const-string v2, "integer"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    const-string v2, "long"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->longType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0xa

    const-string v2, "int"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->intType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0xc

    const-string v2, "short"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->shortType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0xe

    const-string v2, "byte"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->byteType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v1, 0x10

    const-string v2, "unsignedLong"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->unsignedLongType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x12

    const-string v2, "unsignedInt"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->unsignedIntType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v1, 0x14

    const-string v2, "unsignedShort"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->unsignedShortType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v1, 0x16

    const-string v2, "unsignedByte"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->unsignedByteType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v1, 0x18

    const-string v2, "positiveInteger"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->positiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const/16 v1, 0x1a

    const-string v2, "nonPositiveInteger"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const/16 v1, 0x1c

    const-string v2, "negativeInteger"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->negativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const/16 v1, 0x1e

    const-string v2, "nonNegativeInteger"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const/16 v1, 0x20

    const-string v2, "date"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const/16 v1, 0x22

    const-string v2, "dateTime"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const/16 v1, 0x24

    const-string v2, "time"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const/16 v1, 0x26

    const-string v2, "duration"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->durationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const/16 v1, 0x28

    const-string v2, "yearMonthDuration"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->yearMonthDurationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const/16 v1, 0x2a

    const-string v2, "dayTimeDuration"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->dayTimeDurationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const/16 v1, 0x2c

    const-string v2, "gYearMonth"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->gYearMonthType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const/16 v1, 0x2e

    const-string v2, "gYear"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->gYearType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const/16 v1, 0x30

    const-string v2, "gMonthDay"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->gMonthDayType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const/16 v1, 0x32

    const-string v2, "gDay"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->gDayType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const/16 v1, 0x34

    const-string v2, "gMonth"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XTimeType;->gMonthType:Lgnu/kawa/xml/XTimeType;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const/16 v1, 0x36

    const-string v2, "decimal"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const/16 v1, 0x38

    const-string v2, "float"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const/16 v1, 0x3a

    const-string v2, "double"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const/16 v1, 0x3c

    const-string v2, "anyURI"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const/16 v1, 0x3e

    const-string v2, "hexBinary"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->hexBinaryType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const/16 v1, 0x40

    const-string v2, "base64Binary"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->base64BinaryType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const/16 v1, 0x42

    const-string v2, "NOTATION"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const/16 v1, 0x44

    const-string v2, "QName"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "gnu.mapping.Symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "normalizedString"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const/16 v1, 0x48

    const-string v2, "token"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const/16 v1, 0x4a

    const-string v2, "language"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->languageType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const/16 v1, 0x4c

    const-string v2, "NMTOKEN"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->NMTOKENType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const/16 v1, 0x4e

    const-string v2, "Name"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->NameType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const/16 v1, 0x50

    const-string v2, "NCName"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const/16 v1, 0x52

    const-string v2, "ID"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->IDType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const/16 v1, 0x54

    const-string v2, "IDREF"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->IDREFType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const/16 v1, 0x56

    const-string v2, "ENTITY"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XStringType;->ENTITYType:Lgnu/kawa/xml/XStringType;

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const/16 v1, 0x58

    const-string v2, "anyAtomicType"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const/16 v1, 0x5a

    const-string v2, "anySimpleType"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const/16 v1, 0x5c

    const-string v2, "untyped"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const/16 v1, 0x5e

    const-string v2, "anyType"

    aput-object v2, v0, v1

    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    sput-object v0, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 562
    invoke-direct {p0}, Lgnu/expr/Language;-><init>()V

    .line 563
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    .line 564
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    .line 565
    return-void
.end method

.method public static asChar(Ljava/lang/Object;)C
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;

    .line 75
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_c

    .line 76
    move-object v0, p0

    check-cast v0, Lgnu/text/Char;

    invoke-virtual {v0}, Lgnu/text/Char;->charValue()C

    move-result v0

    return v0

    .line 78
    :cond_c
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_18

    .line 79
    move-object v0, p0

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0}, Lgnu/math/Numeric;->intValue()I

    move-result v0

    .local v0, "i":I
    goto :goto_19

    .line 81
    .end local v0    # "i":I
    :cond_18
    const/4 v0, -0x1

    .line 82
    .restart local v0    # "i":I
    :goto_19
    if-ltz v0, :cond_22

    const v1, 0xffff

    if-gt v0, v1, :cond_22

    .line 84
    int-to-char v1, v0

    return v1

    .line 83
    :cond_22
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "not a character value"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static asNumber(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 68
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_10

    .line 69
    move-object v0, p0

    check-cast v0, Lgnu/text/Char;

    invoke-virtual {v0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 70
    :cond_10
    move-object v0, p0

    check-cast v0, Lgnu/math/Numeric;

    return-object v0
.end method

.method public static getExternal(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "name"    # Lgnu/mapping/Symbol;
    .param p1, "type"    # Ljava/lang/Object;

    .line 997
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 998
    .local v0, "env":Lgnu/mapping/Environment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 999
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_1b

    .line 1000
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1003
    :cond_1b
    if-eqz v2, :cond_76

    .line 1005
    if-nez p1, :cond_20

    .line 1006
    return-object v2

    .line 1007
    :cond_20
    instance-of v1, p1, Lgnu/kawa/xml/XDataType;

    if-eqz v1, :cond_2c

    .line 1008
    move-object v1, p1

    check-cast v1, Lgnu/kawa/xml/XDataType;

    invoke-virtual {v1, v2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1009
    :cond_2c
    instance-of v1, p1, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_5d

    .line 1011
    move-object v1, p1

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, "cname":Ljava/lang/String;
    const-string v3, "gnu.math.IntNum"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1014
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3

    .line 1015
    :cond_48
    const-string v3, "gnu.math.RealNum"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1016
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v3

    return-object v3

    .line 1020
    .end local v1    # "cname":Ljava/lang/String;
    :cond_5d
    :try_start_5d
    move-object v1, p1

    check-cast v1, Lgnu/bytecode/Type;

    invoke-virtual {v1, v2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_64
    .catch Ljava/lang/ClassCastException; {:try_start_5d .. :try_end_64} :catch_66

    .line 1028
    .end local v2    # "value":Ljava/lang/Object;
    .local v1, "value":Ljava/lang/Object;
    nop

    .line 1029
    return-object v1

    .line 1022
    .end local v1    # "value":Ljava/lang/Object;
    .restart local v2    # "value":Ljava/lang/Object;
    :catch_66
    move-exception v1

    .line 1024
    .local v1, "ex":Ljava/lang/ClassCastException;
    new-instance v3, Lgnu/mapping/WrongType;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 1004
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :cond_76
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbound external "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lgnu/xquery/lang/XQuery;
    .registers 1

    .line 753
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    return-object v0
.end method

.method public static getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 831
    sget-object v0, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    array-length v0, v0

    .local v0, "i":I
    :cond_3
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_27

    .line 833
    sget-object v1, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 835
    sget-object v1, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 836
    .local v1, "t":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 837
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    return-object v2

    .line 839
    :cond_23
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/Type;

    return-object v2

    .line 842
    .end local v0    # "i":I
    .end local v1    # "t":Ljava/lang/Object;
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method private initXQuery()V
    .registers 7

    .line 569
    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    .line 571
    const-string v0, "unescaped-data"

    const-string v1, "gnu.kawa.xml.MakeUnescapedData"

    const-string v2, "unescapedData"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v0, "item-at"

    const-string v1, "gnu.xquery.util.ItemAt"

    const-string v2, "itemAt"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v0, "count"

    const-string v1, "gnu.kawa.functions.CountValues"

    const-string v2, "countValues"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v0, "sum"

    const-string v1, "gnu.xquery.util.Reduce"

    invoke-virtual {p0, v0, v1, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v0, "avg"

    const-string v1, "gnu.xquery.util.Average"

    invoke-virtual {p0, v0, v1, v0}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v0, "sublist"

    const-string v1, "gnu.xquery.util.SubList"

    const-string v2, "subList"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v0, "subsequence"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v0, "empty"

    const-string v1, "gnu.xquery.util.SequenceUtils"

    const-string v2, "isEmptySequence"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v0, "exists"

    invoke-virtual {p0, v0, v1, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v0, "insert-before"

    const-string v2, "insertBefore$X"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "remove"

    const-string v2, "remove$X"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "reverse"

    const-string v2, "reverse$X"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "false"

    const-string v2, "gnu.xquery.lang.XQuery"

    const-string v3, "falseFunction"

    invoke-virtual {p0, v0, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "true"

    const-string v3, "trueFunction"

    invoke-virtual {p0, v0, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v0, "boolean"

    const-string v2, "gnu.xquery.util.BooleanValue"

    const-string v3, "booleanValue"

    invoke-virtual {p0, v0, v2, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v0, "trace"

    const-string v3, "gnu.xquery.util.Debug"

    invoke-virtual {p0, v0, v3, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v0, "error"

    const-string v3, "gnu.xquery.util.XQException"

    invoke-virtual {p0, v0, v3, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "write-to"

    const-string v3, "gnu.kawa.xml.WriteTo"

    const-string v4, "writeTo"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v0, "write-to-if-changed"

    const-string v4, "writeToIfChanged"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v0, "iterator-items"

    const-string v3, "gnu.kawa.xml.IteratorItems"

    const-string v4, "iteratorItems"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v0, "list-items"

    const-string v3, "gnu.kawa.xml.ListItems"

    const-string v4, "listItems"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "node-name"

    const-string v3, "gnu.xquery.util.NodeUtils"

    const-string v4, "nodeName"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "nilled"

    invoke-virtual {p0, v0, v3, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v0, "data"

    const-string v4, "data$X"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v0, "lower-case"

    const-string v4, "gnu.xquery.util.StringUtils"

    const-string v5, "lowerCase"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "upper-case"

    const-string v5, "upperCase"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v0, "substring"

    invoke-virtual {p0, v0, v4, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v0, "string-length"

    const-string v5, "stringLength"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v0, "substring-before"

    const-string v5, "substringBefore"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v0, "substring-after"

    const-string v5, "substringAfter"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v0, "translate"

    invoke-virtual {p0, v0, v4, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v0, "encode-for-uri"

    const-string v5, "encodeForUri"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v0, "iri-to-uri"

    const-string v5, "iriToUri"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "escape-html-uri"

    const-string v5, "escapeHtmlUri"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v0, "contains"

    invoke-virtual {p0, v0, v4, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "starts-with"

    const-string v5, "startsWith"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v0, "ends-with"

    const-string v5, "endsWith"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "codepoint-equal"

    const-string v5, "codepointEqual"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v0, "normalize-unicode"

    const-string v5, "normalizeUnicode"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v0, "string-join"

    const-string v5, "stringJoin"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v0, "concat"

    const-string v5, "concat$V"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v0, "matches"

    invoke-virtual {p0, v0, v4, v0}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v0, "replace"

    const-string v5, "replace"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "tokenize"

    const-string v5, "tokenize$X"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v0, "string-to-codepoints"

    const-string v5, "stringToCodepoints$X"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v0, "codepoints-to-string"

    const-string v5, "codepointsToString"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v0, "abs"

    const-string v4, "gnu.xquery.util.NumberValue"

    const-string v5, "abs"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v0, "floor"

    const-string v5, "floor"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v0, "ceiling"

    const-string v5, "ceiling"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v0, "round"

    const-string v5, "round"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v0, "round-half-to-even"

    const-string v5, "roundHalfToEven"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v0, "QName"

    const-string v4, "gnu.xquery.util.QNameUtils"

    const-string v5, "makeQName"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "resolve-QName"

    const-string v5, "resolveQNameUsingElement"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v0, "prefix-from-QName"

    const-string v5, "prefixFromQName"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v0, "local-name-from-QName"

    const-string v5, "localNameFromQName"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v0, "namespace-uri-from-QName"

    const-string v5, "namespaceURIFromQName"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v0, "namespace-uri-for-prefix"

    const-string v5, "namespaceURIForPrefix"

    invoke-virtual {p0, v0, v4, v5}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v0, "in-scope-prefixes"

    const-string v4, "inScopePrefixes$X"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v0, "document-uri"

    const-string v4, "documentUri"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "years-from-duration"

    const-string v3, "gnu.xquery.util.TimeUtils"

    const-string v4, "yearsFromDuration"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v0, "months-from-duration"

    const-string v4, "monthsFromDuration"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "days-from-duration"

    const-string v4, "daysFromDuration"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "hours-from-duration"

    const-string v4, "hoursFromDuration"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v0, "minutes-from-duration"

    const-string v4, "minutesFromDuration"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, "seconds-from-duration"

    const-string v4, "secondsFromDuration"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v0, "year-from-dateTime"

    const-string v4, "yearFromDateTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v0, "month-from-dateTime"

    const-string v4, "monthFromDateTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v0, "day-from-dateTime"

    const-string v4, "dayFromDateTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v0, "hours-from-dateTime"

    const-string v4, "hoursFromDateTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v0, "minutes-from-dateTime"

    const-string v4, "minutesFromDateTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v0, "seconds-from-dateTime"

    const-string v4, "secondsFromDateTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v0, "timezone-from-dateTime"

    const-string v4, "timezoneFromDateTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, "year-from-date"

    const-string v4, "yearFromDate"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v0, "month-from-date"

    const-string v4, "monthFromDate"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "day-from-date"

    const-string v4, "dayFromDate"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v0, "timezone-from-date"

    const-string v4, "timezoneFromDate"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v0, "hours-from-time"

    const-string v4, "hoursFromTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v0, "minutes-from-time"

    const-string v4, "minutesFromTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v0, "seconds-from-time"

    const-string v4, "secondsFromTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v0, "timezone-from-time"

    const-string v4, "timezoneFromTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v0, "adjust-dateTime-to-timezone"

    const-string v4, "adjustDateTimeToTimezone"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v0, "adjust-date-to-timezone"

    const-string v4, "adjustDateToTimezone"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v0, "adjust-time-to-timezone"

    const-string v4, "adjustTimeToTimezone"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v0, "dateTime"

    const-string v4, "dateTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v0, "current-dateTime"

    const-string v4, "currentDateTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v0, "current-date"

    const-string v4, "currentDate"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v0, "current-time"

    const-string v4, "currentTime"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v0, "implicit-timezone"

    const-string v4, "implicitTimezone"

    invoke-virtual {p0, v0, v3, v4}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v0, "zero-or-one"

    const-string v3, "zeroOrOne"

    invoke-virtual {p0, v0, v1, v3}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v0, "one-or-more"

    const-string v3, "oneOrMore"

    invoke-virtual {p0, v0, v1, v3}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v0, "exactly-one"

    const-string v3, "exactlyOne"

    invoke-virtual {p0, v0, v1, v3}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v0, "distinct-nodes"

    const-string v1, "gnu.kawa.xml.SortNodes"

    const-string v3, "sortNodes"

    invoke-virtual {p0, v0, v1, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v0, "children"

    const-string v1, "gnu.kawa.xml.Children"

    const-string v3, "children"

    invoke-virtual {p0, v0, v1, v3}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v0, "not"

    const-string v1, "not"

    invoke-virtual {p0, v0, v2, v1}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    sget-object v0, Lgnu/xquery/lang/XQuery;->qexoFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    .line 729
    const-string v0, "response-header"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v0, "response-content-type"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v0, "response-status"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v0, "error-response"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v0, "current-servlet"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v0, "current-servlet-context"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v0, "current-servlet-config"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v0, "servlet-context-realpath"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v0, "get-response"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v0, "get-request"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v0, "request-method"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v0, "request-uri"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v0, "request-url"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v0, "request-path-info"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "request-path-translated"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v0, "request-servlet-path"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v0, "request-query-string"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v0, "request-parameter"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "request-parameters"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    .line 749
    return-void
.end method

.method public static makeClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # Ljava/lang/String;

    .line 985
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 986
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 987
    .local v0, "sl":I
    if-ltz v0, :cond_14

    .line 988
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 989
    :cond_14
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 990
    .local v1, "dot":I
    if-ltz v1, :cond_21

    .line 991
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 992
    :cond_21
    invoke-static {p0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static mangle(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 978
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 979
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x55

    invoke-static {p0, v2, v1, v0, v3}, Lgnu/xquery/lang/XQuery;->mangle(Ljava/lang/String;IILjava/lang/StringBuffer;C)V

    .line 980
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static mangle(Ljava/lang/String;IILjava/lang/StringBuffer;C)V
    .registers 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "mode"    # C

    .line 928
    const/16 v0, 0x50

    .line 929
    .local v0, "prev":C
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 930
    .local v1, "outStart":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, p2, :cond_8f

    .line 933
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 934
    .local v3, "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 935
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    const/16 v5, 0x55

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_30

    .line 937
    if-ne v0, v5, :cond_2b

    if-ge v2, p2, :cond_2c

    add-int v4, p1, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_2c

    :cond_2b
    const/4 v6, 0x1

    :cond_2c
    move v4, v6

    .line 940
    .local v4, "wordStart":Z
    const/16 v0, 0x55

    goto :goto_6f

    .line 942
    .end local v4    # "wordStart":Z
    :cond_30
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 944
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_3c

    if-eq v0, v5, :cond_3d

    :cond_3c
    const/4 v6, 0x1

    :cond_3d
    move v4, v6

    .line 945
    .restart local v4    # "wordStart":Z
    const/16 v0, 0x4c

    goto :goto_6f

    .line 947
    .end local v4    # "wordStart":Z
    :cond_41
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 949
    const/16 v4, 0x4f

    if-eq v0, v4, :cond_4c

    const/4 v6, 0x1

    :cond_4c
    move v4, v6

    .line 950
    .restart local v4    # "wordStart":Z
    const/16 v0, 0x4f

    goto :goto_6f

    .line 952
    .end local v4    # "wordStart":Z
    :cond_50
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    const/16 v5, 0x44

    if-eqz v4, :cond_5f

    .line 954
    if-eq v0, v5, :cond_5b

    const/4 v6, 0x1

    :cond_5b
    move v4, v6

    .line 955
    .restart local v4    # "wordStart":Z
    const/16 v0, 0x44

    goto :goto_6f

    .line 957
    .end local v4    # "wordStart":Z
    :cond_5f
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 959
    if-eq v0, v5, :cond_6c

    const/16 v4, 0x4d

    if-eq v0, v4, :cond_6c

    const/4 v6, 0x1

    :cond_6c
    move v4, v6

    .line 960
    .restart local v4    # "wordStart":Z
    const/16 v0, 0x4d

    .line 967
    :goto_6f
    const/16 v5, 0x5f

    if-nez v4, :cond_75

    if-ne p4, v5, :cond_86

    .line 969
    :cond_75
    if-eqz v4, :cond_82

    if-ne p4, v5, :cond_82

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v1, :cond_82

    .line 970
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 971
    :cond_82
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 973
    :cond_86
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 974
    .end local v3    # "ch":C
    .end local v4    # "wordStart":Z
    goto/16 :goto_7

    .line 964
    .restart local v3    # "ch":C
    :cond_8b
    const/16 v0, 0x50

    .line 965
    goto/16 :goto_7

    .line 975
    .end local v2    # "i":I
    .end local v3    # "ch":C
    :cond_8f
    return-void
.end method

.method public static namespaceForFunctions(I)I
    .registers 2
    .param p0, "argCount"    # I

    .line 202
    shl-int/lit8 v0, p0, 0x2

    or-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static registerEnvironment()V
    .registers 1

    .line 759
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ApplicationMainSupport;->processCommandLinePropertyAssignments:Z

    .line 760
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 761
    return-void
.end method


# virtual methods
.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "values"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 373
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 374
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 377
    .local v1, "oldIndex":I
    :try_start_8
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 378
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    return-object v2

    .line 380
    :catchall_10
    move-exception v2

    .line 382
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 383
    throw v2
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 9
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "position"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 324
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 325
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 328
    .local v1, "oldIndex":I
    :try_start_8
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {p1, p2, v2, v3, v0}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 329
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    return-object v2

    .line 331
    :catchall_18
    move-exception v2

    .line 333
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 334
    throw v2
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;IILgnu/lists/Consumer;)V
    .registers 9
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "position"    # I
    .param p4, "size"    # I
    .param p5, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 298
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 299
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2, v0}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 300
    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 303
    .local v1, "save":Lgnu/lists/Consumer;
    :try_start_11
    iput-object p5, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 304
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 308
    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 309
    nop

    .line 310
    return-void

    .line 308
    :catchall_1a
    move-exception v2

    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw v2
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .registers 7
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "values"    # Ljava/lang/Object;
    .param p3, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 349
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 350
    .local v0, "ctx":Lgnu/mapping/CallContext;
    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 353
    .local v1, "save":Lgnu/lists/Consumer;
    :try_start_6
    iput-object p3, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 354
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 358
    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 359
    nop

    .line 360
    return-void

    .line 358
    :catchall_f
    move-exception v2

    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw v2
.end method

.method public applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 11
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "values"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 400
    instance-of v0, p2, Lgnu/mapping/Values;

    if-eqz v0, :cond_2d

    .line 402
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Values;

    .line 403
    .local v0, "v":Lgnu/mapping/Values;
    invoke-virtual {v0}, Lgnu/mapping/Values;->size()I

    move-result v1

    .line 404
    .local v1, "count":I
    if-nez v1, :cond_e

    .line 405
    return-void

    .line 406
    :cond_e
    const/4 v2, 0x0

    .line 407
    .local v2, "ipos":I
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    .line 408
    .local v3, "size":Lgnu/math/IntNum;
    const/4 v4, 0x1

    .line 410
    .local v4, "i":I
    :goto_14
    invoke-virtual {v0, v2}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v3, p3}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 411
    invoke-virtual {p3}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 412
    if-ne v4, v1, :cond_26

    .line 413
    nop

    .line 416
    .end local v0    # "v":Lgnu/mapping/Values;
    .end local v1    # "count":I
    .end local v2    # "ipos":I
    .end local v3    # "size":Lgnu/math/IntNum;
    .end local v4    # "i":I
    goto :goto_37

    .line 414
    .restart local v0    # "v":Lgnu/mapping/Values;
    .restart local v1    # "count":I
    .restart local v2    # "ipos":I
    .restart local v3    # "size":Lgnu/math/IntNum;
    .restart local v4    # "i":I
    :cond_26
    invoke-virtual {v0, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v2

    .line 408
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 419
    .end local v0    # "v":Lgnu/mapping/Values;
    .end local v1    # "count":I
    .end local v2    # "ipos":I
    .end local v3    # "size":Lgnu/math/IntNum;
    .end local v4    # "i":I
    :cond_2d
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    .line 420
    .local v0, "one":Lgnu/math/IntNum;
    invoke-virtual {p1, p2, v0, v0, p3}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 421
    invoke-virtual {p3}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 423
    .end local v0    # "one":Lgnu/math/IntNum;
    :goto_37
    return-void
.end method

.method public define(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 259
    .local v0, "sym":Lgnu/mapping/Symbol;
    instance-of v1, p2, Lgnu/mapping/Procedure;

    if-eqz v1, :cond_d

    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 260
    .local v1, "prop":Ljava/lang/Object;
    :goto_e
    iget-object v2, p0, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v2, v0, v1, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method protected define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cname"    # Ljava/lang/String;
    .param p3, "mname"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 268
    .local v0, "sym":Lgnu/mapping/Symbol;
    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 269
    .local v1, "ctype":Lgnu/bytecode/ClassType;
    const/4 v2, 0x0

    invoke-static {v1, p3, v2, p0}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v2

    .line 270
    .local v2, "proc":Lgnu/mapping/Procedure;
    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->setSymbol(Ljava/lang/Object;)V

    .line 271
    iget-object v3, p0, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    sget-object v4, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v3, v0, v4, v2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;
    .registers 9
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 452
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lgnu/mapping/InPort;

    goto :goto_d

    :cond_8
    new-instance v0, Lgnu/mapping/InPort;

    invoke-direct {v0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    .line 453
    .local v0, "port":Lgnu/mapping/InPort;
    :goto_d
    const v1, 0x10001

    invoke-virtual {p0, v0, p2, v1}, Lgnu/xquery/lang/XQuery;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object v1

    .line 454
    .local v1, "comp":Lgnu/expr/Compilation;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v2

    .line 455
    .local v2, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {v2}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v3

    .line 458
    .local v3, "oldIndex":I
    :try_start_1c
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v1, v5, v5}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    .line 459
    invoke-virtual {v2, v3}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/Procedure;
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2b

    return-object v4

    .line 461
    :catchall_2b
    move-exception v4

    .line 463
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-virtual {v2, v3}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 464
    throw v4
.end method

.method public evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;
    .registers 7
    .param p1, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 434
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 435
    .local v0, "messages":Lgnu/text/SourceMessages;
    new-instance v1, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v1, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object v1

    .line 436
    .local v1, "proc":Lgnu/mapping/Procedure;
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v2

    if-nez v2, :cond_15

    .line 439
    return-object v1

    .line 437
    :cond_15
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid syntax in eval form:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public evalWithFocus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalWithFocus(Ljava/lang/String;Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 6
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "position"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 505
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalWithFocus(Ljava/io/Reader;Lgnu/text/SourceMessages;Ljava/lang/Object;IILgnu/lists/Consumer;)V
    .registers 13
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "item"    # Ljava/lang/Object;
    .param p4, "position"    # I
    .param p5, "size"    # I
    .param p6, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 521
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;IILgnu/lists/Consumer;)V

    .line 522
    return-void
.end method

.method public evalWithFocus(Ljava/io/Reader;Lgnu/text/SourceMessages;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .registers 6
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "values"    # Ljava/lang/Object;
    .param p4, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 479
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 480
    return-void
.end method

.method public eval_with_focus$X(Ljava/lang/String;Ljava/lang/Object;IILgnu/mapping/CallContext;)V
    .registers 9
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "position"    # I
    .param p4, "size"    # I
    .param p5, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 549
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v0

    .line 550
    .local v0, "proc":Lgnu/mapping/Procedure;
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2, p5}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 551
    return-void
.end method

.method public eval_with_focus$X(Ljava/lang/String;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 5
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 535
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 536
    return-void
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 856
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "tname":Ljava/lang/String;
    const-string v1, "gnu.math.IntNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 858
    const-string v1, "xs:integer"

    return-object v1

    .line 859
    :cond_f
    const-string v1, "java.lang.String"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "java.lang.CharSequence"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_25

    .line 862
    :cond_20
    invoke-virtual {p1}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 861
    :cond_25
    :goto_25
    const-string v1, "xs:string"

    return-object v1
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .registers 5
    .param p1, "lexer"    # Lgnu/text/Lexer;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "lexical"    # Lgnu/expr/NameLookup;

    .line 99
    new-instance v0, Lgnu/expr/Compilation;

    invoke-direct {v0, p0, p2, p3}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    return-object v0
.end method

.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .registers 4
    .param p1, "inp"    # Lgnu/mapping/InPort;
    .param p2, "messages"    # Lgnu/text/SourceMessages;

    .line 94
    new-instance v0, Lgnu/xquery/lang/XQParser;

    invoke-direct {v0, p1, p2, p0}, Lgnu/xquery/lang/XQParser;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 276
    const-string v0, "XQuery"

    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .registers 8
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 210
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 212
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getCode()I

    move-result v0

    const/4 v1, -0x2

    if-gez v0, :cond_e

    .line 213
    return v1

    .line 214
    :cond_e
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 215
    .local v0, "value":Lgnu/expr/Expression;
    instance-of v2, v0, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_27

    .line 217
    move-object v2, v0

    check-cast v2, Lgnu/expr/LambdaExp;

    .line 218
    .local v2, "lexp":Lgnu/expr/LambdaExp;
    iget v3, v2, Lgnu/expr/LambdaExp;->min_args:I

    iget v4, v2, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v3, v4, :cond_26

    .line 219
    iget v1, v2, Lgnu/expr/LambdaExp;->min_args:I

    invoke-static {v1}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result v1

    return v1

    .line 220
    .end local v2    # "lexp":Lgnu/expr/LambdaExp;
    :cond_26
    goto :goto_59

    .line 221
    :cond_27
    instance-of v2, v0, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_49

    .line 223
    move-object v2, v0

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 224
    .local v2, "val":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_48

    .line 226
    move-object v3, v2

    check-cast v3, Lgnu/mapping/Procedure;

    .line 227
    .local v3, "proc":Lgnu/mapping/Procedure;
    invoke-virtual {v3}, Lgnu/mapping/Procedure;->minArgs()I

    move-result v4

    .line 228
    .local v4, "min":I
    invoke-virtual {v3}, Lgnu/mapping/Procedure;->maxArgs()I

    move-result v5

    .line 229
    .local v5, "max":I
    if-ne v4, v5, :cond_48

    .line 230
    invoke-static {v4}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result v1

    return v1

    .line 232
    .end local v2    # "val":Ljava/lang/Object;
    .end local v3    # "proc":Lgnu/mapping/Procedure;
    .end local v4    # "min":I
    .end local v5    # "max":I
    :cond_48
    goto :goto_59

    .line 233
    :cond_49
    instance-of v2, v0, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_59

    .line 234
    move-object v1, v0

    check-cast v1, Lgnu/expr/ReferenceExp;

    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v1

    return v1

    .line 236
    :cond_59
    :goto_59
    return v1

    .line 238
    .end local v0    # "value":Lgnu/expr/Expression;
    :cond_5a
    const/4 v0, 0x1

    return v0
.end method

.method public getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;

    .line 775
    new-instance v0, Lgnu/xml/XMLPrinter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;Z)V

    return-object v0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .registers 2

    .line 899
    new-instance v0, Lgnu/xquery/lang/Prompter;

    invoke-direct {v0}, Lgnu/xquery/lang/Prompter;-><init>()V

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .registers 4
    .param p1, "clas"    # Ljava/lang/Class;

    .line 867
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 869
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "name":Ljava/lang/String;
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 871
    sget-object v1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    return-object v1

    .line 872
    :cond_15
    invoke-static {v0}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    return-object v1

    .line 874
    .end local v0    # "name":Ljava/lang/String;
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 876
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 877
    .restart local v0    # "name":Ljava/lang/String;
    const-string v1, "java.lang.String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 878
    sget-object v1, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    return-object v1

    .line 879
    :cond_2f
    const-string v1, "gnu.kawa.xml.UntypedAtomic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 880
    sget-object v1, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    return-object v1

    .line 881
    :cond_3a
    const-string v1, "java.lang.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 882
    sget-object v1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    return-object v1

    .line 883
    :cond_45
    const-string v1, "java.lang.Float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 884
    sget-object v1, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    return-object v1

    .line 885
    :cond_50
    const-string v1, "java.lang.Double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 886
    sget-object v1, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    return-object v1

    .line 887
    :cond_5b
    const-string v1, "java.math.BigDecimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 888
    sget-object v1, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    return-object v1

    .line 889
    :cond_66
    const-string v1, "gnu.math.Duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 890
    sget-object v1, Lgnu/kawa/xml/XDataType;->durationType:Lgnu/kawa/xml/XDataType;

    return-object v1

    .line 891
    :cond_71
    const-string v1, "gnu.text.Path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 892
    sget-object v1, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    return-object v1

    .line 894
    .end local v0    # "name":Ljava/lang/String;
    :cond_7c
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 847
    const-string v0, "xs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x3

    :goto_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_e
    const-string v0, "xdt:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x4

    goto :goto_9

    :cond_18
    move-object v0, p1

    .line 850
    .local v0, "core":Ljava/lang/String;
    :goto_19
    invoke-static {v0}, Lgnu/xquery/lang/XQuery;->getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 851
    .local v1, "t":Lgnu/bytecode/Type;
    if-eqz v1, :cond_21

    move-object v2, v1

    goto :goto_25

    :cond_21
    invoke-static {p1}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    :goto_25
    return-object v2
.end method

.method public hasNamespace(Lgnu/expr/Declaration;I)Z
    .registers 6
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "namespace"    # I

    .line 243
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v0

    .line 244
    .local v0, "dnspace":I
    if-eq v0, p2, :cond_16

    const/4 v1, -0x2

    if-ne v0, v1, :cond_d

    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_16

    :cond_d
    if-ne p2, v1, :cond_14

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x1

    :goto_17
    return v1
.end method

.method public hasSeparateFunctionNamespace()Z
    .registers 2

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parse(Lgnu/expr/Compilation;I)Z
    .registers 14
    .param p1, "tr"    # Lgnu/expr/Compilation;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 108
    iget-object v0, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 109
    .local v0, "mexp":Lgnu/expr/ModuleExp;
    const/4 v1, 0x2

    sput v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    .line 110
    invoke-virtual {p1}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 111
    iget-object v1, p1, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    check-cast v1, Lgnu/xquery/lang/XQParser;

    .line 112
    .local v1, "parser":Lgnu/xquery/lang/XQParser;
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->isInteractive()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    .line 114
    invoke-virtual {v1, p1}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v2

    .line 115
    .local v2, "sexp":Lgnu/expr/Expression;
    if-nez v2, :cond_1b

    .line 116
    return v4

    .line 117
    :cond_1b
    iput-object v2, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 118
    .end local v2    # "sexp":Lgnu/expr/Expression;
    goto/16 :goto_c0

    .line 119
    :cond_1f
    const/high16 v2, 0x10000

    and-int/2addr v2, p2

    if-eqz v2, :cond_57

    .line 121
    new-instance v2, Lgnu/expr/LambdaExp;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 122
    .local v2, "lexp":Lgnu/expr/LambdaExp;
    sget-object v4, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v2, v4}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 123
    .local v4, "dotDecl":Lgnu/expr/Declaration;
    const-wide/32 v5, 0x40000

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 124
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 125
    sget-object v5, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v5, v6}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 126
    sget-object v5, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v5, v6}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 127
    invoke-virtual {p1, v2}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 128
    invoke-virtual {v1, p1}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v5

    iput-object v5, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 129
    invoke-virtual {p1, v2}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 130
    iput-object v2, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 131
    .end local v2    # "lexp":Lgnu/expr/LambdaExp;
    .end local v4    # "dotDecl":Lgnu/expr/Declaration;
    goto :goto_c0

    .line 134
    :cond_57
    new-instance v2, Ljava/util/Vector;

    const/16 v5, 0xa

    invoke-direct {v2, v5}, Ljava/util/Vector;-><init>(I)V

    .line 135
    .local v2, "exps":Ljava/util/Vector;
    iget-object v5, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 136
    .local v5, "sexp":Lgnu/expr/Expression;
    instance-of v6, v5, Lgnu/expr/BeginExp;

    if-eqz v6, :cond_7b

    .line 138
    move-object v6, v5

    check-cast v6, Lgnu/expr/BeginExp;

    .line 139
    .local v6, "bexp":Lgnu/expr/BeginExp;
    invoke-virtual {v6}, Lgnu/expr/BeginExp;->getExpressionCount()I

    move-result v7

    .line 140
    .local v7, "blen":I
    invoke-virtual {v6}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v8

    .line 141
    .local v8, "bexps":[Lgnu/expr/Expression;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_70
    if-ge v9, v7, :cond_7a

    .line 142
    aget-object v10, v8, v9

    invoke-virtual {v2, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 141
    add-int/lit8 v9, v9, 0x1

    goto :goto_70

    .line 143
    .end local v6    # "bexp":Lgnu/expr/BeginExp;
    .end local v7    # "blen":I
    .end local v8    # "bexps":[Lgnu/expr/Expression;
    .end local v9    # "i":I
    :cond_7a
    goto :goto_84

    .line 144
    :cond_7b
    if-eqz v5, :cond_84

    sget-object v6, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-eq v5, v6, :cond_84

    .line 146
    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 150
    :cond_84
    :goto_84
    invoke-virtual {v1, p1}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v5

    .line 151
    if-nez v5, :cond_d6

    .line 153
    iget v6, v1, Lgnu/xquery/lang/XQParser;->parseCount:I

    if-nez v6, :cond_9e

    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->isInteractive()Z

    move-result v6

    if-nez v6, :cond_9e

    .line 155
    const/16 v3, 0x65

    const-string v6, "empty module"

    const-string v7, "XPST0003"

    invoke-virtual {v1, v3, v6, v7}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 156
    return v4

    .line 162
    :cond_9e
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    .line 163
    .local v6, "nexps":I
    if-nez v6, :cond_a9

    .line 164
    sget-object v4, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    iput-object v4, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto :goto_c0

    .line 165
    :cond_a9
    if-ne v6, v3, :cond_b4

    .line 166
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    iput-object v4, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto :goto_c0

    .line 169
    :cond_b4
    new-array v4, v6, [Lgnu/expr/Expression;

    .line 170
    .local v4, "arr":[Lgnu/expr/Expression;
    invoke-virtual {v2, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 171
    new-instance v7, Lgnu/expr/BeginExp;

    invoke-direct {v7, v4}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    iput-object v7, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 177
    .end local v2    # "exps":Ljava/util/Vector;
    .end local v4    # "arr":[Lgnu/expr/Expression;
    .end local v5    # "sexp":Lgnu/expr/Expression;
    .end local v6    # "nexps":I
    :goto_c0
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 188
    new-instance v2, Lgnu/xquery/lang/XQResolveNames;

    invoke-direct {v2, p1}, Lgnu/xquery/lang/XQResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 189
    .local v2, "resolver":Lgnu/xquery/lang/XQResolveNames;
    iget-object v4, v1, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v4, v2, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 190
    iput-object v1, v2, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    .line 191
    invoke-virtual {v2, v0}, Lgnu/xquery/lang/XQResolveNames;->resolveModule(Lgnu/expr/ModuleExp;)V

    .line 192
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lgnu/expr/Compilation;->setState(I)V

    .line 193
    return v3

    .line 160
    .local v2, "exps":Ljava/util/Vector;
    .restart local v5    # "sexp":Lgnu/expr/Expression;
    :cond_d6
    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_84
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .registers 2
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 198
    return-void
.end method
