.class public final Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImageBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;,
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    }
.end annotation


# static fields
.field public static final APIKEY_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

.field public static final MASK_FIELD_NUMBER:I = 0x6

.field public static final OPERATION_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROMPT_FIELD_NUMBER:I = 0x4

.field public static final SIZE_FIELD_NUMBER:I = 0x8

.field public static final SOURCE_FIELD_NUMBER:I = 0x5

.field public static final TOKEN_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile apikey_:Ljava/lang/Object;

.field private bitField0_:I

.field private mask_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private operation_:I

.field private volatile prompt_:Ljava/lang/Object;

.field private volatile size_:Ljava/lang/Object;

.field private source_:Lcom/google/protobuf/ByteString;

.field private token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

.field private version_:J


# direct methods
.method static bridge synthetic -$$Nest$fgetapikey_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprompt_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsize_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputapikey_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;I)V
    .registers 2

    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmask_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Lcom/google/protobuf/ByteString;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoperation_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;I)V
    .registers 2

    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprompt_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsize_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsource_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Lcom/google/protobuf/ByteString;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtoken_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 3143
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 3151
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1746
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 2164
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedIsInitialized:B

    .line 1747
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J

    .line 1748
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    .line 1749
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    .line 1750
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    .line 1751
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    .line 1752
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    .line 1753
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    .line 1754
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1765
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;-><init>()V

    .line 1766
    const/4 v0, 0x0

    .line 1768
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 1770
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 1771
    .local v2, "done":Z
    :goto_9
    if-nez v2, :cond_cd

    .line 1772
    :try_start_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1773
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_d8

    .line 1778
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_ab

    .line 1836
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1837
    .local v4, "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1838
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    .line 1839
    goto/16 :goto_ae

    .line 1830
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1831
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1832
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    .line 1833
    goto/16 :goto_ae

    .line 1825
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_34
    iget v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1826
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    .line 1827
    goto/16 :goto_ae

    .line 1820
    :sswitch_42
    iget v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1821
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    .line 1822
    goto :goto_ae

    .line 1814
    :sswitch_4f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1815
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1816
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    .line 1817
    goto :goto_ae

    .line 1801
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_5c
    const/4 v4, 0x0

    .line 1802
    .local v4, "subBuilder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;
    iget v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_6a

    .line 1803
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    move-result-object v5

    move-object v4, v5

    .line 1805
    :cond_6a
    sget-object v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1806
    if-eqz v4, :cond_7f

    .line 1807
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;

    .line 1808
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    .line 1810
    :cond_7f
    iget v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1811
    goto :goto_ae

    .line 1790
    .end local v4    # "subBuilder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token$Builder;
    :sswitch_85
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 1791
    .local v4, "rawValue":I
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->valueOf(I)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    move-result-object v5

    .line 1792
    .local v5, "value":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    const/4 v6, 0x2

    if-nez v5, :cond_94

    .line 1793
    invoke-virtual {v1, v6, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_ae

    .line 1795
    :cond_94
    iget v7, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1796
    iput v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    .line 1798
    goto :goto_ae

    .line 1785
    .end local v4    # "rawValue":I
    .end local v5    # "value":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    :sswitch_9c
    iget v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    .line 1786
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J
    :try_end_a8
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_a8} :catch_bd
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_a8} :catch_b2
    .catchall {:try_start_b .. :try_end_a8} :catchall_b0

    .line 1787
    goto :goto_ae

    .line 1775
    :sswitch_a9
    const/4 v2, 0x1

    .line 1776
    goto :goto_ae

    .line 1778
    :goto_ab
    if-nez v4, :cond_ae

    .line 1780
    const/4 v2, 0x1

    .line 1842
    .end local v3    # "tag":I
    :cond_ae
    :goto_ae
    goto/16 :goto_9

    .line 1849
    .end local v2    # "done":Z
    :catchall_b0
    move-exception v2

    goto :goto_c3

    .line 1845
    :catch_b2
    move-exception v2

    .line 1846
    .local v2, "e":Ljava/io/IOException;
    :try_start_b3
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1847
    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3

    .line 1843
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_bd
    move-exception v2

    .line 1844
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_c3
    .catchall {:try_start_b3 .. :try_end_c3} :catchall_b0

    .line 1849
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_c3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1850
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->makeExtensionsImmutable()V

    .line 1851
    throw v2

    .line 1849
    :cond_cd
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1850
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->makeExtensionsImmutable()V

    .line 1851
    nop

    .line 1852
    return-void

    :sswitch_data_d8
    .sparse-switch
        0x0 -> :sswitch_a9
        0x8 -> :sswitch_9c
        0x10 -> :sswitch_85
        0x1a -> :sswitch_5c
        0x22 -> :sswitch_4f
        0x2a -> :sswitch_42
        0x32 -> :sswitch_34
        0x3a -> :sswitch_26
        0x42 -> :sswitch_18
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1744
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 2164
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedIsInitialized:B

    .line 1745
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 1738
    sget-boolean v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 1738
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 1

    .line 3147
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1855
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->-$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .registers 1

    .line 2407
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 2410
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2381
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2382
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 2381
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2388
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2389
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 2388
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 2
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2349
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 3
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2355
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2394
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2395
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 2394
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 3
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2401
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2402
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 2401
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2369
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2370
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 2369
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2376
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2377
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 2376
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2359
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2365
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;",
            ">;"
        }
    .end annotation

    .line 3161
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2249
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2250
    return v0

    .line 2252
    :cond_4
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    if-nez v1, :cond_d

    .line 2253
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2255
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    .line 2257
    .local v1, "other":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    const/4 v2, 0x1

    .line 2258
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasVersion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    move v2, v4

    .line 2259
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2260
    if-eqz v2, :cond_38

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getVersion()J

    move-result-wide v4

    .line 2261
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getVersion()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    :goto_39
    move v2, v4

    .line 2263
    :cond_3a
    if-eqz v2, :cond_48

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasOperation()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasOperation()Z

    move-result v5

    if-ne v4, v5, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    move v2, v4

    .line 2264
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasOperation()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2265
    if-eqz v2, :cond_5a

    iget v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    iget v5, v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    if-ne v4, v5, :cond_5a

    const/4 v4, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :goto_5b
    move v2, v4

    .line 2267
    :cond_5c
    if-eqz v2, :cond_6a

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasToken()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasToken()Z

    move-result v5

    if-ne v4, v5, :cond_6a

    const/4 v4, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v4, 0x0

    :goto_6b
    move v2, v4

    .line 2268
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasToken()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 2269
    if-eqz v2, :cond_84

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v4

    .line 2270
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    const/4 v4, 0x1

    goto :goto_85

    :cond_84
    const/4 v4, 0x0

    :goto_85
    move v2, v4

    .line 2272
    :cond_86
    if-eqz v2, :cond_94

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasPrompt()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasPrompt()Z

    move-result v5

    if-ne v4, v5, :cond_94

    const/4 v4, 0x1

    goto :goto_95

    :cond_94
    const/4 v4, 0x0

    :goto_95
    move v2, v4

    .line 2273
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasPrompt()Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 2274
    if-eqz v2, :cond_ae

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getPrompt()Ljava/lang/String;

    move-result-object v4

    .line 2275
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getPrompt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    const/4 v4, 0x1

    goto :goto_af

    :cond_ae
    const/4 v4, 0x0

    :goto_af
    move v2, v4

    .line 2277
    :cond_b0
    if-eqz v2, :cond_be

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSource()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSource()Z

    move-result v5

    if-ne v4, v5, :cond_be

    const/4 v4, 0x1

    goto :goto_bf

    :cond_be
    const/4 v4, 0x0

    :goto_bf
    move v2, v4

    .line 2278
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSource()Z

    move-result v4

    if-eqz v4, :cond_da

    .line 2279
    if-eqz v2, :cond_d8

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSource()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 2280
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSource()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    const/4 v4, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v4, 0x0

    :goto_d9
    move v2, v4

    .line 2282
    :cond_da
    if-eqz v2, :cond_e8

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasMask()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasMask()Z

    move-result v5

    if-ne v4, v5, :cond_e8

    const/4 v4, 0x1

    goto :goto_e9

    :cond_e8
    const/4 v4, 0x0

    :goto_e9
    move v2, v4

    .line 2283
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasMask()Z

    move-result v4

    if-eqz v4, :cond_104

    .line 2284
    if-eqz v2, :cond_102

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getMask()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 2285
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getMask()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_102

    const/4 v4, 0x1

    goto :goto_103

    :cond_102
    const/4 v4, 0x0

    :goto_103
    move v2, v4

    .line 2287
    :cond_104
    if-eqz v2, :cond_112

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasApikey()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasApikey()Z

    move-result v5

    if-ne v4, v5, :cond_112

    const/4 v4, 0x1

    goto :goto_113

    :cond_112
    const/4 v4, 0x0

    :goto_113
    move v2, v4

    .line 2288
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasApikey()Z

    move-result v4

    if-eqz v4, :cond_12e

    .line 2289
    if-eqz v2, :cond_12c

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v4

    .line 2290
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12c

    const/4 v4, 0x1

    goto :goto_12d

    :cond_12c
    const/4 v4, 0x0

    :goto_12d
    move v2, v4

    .line 2292
    :cond_12e
    if-eqz v2, :cond_13c

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSize()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSize()Z

    move-result v5

    if-ne v4, v5, :cond_13c

    const/4 v4, 0x1

    goto :goto_13d

    :cond_13c
    const/4 v4, 0x0

    :goto_13d
    move v2, v4

    .line 2293
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSize()Z

    move-result v4

    if-eqz v4, :cond_158

    .line 2294
    if-eqz v2, :cond_156

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSize()Ljava/lang/String;

    move-result-object v4

    .line 2295
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_156

    const/4 v4, 0x1

    goto :goto_157

    :cond_156
    const/4 v4, 0x0

    :goto_157
    move v2, v4

    .line 2297
    :cond_158
    if-eqz v2, :cond_165

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_165

    goto :goto_166

    :cond_165
    const/4 v0, 0x0

    .line 2298
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_166
    return v0
