.class public final Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImageBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$tokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

.field public static final GENERATION_FIELD_NUMBER:I = 0x3

.field public static final KEYID_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x5

.field public static final UNSIGNED_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private keyid_:J

.field private memoizedIsInitialized:B

.field private signature_:Lcom/google/protobuf/ByteString;

.field private unsigned_:Lcom/google/protobuf/ByteString;

.field private version_:J


# direct methods
.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;I)V
    .registers 2

    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgeneration_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->generation_:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeyid_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->keyid_:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsignature_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;Lcom/google/protobuf/ByteString;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputunsigned_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;Lcom/google/protobuf/ByteString;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->version_:J

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1608
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1616
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 877
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 1038
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->memoizedIsInitialized:B

    .line 878
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->version_:J

    .line 879
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->keyid_:J

    .line 880
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->generation_:J

    .line 881
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 882
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    .line 883
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 894
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;-><init>()V

    .line 895
    const/4 v0, 0x0

    .line 897
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 899
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 900
    .local v2, "done":Z
    :goto_9
    if-nez v2, :cond_7b

    .line 901
    :try_start_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 902
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_86

    .line 907
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto :goto_5a

    .line 934
    :sswitch_17
    iget v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    .line 935
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    goto :goto_5d

    .line 929
    :sswitch_24
    iget v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    .line 930
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 931
    goto :goto_5d

    .line 924
    :sswitch_31
    iget v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    .line 925
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->generation_:J

    .line 926
    goto :goto_5d

    .line 919
    :sswitch_3e
    iget v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    .line 920
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->keyid_:J

    .line 921
    goto :goto_5d

    .line 914
    :sswitch_4b
    iget v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    .line 915
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->version_:J
    :try_end_57
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_57} :catch_6b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_57} :catch_60
    .catchall {:try_start_b .. :try_end_57} :catchall_5e

    .line 916
    goto :goto_5d

    .line 904
    :sswitch_58
    const/4 v2, 0x1

    .line 905
    goto :goto_5d

    .line 907
    :goto_5a
    if-nez v4, :cond_5d

    .line 909
    const/4 v2, 0x1

    .line 939
    .end local v3    # "tag":I
    :cond_5d
    :goto_5d
    goto :goto_9

    .line 946
    .end local v2    # "done":Z
    :catchall_5e
    move-exception v2

    goto :goto_71

    .line 942
    :catch_60
    move-exception v2

    .line 943
    .local v2, "e":Ljava/io/IOException;
    :try_start_61
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 944
    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3

    .line 940
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_6b
    move-exception v2

    .line 941
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_5e

    .line 946
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_71
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 947
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->makeExtensionsImmutable()V

    .line 948
    throw v2

    .line 946
    :cond_7b
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 947
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->makeExtensionsImmutable()V

    .line 948
    nop

    .line 949
    return-void

    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_58
        0x8 -> :sswitch_4b
        0x10 -> :sswitch_3e
        0x18 -> :sswitch_31
        0x22 -> :sswitch_24
        0x2a -> :sswitch_17
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 875
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 1038
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->memoizedIsInitialized:B

    .line 876
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 869
    sget-boolean v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 869
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 1

    .line 1612
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 952
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->-$$Nest$sfgetinternal_static_token_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;
    .registers 1

    .line 1235
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1238
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1209
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1210
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1209
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1216
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1217
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1216
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 2
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1177
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 3
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1183
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1222
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1223
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1222
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 3
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1229
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1230
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1229
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1197
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1198
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1197
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1205
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1204
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1187
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1193
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;",
            ">;"
        }
    .end annotation

    .line 1626
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1101
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1102
    return v0

    .line 1104
    :cond_4
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    if-nez v1, :cond_d

    .line 1105
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1107
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1109
    .local v1, "other":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    const/4 v2, 0x1

    .line 1110
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasVersion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    move v2, v4

    .line 1111
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1112
    if-eqz v2, :cond_38

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getVersion()J

    move-result-wide v4

    .line 1113
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getVersion()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    :goto_39
    move v2, v4

    .line 1115
    :cond_3a
    if-eqz v2, :cond_48

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasKeyid()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasKeyid()Z

    move-result v5

    if-ne v4, v5, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    move v2, v4

    .line 1116
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasKeyid()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1117
    if-eqz v2, :cond_60

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getKeyid()J

    move-result-wide v4

    .line 1118
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getKeyid()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_60

    const/4 v4, 0x1

    goto :goto_61

    :cond_60
    const/4 v4, 0x0

    :goto_61
    move v2, v4

    .line 1120
    :cond_62
    if-eqz v2, :cond_70

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasGeneration()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasGeneration()Z

    move-result v5

    if-ne v4, v5, :cond_70

    const/4 v4, 0x1

    goto :goto_71

    :cond_70
    const/4 v4, 0x0

    :goto_71
    move v2, v4

    .line 1121
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasGeneration()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 1122
    if-eqz v2, :cond_88

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getGeneration()J

    move-result-wide v4

    .line 1123
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getGeneration()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_88

    const/4 v4, 0x1

    goto :goto_89

    :cond_88
    const/4 v4, 0x0

    :goto_89
    move v2, v4

    .line 1125
    :cond_8a
    if-eqz v2, :cond_98

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasUnsigned()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasUnsigned()Z

    move-result v5

    if-ne v4, v5, :cond_98

    const/4 v4, 0x1

    goto :goto_99

    :cond_98
    const/4 v4, 0x0

    :goto_99
    move v2, v4

    .line 1126
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasUnsigned()Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 1127
    if-eqz v2, :cond_b2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1128
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    const/4 v4, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v4, 0x0

    :goto_b3
    move v2, v4

    .line 1130
    :cond_b4
    if-eqz v2, :cond_c2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasSignature()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasSignature()Z

    move-result v5

    if-ne v4, v5, :cond_c2

    const/4 v4, 0x1

    goto :goto_c3

    :cond_c2
    const/4 v4, 0x0

    :goto_c3
    move v2, v4

    .line 1131
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasSignature()Z

    move-result v4

    if-eqz v4, :cond_de

    .line 1132
    if-eqz v2, :cond_dc

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1133
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    const/4 v4, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v4, 0x0

    :goto_dd
    move v2, v4

    .line 1135
    :cond_de
    if-eqz v2, :cond_eb

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_eb

    goto :goto_ec

    :cond_eb
    const/4 v0, 0x0

    .line 1136
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_ec
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 2

    .line 1635
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .registers 3

    .line 1005
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->generation_:J

    return-wide v0
