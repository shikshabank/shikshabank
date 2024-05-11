.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    }
.end annotation


# static fields
.field public static final APIKEY_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

.field public static final MODEL_FIELD_NUMBER:I = 0x8

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROVIDER_FIELD_NUMBER:I = 0x7

.field public static final QUESTION_FIELD_NUMBER:I = 0x4

.field public static final SYSTEM_FIELD_NUMBER:I = 0x5

.field public static final TOKEN_FIELD_NUMBER:I = 0x2

.field public static final UUID_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile apikey_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private volatile model_:Ljava/lang/Object;

.field private volatile provider_:Ljava/lang/Object;

.field private volatile question_:Ljava/lang/Object;

.field private volatile system_:Ljava/lang/Object;

.field private token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

.field private volatile uuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method static bridge synthetic -$$Nest$fgetapikey_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprovider_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetquestion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsystem_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputapikey_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;I)V
    .registers 2

    iput p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmodel_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprovider_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputquestion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsystem_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtoken_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 3264
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 3272
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1761
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 2166
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedIsInitialized:B

    .line 1762
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J

    .line 1763
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1764
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 1765
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 1766
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 1767
    const-string v1, "chatgpt"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 1768
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 1769
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1780
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;-><init>()V

    .line 1781
    const/4 v0, 0x0

    .line 1783
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 1785
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 1786
    .local v2, "done":Z
    :goto_9
    if-nez v2, :cond_c2

    .line 1787
    :try_start_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1788
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_ce

    .line 1793
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_a0

    .line 1848
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1849
    .local v4, "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1850
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 1851
    goto/16 :goto_a3

    .line 1842
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1843
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1844
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 1845
    goto/16 :goto_a3

    .line 1836
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_34
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1837
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1838
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 1839
    goto :goto_a3

    .line 1830
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1831
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1832
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 1833
    goto :goto_a3

    .line 1824
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1825
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1826
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 1827
    goto :goto_a3

    .line 1818
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_5b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1819
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1820
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1821
    goto :goto_a3

    .line 1805
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_68
    const/4 v4, 0x0

    .line 1806
    .local v4, "subBuilder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_76

    .line 1807
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v5

    move-object v4, v5

    .line 1809
    :cond_76
    sget-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 1810
    if-eqz v4, :cond_8b

    .line 1811
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    .line 1812
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 1814
    :cond_8b
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1815
    goto :goto_a3

    .line 1800
    .end local v4    # "subBuilder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    :sswitch_91
    iget v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1801
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J
    :try_end_9d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_9d} :catch_b2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_9d} :catch_a7
    .catchall {:try_start_b .. :try_end_9d} :catchall_a5

    .line 1802
    goto :goto_a3

    .line 1790
    :sswitch_9e
    const/4 v2, 0x1

    .line 1791
    goto :goto_a3

    .line 1793
    :goto_a0
    if-nez v4, :cond_a3

    .line 1795
    const/4 v2, 0x1

    .line 1854
    .end local v3    # "tag":I
    :cond_a3
    :goto_a3
    goto/16 :goto_9

    .line 1861
    .end local v2    # "done":Z
    :catchall_a5
    move-exception v2

    goto :goto_b8

    .line 1857
    :catch_a7
    move-exception v2

    .line 1858
    .local v2, "e":Ljava/io/IOException;
    :try_start_a8
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1859
    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3

    .line 1855
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_b2
    move-exception v2

    .line 1856
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_b8
    .catchall {:try_start_a8 .. :try_end_b8} :catchall_a5

    .line 1861
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_b8
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1862
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->makeExtensionsImmutable()V

    .line 1863
    throw v2

    .line 1861
    :cond_c2
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1862
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->makeExtensionsImmutable()V

    .line 1863
    nop

    .line 1864
    return-void

    nop

    :sswitch_data_ce
    .sparse-switch
        0x0 -> :sswitch_9e
        0x8 -> :sswitch_91
        0x12 -> :sswitch_68
        0x1a -> :sswitch_5b
        0x22 -> :sswitch_4e
        0x2a -> :sswitch_41
        0x32 -> :sswitch_34
        0x3a -> :sswitch_26
        0x42 -> :sswitch_18
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1759
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 2166
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedIsInitialized:B

    .line 1760
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 1753
    sget-boolean v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 1753
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 1

    .line 3268
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1867
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 1

    .line 2403
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2406
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2377
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2378
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2377
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2384
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2385
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2384
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 2
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2345
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 3
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2351
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2390
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2391
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2390
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 3
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2397
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2398
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2397
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2365
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2366
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2365
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2372
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2373
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2372
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2355
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2361
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;",
            ">;"
        }
    .end annotation

    .line 3282
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2244
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2245
    return v0

    .line 2247
    :cond_4
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    if-nez v1, :cond_d

    .line 2248
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2250
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2252
    .local v1, "other":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    const/4 v2, 0x1

    .line 2253
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasVersion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    move v2, v4

    .line 2254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2255
    if-eqz v2, :cond_38

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getVersion()J

    move-result-wide v4

    .line 2256
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getVersion()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    :goto_39
    move v2, v4

    .line 2258
    :cond_3a
    if-eqz v2, :cond_48

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasToken()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasToken()Z

    move-result v5

    if-ne v4, v5, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    move v2, v4

    .line 2259
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasToken()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 2260
    if-eqz v2, :cond_62

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v4

    .line 2261
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    const/4 v4, 0x1

    goto :goto_63

    :cond_62
    const/4 v4, 0x0

    :goto_63
    move v2, v4

    .line 2263
    :cond_64
    if-eqz v2, :cond_72

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasUuid()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasUuid()Z

    move-result v5

    if-ne v4, v5, :cond_72

    const/4 v4, 0x1

    goto :goto_73

    :cond_72
    const/4 v4, 0x0

    :goto_73
    move v2, v4

    .line 2264
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasUuid()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2265
    if-eqz v2, :cond_8c

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 2266
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    const/4 v4, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v4, 0x0

    :goto_8d
    move v2, v4

    .line 2268
    :cond_8e
    if-eqz v2, :cond_9c

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasQuestion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasQuestion()Z

    move-result v5

    if-ne v4, v5, :cond_9c

    const/4 v4, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v4, 0x0

    :goto_9d
    move v2, v4

    .line 2269
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasQuestion()Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 2270
    if-eqz v2, :cond_b6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getQuestion()Ljava/lang/String;

    move-result-object v4

    .line 2271
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getQuestion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    const/4 v4, 0x1

    goto :goto_b7

    :cond_b6
    const/4 v4, 0x0

    :goto_b7
    move v2, v4

    .line 2273
    :cond_b8
    if-eqz v2, :cond_c6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasSystem()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasSystem()Z

    move-result v5

    if-ne v4, v5, :cond_c6

    const/4 v4, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v4, 0x0

    :goto_c7
    move v2, v4

    .line 2274
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasSystem()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 2275
    if-eqz v2, :cond_e0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getSystem()Ljava/lang/String;

    move-result-object v4

    .line 2276
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e0

    const/4 v4, 0x1

    goto :goto_e1

    :cond_e0
    const/4 v4, 0x0

    :goto_e1
    move v2, v4

    .line 2278
    :cond_e2
    if-eqz v2, :cond_f0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasApikey()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasApikey()Z

    move-result v5

    if-ne v4, v5, :cond_f0

    const/4 v4, 0x1

    goto :goto_f1

    :cond_f0
    const/4 v4, 0x0

    :goto_f1
    move v2, v4

    .line 2279
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasApikey()Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 2280
    if-eqz v2, :cond_10a

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v4

    .line 2281
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10a

    const/4 v4, 0x1

    goto :goto_10b

    :cond_10a
    const/4 v4, 0x0

    :goto_10b
    move v2, v4

    .line 2283
    :cond_10c
    if-eqz v2, :cond_11a

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasProvider()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasProvider()Z

    move-result v5

    if-ne v4, v5, :cond_11a

    const/4 v4, 0x1

    goto :goto_11b

    :cond_11a
    const/4 v4, 0x0

    :goto_11b
    move v2, v4

    .line 2284
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasProvider()Z

    move-result v4

    if-eqz v4, :cond_136

    .line 2285
    if-eqz v2, :cond_134

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getProvider()Ljava/lang/String;

    move-result-object v4

    .line 2286
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_134

    const/4 v4, 0x1

    goto :goto_135

    :cond_134
    const/4 v4, 0x0

    :goto_135
    move v2, v4

    .line 2288
    :cond_136
    if-eqz v2, :cond_144

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasModel()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasModel()Z

    move-result v5

    if-ne v4, v5, :cond_144

    const/4 v4, 0x1

    goto :goto_145

    :cond_144
    const/4 v4, 0x0

    :goto_145
    move v2, v4

    .line 2289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasModel()Z

    move-result v4

    if-eqz v4, :cond_160

    .line 2290
    if-eqz v2, :cond_15e

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getModel()Ljava/lang/String;

    move-result-object v4

    .line 2291
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15e

    const/4 v4, 0x1

    goto :goto_15f

    :cond_15e
    const/4 v4, 0x0

    :goto_15f
    move v2, v4

    .line 2293
    :cond_160
    if-eqz v2, :cond_16d

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16d

    goto :goto_16e

    :cond_16d
    const/4 v0, 0x0

    .line 2294
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_16e
    return v0
