.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;
.super Ljava/lang/Object;
.source "ChatBotToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$responseOrBuilder;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$requestOrBuilder;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsignedOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static bridge synthetic -$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_request_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_response_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_token_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_token_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_unsigned_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_unsigned_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputdescriptor(Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .registers 1

    sput-object p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 14

    .line 4241
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\n\nchat.proto\"D\n\u0008unsigned\u0012\r\n\u0005huuid\u0018\u0001 \u0001(\t\u0012\u0012\n\u0007version\u0018\u0002 \u0001(\u0004:\u00010\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\"i\n\u0005token\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0010\n\u0005keyid\u0018\u0002 \u0001(\u0004:\u00011\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\u0012\u0010\n\u0008unsigned\u0018\u0004 \u0001(\u000c\u0012\u0011\n\tsignature\u0018\u0005 \u0001(\u000c\"\u009e\u0001\n\u0007request\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0015\n\u0005token\u0018\u0002 \u0001(\u000b2\u0006.token\u0012\u000c\n\u0004uuid\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008question\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006system\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006apikey\u0018\u0006 \u0001(\t\u0012\u0019\n\u0008provider\u0018\u0007 \u0001(\t:\u0007chatgpt\u0012\r\n\u0005model\u0018\u0008 \u0001(\t\"O\n\u0008response\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0011\n\u0006status\u0018\u0002 \u0001(\u0004:\u0001"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "0\u0012\u000c\n\u0004uuid\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006answer\u0018\u0004 \u0001(\tBA\n1com.google.appinventor.components.runtime.chatbotB\u000cChatBotToken"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4256
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$1;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$1;-><init>()V

    .line 4264
    .local v2, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v5, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4265
    invoke-static {v1, v5, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 4269
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4270
    new-instance v6, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "Huuid"

    aput-object v9, v8, v3

    const-string v9, "Version"

    aput-object v9, v8, v4

    const-string v10, "Generation"

    aput-object v10, v8, v0

    invoke-direct {v6, v5, v8}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4275
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4276
    new-instance v6, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/String;

    aput-object v9, v11, v3

    const-string v12, "Keyid"

    aput-object v12, v11, v4

    aput-object v10, v11, v0

    const-string v10, "Unsigned"

    aput-object v10, v11, v7

    const-string v10, "Signature"

    const/4 v12, 0x4

    aput-object v10, v11, v12

    invoke-direct {v6, v5, v11}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4281
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4282
    new-instance v6, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/String;

    aput-object v9, v10, v3

    const-string v11, "Token"

    aput-object v11, v10, v4

    const-string v11, "Uuid"

    aput-object v11, v10, v0

    const-string v13, "Question"

    aput-object v13, v10, v7

    const-string v13, "System"

    aput-object v13, v10, v12

    const-string v13, "Apikey"

    aput-object v13, v10, v8

    const/4 v8, 0x6

    const-string v13, "Provider"

    aput-object v13, v10, v8

    const/4 v8, 0x7

    const-string v13, "Model"

    aput-object v13, v10, v8

    invoke-direct {v6, v5, v10}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4287
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4288
    new-instance v6, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    new-array v8, v12, [Ljava/lang/String;

    aput-object v9, v8, v3

    const-string v3, "Status"

    aput-object v3, v8, v4

    aput-object v11, v8, v0

    const-string v0, "Answer"

    aput-object v0, v8, v7

    invoke-direct {v6, v5, v8}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4292
    .end local v1    # "descriptorData":[Ljava/lang/String;
    .end local v2    # "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .registers 1

    .line 4236
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .registers 1
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .line 14
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 1
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .line 10
    return-void
.end method