.end method

.method public getKeyid()J
    .registers 3

    .line 990
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->keyid_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;",
            ">;"
        }
    .end annotation

    .line 1631
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 1069
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->memoizedSize:I

    .line 1070
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1072
    :cond_6
    const/4 v0, 0x0

    .line 1073
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    .line 1074
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->version_:J

    .line 1075
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1077
    :cond_14
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    .line 1078
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->keyid_:J

    .line 1079
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1081
    :cond_21
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2f

    .line 1082
    const/4 v1, 0x3

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->generation_:J

    .line 1083
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1085
    :cond_2f
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3d

    .line 1086
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1087
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1089
    :cond_3d
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4c

    .line 1090
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    .line 1091
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1093
    :cond_4c
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1094
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->memoizedSize:I

    .line 1095
    return v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1035
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    .line 888
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUnsigned()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 1020
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()J
    .registers 3

    .line 975
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .registers 3

    .line 999
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasKeyid()Z
    .registers 3

    .line 984
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSignature()Z
    .registers 3

    .line 1029
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasUnsigned()Z
    .registers 3

    .line 1014
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasVersion()Z
    .registers 3

    .line 969
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 1141
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->memoizedHashCode:I

    if-eqz v0, :cond_7

    .line 1142
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->memoizedHashCode:I

    return v0

    .line 1144
    :cond_7
    const/16 v0, 0x29

    .line 1145
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1146
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1147
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 1148
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 1149
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getVersion()J

    move-result-wide v2

    .line 1148
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 1151
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_29
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasKeyid()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1152
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 1153
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 1154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getKeyid()J

    move-result-wide v2

    .line 1153
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 1156
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3e
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasGeneration()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1157
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 1158
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 1159
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getGeneration()J

    move-result-wide v2

    .line 1158
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 1161
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_53
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasUnsigned()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1162
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 1163
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1165
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_68
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1166
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 1167
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1169
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_7d
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1170
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->memoizedHashCode:I

    .line 1171
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 957
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->-$$Nest$sfgetinternal_static_token_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    const-class v2, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    .line 958
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 957
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1040
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->memoizedIsInitialized:B

    .line 1041
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 1042
    :cond_6
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    .line 1044
    :cond_a
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->memoizedIsInitialized:B

    .line 1045
    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;
    .registers 2

    .line 1233
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 1248
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder-IA;)V

    .line 1249
    .local v0, "builder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 869
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;
    .registers 3

    .line 1241
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1242
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;-><init>(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder-IA;)V

    goto :goto_14

    :cond_b
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;-><init>(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v0

    .line 1241
    :goto_14
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 1051
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1053
    :cond_b
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_16

    .line 1054
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->keyid_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1056
    :cond_16
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_22

    .line 1057
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->generation_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1059
    :cond_22
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2e

    .line 1060
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1062
    :cond_2e
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3b

    .line 1063
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1065
    :cond_3b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1066
    return-void
.end method
