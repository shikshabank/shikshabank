.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$responseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    }
.end annotation


# static fields
.field public static final ANSWER_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final UUID_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile answer_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private status_:J

.field private volatile uuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method static bridge synthetic -$$Nest$fgetanswer_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputanswer_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;I)V
    .registers 2

    iput p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstatus_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 4181
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 4189
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 3365
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 3569
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedIsInitialized:B

    .line 3366
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J

    .line 3367
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    .line 3368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3369
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3370
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

    .line 3381
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;-><init>()V

    .line 3382
    const/4 v0, 0x0

    .line 3384
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 3386
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 3387
    .local v2, "done":Z
    :goto_9
    if-nez v2, :cond_6e

    .line 3388
    :try_start_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3389
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_7a

    .line 3394
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto :goto_4d

    .line 3417
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 3418
    .local v4, "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    .line 3419
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3420
    goto :goto_50

    .line 3411
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 3412
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    .line 3413
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3414
    goto :goto_50

    .line 3406
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_31
    iget v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    .line 3407
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    .line 3408
    goto :goto_50

    .line 3401
    :sswitch_3e
    iget v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    .line 3402
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J
    :try_end_4a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_4a} :catch_5e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_4a} :catch_53
    .catchall {:try_start_b .. :try_end_4a} :catchall_51

    .line 3403
    goto :goto_50

    .line 3391
    :sswitch_4b
    const/4 v2, 0x1

    .line 3392
    goto :goto_50

    .line 3394
    :goto_4d
    if-nez v4, :cond_50

    .line 3396
    const/4 v2, 0x1

    .line 3423
    .end local v3    # "tag":I
    :cond_50
    :goto_50
    goto :goto_9

    .line 3430
    .end local v2    # "done":Z
    :catchall_51
    move-exception v2

    goto :goto_64

    .line 3426
    :catch_53
    move-exception v2

    .line 3427
    .local v2, "e":Ljava/io/IOException;
    :try_start_54
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3428
    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3

    .line 3424
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_5e
    move-exception v2

    .line 3425
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_51

    .line 3430
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_64
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3431
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->makeExtensionsImmutable()V

    .line 3432
    throw v2

    .line 3430
    :cond_6e
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3431
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->makeExtensionsImmutable()V

    .line 3432
    nop

    .line 3433
    return-void

    nop

    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_4b
        0x8 -> :sswitch_3e
        0x10 -> :sswitch_31
        0x1a -> :sswitch_24
        0x22 -> :sswitch_17
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3363
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 3569
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedIsInitialized:B

    .line 3364
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 3357
    sget-boolean v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 1

    .line 4185
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3436
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 1

    .line 3747
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3750
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3721
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3722
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3721
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3728
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3729
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3728
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 2
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3689
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 3
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3695
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3734
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3735
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3734
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 3
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3741
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3742
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3741
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3709
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3710
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3709
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3716
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3717
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3716
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3699
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3705
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;",
            ">;"
        }
    .end annotation

    .line 4199
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3623
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 3624
    return v0

    .line 3626
    :cond_4
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    if-nez v1, :cond_d

    .line 3627
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3629
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3631
    .local v1, "other":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    const/4 v2, 0x1

    .line 3632
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasVersion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    move v2, v4

    .line 3633
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 3634
    if-eqz v2, :cond_38

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getVersion()J

    move-result-wide v4

    .line 3635
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getVersion()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    :goto_39
    move v2, v4

    .line 3637
    :cond_3a
    if-eqz v2, :cond_48

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasStatus()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasStatus()Z

    move-result v5

    if-ne v4, v5, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    move v2, v4

    .line 3638
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasStatus()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 3639
    if-eqz v2, :cond_60

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getStatus()J

    move-result-wide v4

    .line 3640
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getStatus()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_60

    const/4 v4, 0x1

    goto :goto_61

    :cond_60
    const/4 v4, 0x0

    :goto_61
    move v2, v4

    .line 3642
    :cond_62
    if-eqz v2, :cond_70

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasUuid()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasUuid()Z

    move-result v5

    if-ne v4, v5, :cond_70

    const/4 v4, 0x1

    goto :goto_71

    :cond_70
    const/4 v4, 0x0

    :goto_71
    move v2, v4

    .line 3643
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasUuid()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 3644
    if-eqz v2, :cond_8a

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 3645
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    const/4 v4, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v4, 0x0

    :goto_8b
    move v2, v4

    .line 3647
    :cond_8c
    if-eqz v2, :cond_9a

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasAnswer()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasAnswer()Z

    move-result v5

    if-ne v4, v5, :cond_9a

    const/4 v4, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v4, 0x0

    :goto_9b
    move v2, v4

    .line 3648
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasAnswer()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 3649
    if-eqz v2, :cond_b4

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getAnswer()Ljava/lang/String;

    move-result-object v4

    .line 3650
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getAnswer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    const/4 v4, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v4, 0x0

    :goto_b5
    move v2, v4

    .line 3652
    :cond_b6
    if-eqz v2, :cond_c3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    goto :goto_c4

    :cond_c3
    const/4 v0, 0x0

    .line 3653
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_c4
    return v0
