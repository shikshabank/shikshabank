.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

.field public static final LANGUAGECODE_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCELANGUAGE_FIELD_NUMBER:I = 0x5

.field public static final TARGETLANGUAGE_FIELD_NUMBER:I = 0x6

.field public static final TOKEN_FIELD_NUMBER:I = 0x2

.field public static final TOTRANSLATE_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile languagecode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile sourcelanguage_:Ljava/lang/Object;

.field private volatile targetlanguage_:Ljava/lang/Object;

.field private token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

.field private volatile totranslate_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method static bridge synthetic -$$Nest$fgetlanguagecode_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsourcelanguage_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettargetlanguage_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettotranslate_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;I)V
    .registers 2

    iput p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlanguagecode_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsourcelanguage_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtargetlanguage_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtoken_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtotranslate_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 2934
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2942
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1733
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 2040
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    .line 1734
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    .line 1735
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1736
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    .line 1737
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    .line 1738
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    .line 1739
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

    .line 1750
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>()V

    .line 1751
    const/4 v0, 0x0

    .line 1753
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 1755
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 1756
    .local v2, "done":Z
    :goto_9
    if-nez v2, :cond_a5

    .line 1757
    :try_start_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1758
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_b0

    .line 1763
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_84

    .line 1806
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1807
    .local v4, "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1808
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    .line 1809
    goto :goto_87

    .line 1800
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1801
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1802
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    .line 1803
    goto :goto_87

    .line 1794
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1795
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1796
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    .line 1797
    goto :goto_87

    .line 1788
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_3f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1789
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1790
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1791
    goto :goto_87

    .line 1775
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_4c
    const/4 v4, 0x0

    .line 1776
    .local v4, "subBuilder":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_5a

    .line 1777
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v5

    move-object v4, v5

    .line 1779
    :cond_5a
    sget-object v5, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1780
    if-eqz v4, :cond_6f

    .line 1781
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1782
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1784
    :cond_6f
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1785
    goto :goto_87

    .line 1770
    .end local v4    # "subBuilder":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    :sswitch_75
    iget v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1771
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J
    :try_end_81
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_81} :catch_95
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_81} :catch_8a
    .catchall {:try_start_b .. :try_end_81} :catchall_88

    .line 1772
    goto :goto_87

    .line 1760
    :sswitch_82
    const/4 v2, 0x1

    .line 1761
    goto :goto_87

    .line 1763
    :goto_84
    if-nez v4, :cond_87

    .line 1765
    const/4 v2, 0x1

    .line 1812
    .end local v3    # "tag":I
    :cond_87
    :goto_87
    goto :goto_9

    .line 1819
    .end local v2    # "done":Z
    :catchall_88
    move-exception v2

    goto :goto_9b

    .line 1815
    :catch_8a
    move-exception v2

    .line 1816
    .local v2, "e":Ljava/io/IOException;
    :try_start_8b
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1817
    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3

    .line 1813
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_95
    move-exception v2

    .line 1814
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_9b
    .catchall {:try_start_8b .. :try_end_9b} :catchall_88

    .line 1819
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_9b
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1820
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->makeExtensionsImmutable()V

    .line 1821
    throw v2

    .line 1819
    :cond_a5
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1820
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->makeExtensionsImmutable()V

    .line 1821
    nop

    .line 1822
    return-void

    :sswitch_data_b0
    .sparse-switch
        0x0 -> :sswitch_82
        0x8 -> :sswitch_75
        0x12 -> :sswitch_4c
        0x1a -> :sswitch_3f
        0x22 -> :sswitch_32
        0x2a -> :sswitch_25
        0x32 -> :sswitch_18
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1731
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 2040
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    .line 1732
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 1725
    sget-boolean v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 1725
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 1

    .line 2938
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1825
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->-$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 1

    .line 2247
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2250
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2221
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2222
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2221
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2228
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2229
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2228
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2189
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 3
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2195
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2234
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2235
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2234
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 3
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2241
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2242
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2241
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2209
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2210
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2209
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2216
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2217
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2216
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2199
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2205
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;",
            ">;"
        }
    .end annotation

    .line 2952
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2106
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2107
    return v0

    .line 2109
    :cond_4
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    if-nez v1, :cond_d

    .line 2110
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2112
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2114
    .local v1, "other":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    const/4 v2, 0x1

    .line 2115
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    move v2, v4

    .line 2116
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2117
    if-eqz v2, :cond_38

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getVersion()J

    move-result-wide v4

    .line 2118
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getVersion()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    :goto_39
    move v2, v4

    .line 2120
    :cond_3a
    if-eqz v2, :cond_48

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v5

    if-ne v4, v5, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    move v2, v4

    .line 2121
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 2122
    if-eqz v2, :cond_62

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v4

    .line 2123
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    const/4 v4, 0x1

    goto :goto_63

    :cond_62
    const/4 v4, 0x0

    :goto_63
    move v2, v4

    .line 2125
    :cond_64
    if-eqz v2, :cond_72

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v5

    if-ne v4, v5, :cond_72

    const/4 v4, 0x1

    goto :goto_73

    :cond_72
    const/4 v4, 0x0

    :goto_73
    move v2, v4

    .line 2126
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2127
    if-eqz v2, :cond_8c

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTotranslate()Ljava/lang/String;

    move-result-object v4

    .line 2128
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTotranslate()Ljava/lang/String;

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

    .line 2130
    :cond_8e
    if-eqz v2, :cond_9c

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v5

    if-ne v4, v5, :cond_9c

    const/4 v4, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v4, 0x0

    :goto_9d
    move v2, v4

    .line 2131
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 2132
    if-eqz v2, :cond_b6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getLanguagecode()Ljava/lang/String;

    move-result-object v4

    .line 2133
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getLanguagecode()Ljava/lang/String;

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

    .line 2135
    :cond_b8
    if-eqz v2, :cond_c6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v5

    if-ne v4, v5, :cond_c6

    const/4 v4, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v4, 0x0

    :goto_c7
    move v2, v4

    .line 2136
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 2137
    if-eqz v2, :cond_e0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getSourcelanguage()Ljava/lang/String;

    move-result-object v4

    .line 2138
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getSourcelanguage()Ljava/lang/String;

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

    .line 2140
    :cond_e2
    if-eqz v2, :cond_f0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v5

    if-ne v4, v5, :cond_f0

    const/4 v4, 0x1

    goto :goto_f1

    :cond_f0
    const/4 v4, 0x0

    :goto_f1
    move v2, v4

    .line 2141
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 2142
    if-eqz v2, :cond_10a

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTargetlanguage()Ljava/lang/String;

    move-result-object v4

    .line 2143
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTargetlanguage()Ljava/lang/String;

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

    .line 2145
    :cond_10c
    if-eqz v2, :cond_119

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_119

    goto :goto_11a

    :cond_119
    const/4 v0, 0x0

    .line 2146
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_11a
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2

    .line 2961
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getLanguagecode()Ljava/lang/String;
    .registers 5

    .line 1926
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    .line 1936
    :cond_19
    return-object v2