.end method

.method public getApikey()Ljava/lang/String;
    .registers 5

    .line 2092
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2093
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 2094
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2096
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2098
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2099
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2100
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2102
    :cond_19
    return-object v2
.end method

.method public getApikeyBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 2110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2111
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 2112
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2113
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2115
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2116
    return-object v1

    .line 2118
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
    .registers 2

    .line 3170
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2077
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOperation()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    .registers 3

    .line 1983
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->valueOf(I)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    move-result-object v0

    .line 1984
    .local v0, "result":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    if-nez v0, :cond_b

    sget-object v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->CREATE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;",
            ">;"
        }
    .end annotation

    .line 3166
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .registers 5

    .line 2020
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    .line 2021
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 2022
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2024
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2026
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2027
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2028
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    .line 2030
    :cond_19
    return-object v2
.end method

.method public getPromptBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 2038
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    .line 2039
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 2040
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2041
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2043
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    .line 2044
    return-object v1

    .line 2046
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getSerializedSize()I
    .registers 6

    .line 2208
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedSize:I

    .line 2209
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2211
    :cond_6
    const/4 v0, 0x0

    .line 2212
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    .line 2213
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J

    .line 2214
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2216
    :cond_14
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    .line 2217
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    .line 2218
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2220
    :cond_21
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_31

    .line 2221
    const/4 v1, 0x3

    .line 2222
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2224
    :cond_31
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3f

    .line 2225
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2227
    :cond_3f
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4e

    .line 2228
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    .line 2229
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2231
    :cond_4e
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5d

    .line 2232
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    .line 2233
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2235
    :cond_5d
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6c

    .line 2236
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2238
    :cond_6c
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7a

    .line 2239
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2241
    :cond_7a
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2242
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedSize:I

    .line 2243
    return v0