.end method

.method public getAnswer()Ljava/lang/String;
    .registers 5

    .line 3539
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3540
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 3541
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3543
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3545
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3546
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3547
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3549
    :cond_19
    return-object v2
.end method

.method public getAnswerBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 3557
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3558
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 3559
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3560
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3562
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3563
    return-object v1

    .line 3565
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 2

    .line 4208
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .line 3357
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .line 3357
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;",
            ">;"
        }
    .end annotation

    .line 4204
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 3597
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedSize:I

    .line 3598
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 3600
    :cond_6
    const/4 v0, 0x0

    .line 3601
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    .line 3602
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J

    .line 3603
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3605
    :cond_14
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    .line 3606
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    .line 3607
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3609
    :cond_21
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2f

    .line 3610
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3612
    :cond_2f
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3d

    .line 3613
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3615
    :cond_3d
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3616
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedSize:I

    .line 3617
    return v0
.end method

.method public getStatus()J
    .registers 3

    .line 3482
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    .line 3375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 5

    .line 3497
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3498
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 3499
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3501
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3503
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3504
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3505
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3507
    :cond_19
    return-object v2
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 3515
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3516
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 3517
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3518
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3520
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3521
    return-object v1

    .line 3523
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getVersion()J
    .registers 3

    .line 3459
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J

    return-wide v0
.end method

.method public hasAnswer()Z
    .registers 3

    .line 3533
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .line 3472
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

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

    .line 3491
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

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

    .line 3453
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

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

    .line 3658
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedHashCode:I

    if-eqz v0, :cond_7

    .line 3659
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedHashCode:I

    return v0

    .line 3661
    :cond_7
    const/16 v0, 0x29

    .line 3662
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3663
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3664
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 3665
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 3666
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getVersion()J

    move-result-wide v2

    .line 3665
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 3668
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_29
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3669
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 3670
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 3671
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getStatus()J

    move-result-wide v2

    .line 3670
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 3673
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3e
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3674
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 3675
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3677
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_53
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasAnswer()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3678
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 3679
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getAnswer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3681
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_68
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 3682
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedHashCode:I

    .line 3683
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 3441
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_response_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 3442
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 3441
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 3571
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedIsInitialized:B

    .line 3572
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 3573
    :cond_6
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    .line 3575
    :cond_a
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedIsInitialized:B

    .line 3576
    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 2

    .line 3745
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 3760
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder-IA;)V

    .line 3761
    .local v0, "builder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 3357
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 3357
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 3357
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3

    .line 3753
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 3754
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;-><init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder-IA;)V

    goto :goto_14

    :cond_b
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;-><init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    .line 3753
    :goto_14
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 3357
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 3357
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

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

    .line 3581
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 3582
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3584
    :cond_b
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_16

    .line 3585
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3587
    :cond_16
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_22

    .line 3588
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3590
    :cond_22
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2e

    .line 3591
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3593
    :cond_2e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3594
    return-void
.end method
