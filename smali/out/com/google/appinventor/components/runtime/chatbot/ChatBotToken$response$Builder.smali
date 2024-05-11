.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$responseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$responseOrBuilder;"
    }
.end annotation


# instance fields
.field private answer_:Ljava/lang/Object;

.field private bitField0_:I

.field private status_:J

.field private uuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 3783
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 3933
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    .line 4013
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4089
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 3784
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->maybeForceBuilderInitialization()V

    .line 3785
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 3789
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 3933
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    .line 4013
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4089
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 3790
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->maybeForceBuilderInitialization()V

    .line 3791
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3772
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 3794
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->access$600()Z

    .line 3796
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 3876
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3766
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 3766
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 3

    .line 3820
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    .line 3821
    .local v0, "result":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3824
    return-object v0

    .line 3822
    :cond_b
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 6

    .line 3828
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response-IA;)V

    .line 3829
    .local v0, "result":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 3830
    .local v1, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3831
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3832
    or-int/lit8 v2, v2, 0x1

    .line 3834
    :cond_10
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;J)V

    .line 3835
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3836
    or-int/lit8 v2, v2, 0x2

    .line 3838
    :cond_1c
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->status_:J

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fputstatus_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;J)V

    .line 3839
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3840
    or-int/lit8 v2, v2, 0x4

    .line 3842
    :cond_28
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fputuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Ljava/lang/Object;)V

    .line 3843
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 3844
    or-int/lit8 v2, v2, 0x8

    .line 3846
    :cond_35
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fputanswer_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Ljava/lang/Object;)V

    .line 3847
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;I)V

    .line 3848
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onBuilt()V

    .line 3849
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 4

    .line 3798
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 3799
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    .line 3800
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 3801
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->status_:J

    .line 3802
    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 3803
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 3804
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 3805
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 3806
    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 3807
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAnswer()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 2

    .line 4146
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4147
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getAnswer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4148
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4149
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 3862
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 3866
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearStatus()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3

    .line 4007
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4008
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->status_:J

    .line 4009
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4010
    return-object p0
.end method

.method public clearUuid()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 2

    .line 4070
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4071
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4072
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4073
    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3

    .line 3959
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 3960
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    .line 3961
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 3962
    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 2

    .line 3853
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

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

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAnswer()Ljava/lang/String;
    .registers 5

    .line 4100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4101
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_16

    .line 4102
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 4104
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4105
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4106
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4108
    :cond_15
    return-object v2

    .line 4110
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_16
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getAnswerBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 4118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4119
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 4120
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 4121
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 4123
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4124
    return-object v1

    .line 4126
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .registers 2

    .line 3816
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .line 3766
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 3812
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()J
    .registers 3

    .line 3984
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->status_:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 5

    .line 4024
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4025
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_16

    .line 4026
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 4028
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4029
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4030
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4032
    :cond_15
    return-object v2

    .line 4034
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_16
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 4042
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4043
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 4044
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 4045
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 4047
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4048
    return-object v1

    .line 4050
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getVersion()J
    .registers 3

    .line 3944
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    return-wide v0
.end method

.method public hasAnswer()Z
    .registers 3

    .line 4094
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

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

    .line 3974
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

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

    .line 4018
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

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

    .line 3938
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

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

    .line 3777
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_response_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 3778
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 3777
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 3911
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 4
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3888
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 3889
    :cond_7
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3890
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 3892
    :cond_14
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3893
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getStatus()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setStatus(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 3895
    :cond_21
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3896
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 3897
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fgetuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 3898
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 3900
    :cond_36
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasAnswer()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3901
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 3902
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fgetanswer_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 3903
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 3905
    :cond_4b
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->access$700(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 3906
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 3907
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3918
    const/4 v0, 0x0

    .line 3920
    .local v0, "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    :try_start_1
    sget-object v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_9} :catch_12
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    move-object v0, v1

    .line 3925
    if-eqz v0, :cond_f

    .line 3926
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 3929
    :cond_f
    return-object p0

    .line 3925
    :catchall_10
    move-exception v1

    goto :goto_1f

    .line 3921
    :catch_12
    move-exception v1

    .line 3922
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_13
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-object v0, v2

    .line 3923
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v2
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_10

    .line 3925
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_1f
    if-eqz v0, :cond_24

    .line 3926
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 3928
    :cond_24
    throw v1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .line 3879
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    if-eqz v0, :cond_c

    .line 3880
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0

    .line 3882
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 3883
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3766
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

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

    .line 3766
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

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

    .line 3766
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

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

    .line 3766
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 4171
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAnswer(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 4134
    if-eqz p1, :cond_e

    .line 4137
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4138
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4139
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4140
    return-object p0

    .line 4135
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setAnswerBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4156
    if-eqz p1, :cond_e

    .line 4159
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4160
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4161
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4162
    return-object p0

    .line 4157
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 3858
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3766
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 3766
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 5
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 3871
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 3766
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .line 3766
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 4
    .param p1, "value"    # J

    .line 3994
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 3995
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->status_:J

    .line 3996
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 3997
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 4166
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 3766
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUuid(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 4058
    if-eqz p1, :cond_e

    .line 4061
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4062
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4063
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4064
    return-object p0

    .line 4059
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setUuidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4080
    if-eqz p1, :cond_e

    .line 4083
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4084
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4085
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4086
    return-object p0

    .line 4081
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .registers 4
    .param p1, "value"    # J

    .line 3950
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 3951
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    .line 3952
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 3953
    return-object p0
.end method
