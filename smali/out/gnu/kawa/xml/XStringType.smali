.class public Lgnu/kawa/xml/XStringType;
.super Lgnu/kawa/xml/XDataType;
.source "XStringType.java"


# static fields
.field public static final ENTITYType:Lgnu/kawa/xml/XStringType;

.field public static final IDREFType:Lgnu/kawa/xml/XStringType;

.field public static final IDType:Lgnu/kawa/xml/XStringType;

.field public static final NCNameType:Lgnu/kawa/xml/XStringType;

.field public static final NMTOKENType:Lgnu/kawa/xml/XStringType;

.field public static final NameType:Lgnu/kawa/xml/XStringType;

.field static XStringType:Lgnu/bytecode/ClassType;

.field public static final languageType:Lgnu/kawa/xml/XStringType;

.field public static final normalizedStringType:Lgnu/kawa/xml/XStringType;

.field public static final tokenType:Lgnu/kawa/xml/XStringType;


# instance fields
.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 18
    const-string v0, "gnu.kawa.xml.XString"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XStringType;->XStringType:Lgnu/bytecode/ClassType;

    .line 31
    new-instance v0, Lgnu/kawa/xml/XStringType;

    sget-object v1, Lgnu/kawa/xml/XStringType;->stringType:Lgnu/kawa/xml/XDataType;

    const-string v2, "normalizedString"

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    .line 35
    new-instance v1, Lgnu/kawa/xml/XStringType;

    const-string v2, "token"

    const/16 v3, 0x28

    invoke-direct {v1, v2, v0, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v1, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    .line 39
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "language"

    const/16 v3, 0x29

    const-string v5, "[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*"

    invoke-direct {v0, v2, v1, v3, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->languageType:Lgnu/kawa/xml/XStringType;

    .line 43
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "NMTOKEN"

    const/16 v3, 0x2a

    const-string v5, "\\c+"

    invoke-direct {v0, v2, v1, v3, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->NMTOKENType:Lgnu/kawa/xml/XStringType;

    .line 47
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "Name"

    const/16 v3, 0x2b

    invoke-direct {v0, v2, v1, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->NameType:Lgnu/kawa/xml/XStringType;

    .line 51
    new-instance v1, Lgnu/kawa/xml/XStringType;

    const-string v2, "NCName"

    const/16 v3, 0x2c

    invoke-direct {v1, v2, v0, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v1, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    .line 55
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "ID"

    const/16 v3, 0x2d

    invoke-direct {v0, v2, v1, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->IDType:Lgnu/kawa/xml/XStringType;

    .line 59
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "IDREF"

    const/16 v3, 0x2e

    invoke-direct {v0, v2, v1, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->IDREFType:Lgnu/kawa/xml/XStringType;

    .line 63
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "ENTITY"

    const/16 v3, 0x2f

    invoke-direct {v0, v2, v1, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->ENTITYType:Lgnu/kawa/xml/XStringType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "base"    # Lgnu/kawa/xml/XDataType;
    .param p3, "typeCode"    # I
    .param p4, "pattern"    # Ljava/lang/String;

    .line 23
    sget-object v0, Lgnu/kawa/xml/XStringType;->XStringType:Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1, v0, p3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    .line 24
    iput-object p2, p0, Lgnu/kawa/xml/XStringType;->baseType:Lgnu/kawa/xml/XDataType;

    .line 26
    if-eqz p4, :cond_f

    .line 27
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/xml/XStringType;->pattern:Ljava/util/regex/Pattern;

    .line 29
    :cond_f
    return-void
.end method

.method public static makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 151
    sget-object v0, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    invoke-virtual {v0, p0}, Lgnu/kawa/xml/XStringType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/kawa/xml/XString;

    return-object v0
.end method


# virtual methods
.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 140
    instance-of v0, p1, Lgnu/kawa/xml/XString;

    if-eqz v0, :cond_e

    .line 142
    move-object v0, p1

    check-cast v0, Lgnu/kawa/xml/XString;

    .line 143
    .local v0, "xvalue":Lgnu/kawa/xml/XString;
    invoke-virtual {v0}, Lgnu/kawa/xml/XString;->getStringType()Lgnu/kawa/xml/XStringType;

    move-result-object v1

    if-ne v1, p0, :cond_e

    .line 144
    return-object v0

    .line 146
    .end local v0    # "xvalue":Lgnu/kawa/xml/XString;
    :cond_e
    sget-object v0, Lgnu/kawa/xml/XStringType;->stringType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XStringType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 69
    instance-of v0, p1, Lgnu/kawa/xml/XString;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 70
    return v1

    .line 75
    :cond_6
    move-object v0, p1

    check-cast v0, Lgnu/kawa/xml/XString;

    invoke-virtual {v0}, Lgnu/kawa/xml/XString;->getStringType()Lgnu/kawa/xml/XStringType;

    move-result-object v0

    .line 76
    .local v0, "objType":Lgnu/kawa/xml/XDataType;
    :goto_d
    if-eqz v0, :cond_16

    .line 78
    if-ne v0, p0, :cond_13

    .line 79
    const/4 v1, 0x1

    return v1

    .line 80
    :cond_13
    iget-object v0, v0, Lgnu/kawa/xml/XDataType;->baseType:Lgnu/kawa/xml/XDataType;

    goto :goto_d

    .line 82
    :cond_16
    return v1
.end method

.method public matches(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "value"    # Ljava/lang/String;

    .line 92
    iget v0, p0, Lgnu/kawa/xml/XStringType;->typeCode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_5e

    :pswitch_7
    move v0, v2

    .local v0, "status":Z
    move v3, v2

    .line 120
    .local v3, "collapse":Z
    iget-object v4, p0, Lgnu/kawa/xml/XStringType;->pattern:Ljava/util/regex/Pattern;

    if-eqz v4, :cond_41

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_41

    .line 92
    .end local v0    # "status":Z
    .end local v3    # "collapse":Z
    :pswitch_18
    move v0, v2

    .restart local v0    # "status":Z
    move v1, v2

    .line 113
    .local v1, "collapse":Z
    invoke-static {p1}, Lgnu/xml/XName;->isNCName(Ljava/lang/String;)Z

    move-result v0

    .line 114
    goto :goto_42

    .line 92
    .end local v0    # "status":Z
    .end local v1    # "collapse":Z
    :pswitch_1f
    move v0, v2

    .restart local v0    # "status":Z
    move v1, v2

    .line 107
    .restart local v1    # "collapse":Z
    invoke-static {p1}, Lgnu/xml/XName;->isName(Ljava/lang/String;)Z

    move-result v0

    .line 108
    goto :goto_42

    .line 92
    .end local v0    # "status":Z
    .end local v1    # "collapse":Z
    :pswitch_26
    move v0, v2

    .restart local v0    # "status":Z
    move v1, v2

    .line 116
    .restart local v1    # "collapse":Z
    invoke-static {p1}, Lgnu/xml/XName;->isNmToken(Ljava/lang/String;)Z

    move-result v0

    .line 117
    goto :goto_42

    .line 103
    .end local v0    # "status":Z
    .end local v1    # "collapse":Z
    :pswitch_2d
    iget v0, p0, Lgnu/kawa/xml/XStringType;->typeCode:I

    const/16 v3, 0x27

    if-eq v0, v3, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    .line 104
    .local v0, "collapse":Z
    :goto_36
    invoke-static {p1, v0}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-ne p1, v3, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    .line 105
    .local v1, "status":Z
    :goto_3e
    move v0, v1

    goto :goto_42

    .line 120
    .end local v1    # "status":Z
    .local v0, "status":Z
    .restart local v3    # "collapse":Z
    :cond_40
    const/4 v1, 0x0

    :cond_41
    :goto_41
    move v0, v1

    .line 126
    .end local v3    # "collapse":Z
    :goto_42
    if-eqz v0, :cond_46

    const/4 v1, 0x0

    goto :goto_5d

    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a valid XML "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/kawa/xml/XStringType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5d
    return-object v1

    :pswitch_data_5e
    .packed-switch 0x27
        :pswitch_2d
        :pswitch_2d
        :pswitch_7
        :pswitch_26
        :pswitch_1f
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 131
    sget-object v0, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {p1, v0}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XStringType;->matches(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "err":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 135
    new-instance v1, Lgnu/kawa/xml/XString;

    invoke-direct {v1, p1, p0}, Lgnu/kawa/xml/XString;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XStringType;)V

    return-object v1

    .line 134
    :cond_17
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot cast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/xml/XStringType;->name:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
