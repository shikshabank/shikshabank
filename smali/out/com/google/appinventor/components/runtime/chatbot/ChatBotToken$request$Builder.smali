.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$requestOrBuilder;"
    }
.end annotation


# instance fields
.field private apikey_:Ljava/lang/Object;

.field private bitField0_:I

.field private model_:Ljava/lang/Object;

.field private provider_:Ljava/lang/Object;

.field private question_:Ljava/lang/Object;

.field private system_:Ljava/lang/Object;

.field private tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

.field private uuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 2439
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2642
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2792
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2868
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2944
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3020
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3096
    const-string v1, "chatgpt"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3172
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 2440
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->maybeForceBuilderInitialization()V

    .line 2441
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 2445
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2642
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2792
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2868
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2944
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3020
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3096
    const-string v1, "chatgpt"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3172
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 2446
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->maybeForceBuilderInitialization()V

    .line 2447
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2428
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2781
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2782
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2784
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v1

    .line 2785
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2786
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2789
    :cond_1a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 2450
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->access$400()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2451
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2453
    :cond_9
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2565
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 3

    .line 2489
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    .line 2490
    .local v0, "result":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2493
    return-object v0

    .line 2491
    :cond_b
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 6

    .line 2497
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request-IA;)V

    .line 2498
    .local v0, "result":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2499
    .local v1, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2500
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2501
    or-int/lit8 v2, v2, 0x1

    .line 2503
    :cond_10
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;J)V

    .line 2504
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2505
    or-int/lit8 v2, v2, 0x2

    .line 2507
    :cond_1c
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_26

    .line 2508
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputtoken_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)V

    goto :goto_2f

    .line 2510
    :cond_26
    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputtoken_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)V

    .line 2512
    :goto_2f
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 2513
    or-int/lit8 v2, v2, 0x4

    .line 2515
    :cond_36
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2516
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 2517
    or-int/lit8 v2, v2, 0x8

    .line 2519
    :cond_43
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputquestion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2520
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 2521
    or-int/lit8 v2, v2, 0x10

    .line 2523
    :cond_50
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputsystem_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2524
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 2525
    or-int/lit8 v2, v2, 0x20

    .line 2527
    :cond_5d
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputapikey_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2528
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 2529
    or-int/lit8 v2, v2, 0x40

    .line 2531
    :cond_6a
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputprovider_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2532
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_77

    .line 2533
    or-int/lit16 v2, v2, 0x80

    .line 2535
    :cond_77
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputmodel_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2536
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;I)V

    .line 2537
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onBuilt()V

    .line 2538
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 4

    .line 2455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2456
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2457
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_15

    .line 2459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    goto :goto_18

    .line 2461
    :cond_15
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2463
    :goto_18
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2464
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2465
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2466
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2467
    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2468
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2469
    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2470
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 2471
    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2472
    const-string v2, "chatgpt"

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 2473
    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2474
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 2475
    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2476
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearApikey()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 2

    .line 3077
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3078
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3079
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3080
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2551
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearModel()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 2

    .line 3229
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3230
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3231
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3232
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 2555
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearProvider()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 2

    .line 3153
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3154
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3155
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3156
    return-object p0
.end method

.method public clearQuestion()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 2

    .line 2925
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2926
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getQuestion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2927
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2928
    return-object p0
.end method

.method public clearSystem()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 2

    .line 3001
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3002
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getSystem()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3003
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3004
    return-object p0
.end method

.method public clearToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 2

    .line 2747
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    .line 2748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2749
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_e

    .line 2751
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2753
    :goto_e
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2754
    return-object p0
.end method

.method public clearUuid()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 2

    .line 2849
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2850
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2851
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2852
    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3

    .line 2668
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2669
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2670
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2671
    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 2

    .line 2542
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApikey()Ljava/lang/String;
    .registers 5

    .line 3031
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3032
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_16

    .line 3033
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3035
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3036
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3037
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3039
    :cond_15
    return-object v2

    .line 3041
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_16
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getApikeyBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 3049
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3050
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 3051
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3052
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3054
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3055
    return-object v1

    .line 3057
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .registers 2

    .line 2485
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2481
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 5

    .line 3183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3184
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_16

    .line 3185
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3187
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3188
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3189
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3191
    :cond_15
    return-object v2

    .line 3193
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_16
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 3201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3202
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 3203
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3204
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3206
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3207
    return-object v1

    .line 3209
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getProvider()Ljava/lang/String;
    .registers 5

    .line 3107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3108
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_16

    .line 3109
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3111
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3112
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3113
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3115
    :cond_15
    return-object v2

    .line 3117
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_16
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 3125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3126
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 3127
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3128
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3130
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3131
    return-object v1

    .line 3133
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getQuestion()Ljava/lang/String;
    .registers 5

    .line 2879
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2880
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_16

    .line 2881
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2883
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2884
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2885
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2887
    :cond_15
    return-object v2

    .line 2889
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_16
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getQuestionBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 2897
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2898
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 2899
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2900
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2902
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2903
    return-object v1

    .line 2905
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getSystem()Ljava/lang/String;
    .registers 5

    .line 2955
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2956
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_16

    .line 2957
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2959
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2960
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2961
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2963
    :cond_15
    return-object v2

    .line 2965
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_16
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getSystemBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 2973
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2974
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 2975
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2976
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2978
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2979
    return-object v1

    .line 2981
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .registers 2

    .line 2687
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2688
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2690
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object v0
.end method