.end method

.method public getApikey()Ljava/lang/String;
    .registers 5

    .line 2052
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2053
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 2054
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2056
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2058
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2059
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2060
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2062
    :cond_19
    return-object v2
.end method

.method public getApikeyBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 2070
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2071
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 2072
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2073
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2075
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2076
    return-object v1

    .line 2078
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 2

    .line 3291
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .line 1753
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .line 1753
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 5

    .line 2136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 2137
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 2138
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2140
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2142
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2143
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2144
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 2146
    :cond_19
    return-object v2
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 2154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 2155
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 2156
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2157
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2159
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 2160
    return-object v1

    .line 2162
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;",
            ">;"
        }
    .end annotation

    .line 3287
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 5

    .line 2094
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 2095
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 2096
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2098
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2100
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2101
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2102
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 2104
    :cond_19
    return-object v2
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 2112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 2113
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 2114
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2115
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2117
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 2118
    return-object v1

    .line 2120
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getQuestion()Ljava/lang/String;
    .registers 5

    .line 1968
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 1969
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1970
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1972
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1974
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1975
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1976
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 1978
    :cond_19
    return-object v2
.end method

.method public getQuestionBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 1986
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 1987
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 1988
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1989
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 1991
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 1992
    return-object v1

    .line 1994
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getSerializedSize()I
    .registers 6

    .line 2206
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedSize:I

    .line 2207
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2209
    :cond_6
    const/4 v0, 0x0

    .line 2210
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    .line 2211
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J

    .line 2212
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2214
    :cond_14
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_24

    .line 2215
    nop

    .line 2216
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2218
    :cond_24
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_32

    .line 2219
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2221
    :cond_32
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_40

    .line 2222
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2224
    :cond_40
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4f

    .line 2225
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2227
    :cond_4f
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5e

    .line 2228
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2230
    :cond_5e
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6d

    .line 2231
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2233
    :cond_6d
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7b

    .line 2234
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2236
    :cond_7b
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2237
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedSize:I

    .line 2238
    return v0