.end method

.method public getSize()Ljava/lang/String;
    .registers 5

    .line 2134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    .line 2135
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 2136
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2138
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2140
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2141
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2142
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    .line 2144
    :cond_19
    return-object v2
.end method

.method public getSizeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 2152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    .line 2153
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 2154
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2155
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2157
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    .line 2158
    return-object v1

    .line 2160
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getSource()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 2062
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;
    .registers 2

    .line 1999
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$tokenOrBuilder;
    .registers 2

    .line 2005
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->token_:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    .line 1759
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .registers 3

    .line 1968
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J

    return-wide v0
.end method

.method public hasApikey()Z
    .registers 3

    .line 2086
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasMask()Z
    .registers 3

    .line 2071
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasOperation()Z
    .registers 3

    .line 1977
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

.method public hasPrompt()Z
    .registers 3

    .line 2014
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

.method public hasSize()Z
    .registers 3

    .line 2128
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasSource()Z
    .registers 3

    .line 2056
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

.method public hasToken()Z
    .registers 3

    .line 1993
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

.method public hasVersion()Z
    .registers 3

    .line 1962
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

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

    .line 2303
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedHashCode:I

    if-eqz v0, :cond_7

    .line 2304
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedHashCode:I

    return v0

    .line 2306
    :cond_7
    const/16 v0, 0x29

    .line 2307
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2308
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2309
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 2310
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 2311
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getVersion()J

    move-result-wide v2

    .line 2310
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 2313
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_29
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasOperation()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2314
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 2315
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    add-int/2addr v1, v2

    .line 2317
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_38
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2318
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 2319
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2321
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_4d
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasPrompt()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2322
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 2323
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getPrompt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2325
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_62
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 2326
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 2327
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSource()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2329
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_77
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasMask()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2330
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 2331
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getMask()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2333
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_8c
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasApikey()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 2334
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x7

    .line 2335
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2337
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_a1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 2338
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x8

    .line 2339
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2341
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_b6
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 2342
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedHashCode:I

    .line 2343
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1860
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->-$$Nest$sfgetinternal_static_request_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    const-class v2, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    .line 1861
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 1860
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 5

    .line 2166
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedIsInitialized:B

    .line 2167
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 2168
    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    .line 2170
    :cond_a
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->hasOperation()Z

    move-result v3

    if-nez v3, :cond_13

    .line 2171
    iput-byte v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedIsInitialized:B

    .line 2172
    return v2

    .line 2174
    :cond_13
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->memoizedIsInitialized:B

    .line 2175
    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .registers 2

    .line 2405
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 2420
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder-IA;)V

    .line 2421
    .local v0, "builder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 1738
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;
    .registers 3

    .line 2413
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2414
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;-><init>(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder-IA;)V

    goto :goto_14

    :cond_b
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;-><init>(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    .line 2413
    :goto_14
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1738
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$Builder;

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

    .line 2180
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 2181
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2183
    :cond_b
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_16

    .line 2184
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->operation_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2186
    :cond_16
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_24

    .line 2187
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2189
    :cond_24
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_30

    .line 2190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->prompt_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2192
    :cond_30
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3d

    .line 2193
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->source_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2195
    :cond_3d
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4a

    .line 2196
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->mask_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2198
    :cond_4a
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_57

    .line 2199
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->apikey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2201
    :cond_57
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_63

    .line 2202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->size_:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2204
    :cond_63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2205
    return-void
.end method