.method public getTokenBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    .registers 2

    .line 2760
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2761
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2762
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;
    .registers 2

    .line 2768
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2769
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;

    return-object v0

    .line 2771
    :cond_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-nez v0, :cond_14

    .line 2772
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    goto :goto_15

    :cond_14
    nop

    .line 2771
    :goto_15
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 5

    .line 2803
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2804
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_16

    .line 2805
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2807
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2808
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2809
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2811
    :cond_15
    return-object v2

    .line 2813
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_16
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 2821
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2822
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 2823
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2824
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2826
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2827
    return-object v1

    .line 2829
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getVersion()J
    .registers 3

    .line 2653
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    return-wide v0
.end method

.method public hasApikey()Z
    .registers 3

    .line 3025
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

    .line 3177
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

    .line 3101
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

    .line 2873
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

    .line 2949
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

    .line 2681
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

    .line 2797
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

    .line 2647
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2433
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_request_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2434
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 2433
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 2620
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 4
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2577
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 2578
    :cond_7
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2579
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2581
    :cond_14
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2582
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2584
    :cond_21
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2585
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2586
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2587
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2589
    :cond_36
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasQuestion()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2590
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2591
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetquestion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2592
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2594
    :cond_4b
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasSystem()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2595
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2596
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetsystem_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2597
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2599
    :cond_60
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasApikey()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2600
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2601
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetapikey_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 2602
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2604
    :cond_75
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasProvider()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2605
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2606
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetprovider_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 2607
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2609
    :cond_8a
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 2610
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2611
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetmodel_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 2612
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2614
    :cond_9f
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->access$500(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2615
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2616
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2627
    const/4 v0, 0x0

    .line 2629
    .local v0, "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    :try_start_1
    sget-object v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_9} :catch_12
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    move-object v0, v1

    .line 2634
    if-eqz v0, :cond_f

    .line 2635
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2638
    :cond_f
    return-object p0

    .line 2634
    :catchall_10
    move-exception v1

    goto :goto_1f

    .line 2630
    :catch_12
    move-exception v1

    .line 2631
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_13
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-object v0, v2

    .line 2632
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v2
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_10

    .line 2634
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_1f
    if-eqz v0, :cond_24

    .line 2635
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2637
    :cond_24
    throw v1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .line 2568
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    if-eqz v0, :cond_c

    .line 2569
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0

    .line 2571
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 2572
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 5
    .param p1, "value"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2727
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_2b

    .line 2728
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-eqz v0, :cond_25

    .line 2730
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 2731
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2732
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->newBuilder(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    goto :goto_27

    .line 2734
    :cond_25
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2736
    :goto_27
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_2e

    .line 2738
    :cond_2b
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2740
    :goto_2e
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2741
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 3254
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setApikey(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3065
    if-eqz p1, :cond_e

    .line 3068
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3069
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3070
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3071
    return-object p0

    .line 3066
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setApikeyBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3087
    if-eqz p1, :cond_e

    .line 3090
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3091
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3092
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3093
    return-object p0

    .line 3088
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2547
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 2422
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3217
    if-eqz p1, :cond_e

    .line 3220
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3221
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3222
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3223
    return-object p0

    .line 3218
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setModelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3239
    if-eqz p1, :cond_e

    .line 3242
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3243
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3244
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3245
    return-object p0

    .line 3240
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3141
    if-eqz p1, :cond_e

    .line 3144
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3145
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3146
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3147
    return-object p0

    .line 3142
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setProviderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3163
    if-eqz p1, :cond_e

    .line 3166
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3167
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3168
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3169
    return-object p0

    .line 3164
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setQuestion(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 2913
    if-eqz p1, :cond_e

    .line 2916
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2917
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2918
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2919
    return-object p0

    .line 2914
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setQuestionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2935
    if-eqz p1, :cond_e

    .line 2938
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2939
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2940
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2941
    return-object p0

    .line 2936
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 5
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 2560
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 2422
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .line 2422
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSystem(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 2989
    if-eqz p1, :cond_e

    .line 2992
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2993
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2994
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2995
    return-object p0

    .line 2990
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setSystemBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3011
    if-eqz p1, :cond_e

    .line 3014
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3015
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3016
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3017
    return-object p0

    .line 3012
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 4
    .param p1, "builderForValue"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    .line 2714
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2715
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2716
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_15

    .line 2718
    :cond_e
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2720
    :goto_15
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2721
    return-object p0
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2697
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_12

    .line 2698
    if-eqz p1, :cond_c

    .line 2701
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2702
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_15

    .line 2699
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2704
    :cond_12
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2706
    :goto_15
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2707
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 3249
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 2422
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUuid(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 2837
    if-eqz p1, :cond_e

    .line 2840
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2841
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2842
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2843
    return-object p0

    .line 2838
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setUuidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2859
    if-eqz p1, :cond_e

    .line 2862
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2863
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2864
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2865
    return-object p0

    .line 2860
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .registers 4
    .param p1, "value"    # J

    .line 2659
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2660
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2661
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2662
    return-object p0
.end method
