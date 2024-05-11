.class public Lgnu/kawa/xml/XTimeType;
.super Lgnu/kawa/xml/XDataType;
.source "XTimeType.java"


# static fields
.field public static final dateTimeType:Lgnu/kawa/xml/XTimeType;

.field public static final dateType:Lgnu/kawa/xml/XTimeType;

.field private static fixedTimeZone:Ljava/util/TimeZone;

.field public static final gDayType:Lgnu/kawa/xml/XTimeType;

.field public static final gMonthDayType:Lgnu/kawa/xml/XTimeType;

.field public static final gMonthType:Lgnu/kawa/xml/XTimeType;

.field public static final gYearMonthType:Lgnu/kawa/xml/XTimeType;

.field public static final gYearType:Lgnu/kawa/xml/XTimeType;

.field public static final timeType:Lgnu/kawa/xml/XTimeType;

.field static typeDateTime:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 13
    const-string v0, "gnu.math.DateTime"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XTimeType;->typeDateTime:Lgnu/bytecode/ClassType;

    .line 15
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "dateTime"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    .line 18
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "date"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    .line 20
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "time"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    .line 22
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "gYearMonth"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gYearMonthType:Lgnu/kawa/xml/XTimeType;

    .line 24
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "gYear"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gYearType:Lgnu/kawa/xml/XTimeType;

    .line 26
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "gMonth"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gMonthType:Lgnu/kawa/xml/XTimeType;

    .line 28
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "gMonthDay"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gMonthDayType:Lgnu/kawa/xml/XTimeType;

    .line 30
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    const-string v1, "gDay"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gDayType:Lgnu/kawa/xml/XTimeType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 35
    sget-object v0, Lgnu/kawa/xml/XTimeType;->typeDateTime:Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1, v0, p2}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    .line 36
    return-void
.end method

.method static components(I)I
    .registers 3
    .param p0, "typeCode"    # I

    .line 40
    const/4 v0, 0x6

    const/16 v1, 0x7e

    packed-switch p0, :pswitch_data_20

    .line 65
    const/4 v0, 0x0

    return v0

    .line 63
    :pswitch_8
    const/16 v0, 0x78

    return v0

    .line 61
    :pswitch_b
    return v0

    .line 59
    :pswitch_c
    return v1

    .line 57
    :pswitch_d
    const/4 v0, 0x4

    return v0

    .line 55
    :pswitch_f
    const/16 v0, 0x8

    return v0

    .line 53
    :pswitch_12
    const/16 v0, 0xc

    return v0

    .line 51
    :pswitch_15
    const/4 v0, 0x2

    return v0

    .line 49
    :pswitch_17
    return v0

    .line 47
    :pswitch_18
    const/16 v0, 0x70

    return v0

    .line 45
    :pswitch_1b
    const/16 v0, 0xe

    return v0

    .line 43
    :pswitch_1e
    return v1

    nop

    :pswitch_data_20
    .packed-switch 0x14
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_17
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static declared-synchronized fixedTimeZone()Ljava/util/TimeZone;
    .registers 3

    const-class v0, Lgnu/kawa/xml/XTimeType;

    monitor-enter v0

    .line 87
    :try_start_3
    sget-object v1, Lgnu/kawa/xml/XTimeType;->fixedTimeZone:Ljava/util/TimeZone;

    if-nez v1, :cond_19

    .line 89
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0xea60

    div-int/2addr v1, v2

    .line 90
    .local v1, "offset":I
    invoke-static {v1}, Lgnu/math/DateTime;->minutesToTimeZone(I)Ljava/util/TimeZone;

    move-result-object v2

    sput-object v2, Lgnu/kawa/xml/XTimeType;->fixedTimeZone:Ljava/util/TimeZone;

    .line 92
    .end local v1    # "offset":I
    :cond_19
    sget-object v1, Lgnu/kawa/xml/XTimeType;->fixedTimeZone:Ljava/util/TimeZone;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-object v1

    .line 86
    :catchall_1d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "mask"    # I

    .line 98
    invoke-static {p0, p1}, Lgnu/math/DateTime;->parse(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v0

    .line 104
    .local v0, "time":Lgnu/math/DateTime;
    invoke-virtual {v0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 105
    invoke-static {}, Lgnu/kawa/xml/XTimeType;->fixedTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/math/DateTime;->setTimeZone(Ljava/util/TimeZone;)V

    .line 106
    :cond_11
    return-object v0
.end method


# virtual methods
.method public isInstance(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 116
    instance-of v0, p1, Lgnu/math/DateTime;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 117
    return v1

    .line 118
    :cond_6
    iget v0, p0, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v0}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v0

    .line 119
    .local v0, "thisMask":I
    move-object v2, p1

    check-cast v2, Lgnu/math/DateTime;

    invoke-virtual {v2}, Lgnu/math/DateTime;->components()I

    move-result v2

    .line 121
    .local v2, "objMask":I
    if-ne v0, v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public now()Lgnu/math/DateTime;
    .registers 4

    .line 79
    new-instance v0, Lgnu/math/DateTime;

    iget v1, p0, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v1}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-static {}, Lgnu/kawa/xml/XTimeType;->fixedTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 111
    iget v0, p0, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v0}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v0

    invoke-static {p1, v0}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method