.end method

.method public getSystem()Ljava/lang/String;
    .registers 5

    .line 2010
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 2011
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 2012
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2014
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2016
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2017
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2018
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 2020
    :cond_19
    return-object v2
.end method

.method public getSystemBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 2028
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 2029
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 2030
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2031
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2033
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 2034
    return-object v1

    .line 2036
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .registers 2

    .line 1905
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;
    .registers 2

    .line 1911
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    .line 1774
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 5

    .line 1926
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1927
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1928
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1930
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1932
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1933
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1934
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1936
    :cond_19
    return-object v2
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 1944
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1945
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 1946
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1947
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 1949
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1950
    return-object v1

    .line 1952
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getVersion()J
    .registers 3

    .line 1890
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J

    return-wide v0
.end method

.method public hasApikey()Z
    .registers 3

    .line 2046
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

.method public hasModel()Z
    .registers 3

    .line 2130
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

.method public hasProvider()Z
    .registers 3

    .line 2088
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

.method public hasQuestion()Z
    .registers 3

    .line 1962
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

.method public hasSystem()Z
    .registers 3

    .line 2004
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 1899
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

.method public hasUuid()Z
    .registers 3

    .line 1920
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 1884
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 2299
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedHashCode:I

    if-eqz v0, :cond_7

    .line 2300
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedHashCode:I

    return v0

    .line 2302
    :cond_7
    const/16 v0, 0x29

    .line 2303
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2304
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2305
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 2306
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 2307
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getVersion()J

    move-result-wide v2

    .line 2306
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 2309
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_29
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2310
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 2311
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2313
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3e
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2314
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 2315
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2317
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_53
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasQuestion()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2318
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 2319
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2321
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_68
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasSystem()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2322
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 2323
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getSystem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2325
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_7d
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasApikey()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 2326
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 2327
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2329
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_92
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasProvider()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 2330
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x7

    .line 2331
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2333
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_a7
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 2334
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x8

    .line 2335
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2337
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_bc
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 2338
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedHashCode:I

    .line 2339
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1872
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_request_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 1873
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 1872
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2168
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedIsInitialized:B

    .line 2169
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 2170
    :cond_6
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    .line 2172
    :cond_a
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedIsInitialized:B

    .line 2173
    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 2

    .line 2401
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 2416
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder-IA;)V

    .line 2417
    .local v0, "builder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 1753
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 1753
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1753
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3

    .line 2409
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2410
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder-IA;)V

    goto :goto_14

    :cond_b
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    .line 2409
    :goto_14
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 1753
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1753
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

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

    .line 2178
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 2179
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2181
    :cond_b
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_18

    .line 2182
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2184
    :cond_18
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_24

    .line 2185
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2187
    :cond_24
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_30

    .line 2188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2190
    :cond_30
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3d

    .line 2191
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2193
    :cond_3d
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4a

    .line 2194
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2196
    :cond_4a
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_57

    .line 2197
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2199
    :cond_57
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_63

    .line 2200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2202
    :cond_63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2203
    return-void
.end method