.end method

.method public getLanguagecodeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 1944
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    .line 1950
    return-object v1

    .line 1952
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
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;",
            ">;"
        }
    .end annotation

    .line 2957
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 2074
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedSize:I

    .line 2075
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2077
    :cond_6
    const/4 v0, 0x0

    .line 2078
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    .line 2079
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    .line 2080
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2082
    :cond_14
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_24

    .line 2083
    nop

    .line 2084
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2086
    :cond_24
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_32

    .line 2087
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2089
    :cond_32
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_40

    .line 2090
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2092
    :cond_40
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4f

    .line 2093
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2095
    :cond_4f
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5e

    .line 2096
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2098
    :cond_5e
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2099
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedSize:I

    .line 2100
    return v0
.end method

.method public getSourcelanguage()Ljava/lang/String;
    .registers 5

    .line 1968
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    .line 1978
    :cond_19
    return-object v2
.end method

.method public getSourcelanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 1986
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    .line 1992
    return-object v1

    .line 1994
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getTargetlanguage()Ljava/lang/String;
    .registers 5

    .line 2010
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    .line 2020
    :cond_19
    return-object v2
.end method

.method public getTargetlanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 2028
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    .line 2034
    return-object v1

    .line 2036
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 2

    .line 1863
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;
    .registers 2

    .line 1869
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTotranslate()Ljava/lang/String;
    .registers 5

    .line 1884
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1885
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1886
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1888
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1890
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1891
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1892
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1894
    :cond_19
    return-object v2
.end method

.method public getTotranslateBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 1902
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1903
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 1904
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1905
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 1907
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1908
    return-object v1

    .line 1910
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_10
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    .line 1744
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .registers 3

    .line 1848
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    return-wide v0
.end method

.method public hasLanguagecode()Z
    .registers 3

    .line 1920
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

.method public hasSourcelanguage()Z
    .registers 3

    .line 1962
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

.method public hasTargetlanguage()Z
    .registers 3

    .line 2004
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

.method public hasToken()Z
    .registers 3

    .line 1857
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

.method public hasTotranslate()Z
    .registers 3

    .line 1878
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

    .line 1842
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

    .line 2151
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedHashCode:I

    if-eqz v0, :cond_7

    .line 2152
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedHashCode:I

    return v0

    .line 2154
    :cond_7
    const/16 v0, 0x29

    .line 2155
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2156
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2157
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 2158
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 2159
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getVersion()J

    move-result-wide v2

    .line 2158
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 2161
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_29
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2162
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 2163
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2165
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3e
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2166
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 2167
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTotranslate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2169
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_53
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2170
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 2171
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getLanguagecode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2173
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_68
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2174
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 2175
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getSourcelanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2177
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_7d
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 2178
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 2179
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTargetlanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2181
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_92
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 2182
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedHashCode:I

    .line 2183
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1830
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->-$$Nest$sfgetinternal_static_request_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 1831
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 1830
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2042
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    .line 2043
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 2044
    :cond_6
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    .line 2046
    :cond_a
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    .line 2047
    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 2

    .line 2245
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 2260
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder-IA;)V

    .line 2261
    .local v0, "builder":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 1725
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3

    .line 2253
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2254
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder-IA;)V

    goto :goto_14

    :cond_b
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    .line 2253
    :goto_14
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

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

    .line 2052
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 2053
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2055
    :cond_b
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_18

    .line 2056
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2058
    :cond_18
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_24

    .line 2059
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2061
    :cond_24
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_30

    .line 2062
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2064
    :cond_30
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3d

    .line 2065
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2067
    :cond_3d
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4a

    .line 2068
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2070
    :cond_4a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2071
    return-void
.end method
