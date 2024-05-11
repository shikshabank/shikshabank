.class public Lkawa/standard/IfFeature;
.super Ljava/lang/Object;
.source "IfFeature.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .registers 8
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    const-string v1, "kawa"

    if-ne p0, v1, :cond_6

    .line 23
    return v0

    .line 24
    :cond_6
    const-string v1, "srfi-0"

    if-ne p0, v1, :cond_b

    .line 25
    return v0

    .line 27
    :cond_b
    const-string v1, "srfi-4"

    if-ne p0, v1, :cond_10

    .line 28
    return v0

    .line 29
    :cond_10
    const-string v1, "srfi-6"

    if-ne p0, v1, :cond_15

    .line 30
    return v0

    .line 31
    :cond_15
    const-string v1, "srfi-8"

    if-ne p0, v1, :cond_1a

    .line 32
    return v0

    .line 33
    :cond_1a
    const-string v1, "srfi-9"

    if-ne p0, v1, :cond_1f

    .line 34
    return v0

    .line 35
    :cond_1f
    const-string v1, "srfi-11"

    if-ne p0, v1, :cond_24

    .line 36
    return v0

    .line 37
    :cond_24
    const-string v1, "srfi-16"

    if-ne p0, v1, :cond_29

    .line 38
    return v0

    .line 39
    :cond_29
    const-string v1, "srfi-17"

    if-ne p0, v1, :cond_2e

    .line 40
    return v0

    .line 41
    :cond_2e
    const-string v1, "srfi-23"

    if-ne p0, v1, :cond_33

    .line 42
    return v0

    .line 43
    :cond_33
    const-string v1, "srfi-25"

    if-ne p0, v1, :cond_38

    .line 44
    return v0

    .line 45
    :cond_38
    const-string v1, "srfi-26"

    if-ne p0, v1, :cond_3d

    .line 46
    return v0

    .line 47
    :cond_3d
    const-string v1, "srfi-28"

    if-ne p0, v1, :cond_42

    .line 48
    return v0

    .line 49
    :cond_42
    const-string v1, "srfi-30"

    if-ne p0, v1, :cond_47

    .line 50
    return v0

    .line 51
    :cond_47
    const-string v1, "srfi-39"

    if-ne p0, v1, :cond_4c

    .line 52
    return v0

    .line 71
    :cond_4c
    const-string v1, "in-servlet"

    const-string v2, "in-http-server"

    const/4 v3, 0x0

    if-eq p0, v2, :cond_55

    if-ne p0, v1, :cond_71

    .line 73
    :cond_55
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/ModuleContext;->getFlags()I

    move-result v4

    .line 74
    .local v4, "mflags":I
    if-ne p0, v2, :cond_67

    .line 75
    sget v1, Lgnu/expr/ModuleContext;->IN_HTTP_SERVER:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_65

    goto :goto_66

    :cond_65
    const/4 v0, 0x0

    :goto_66
    return v0

    .line 76
    :cond_67
    if-ne p0, v1, :cond_71

    .line 77
    sget v1, Lgnu/expr/ModuleContext;->IN_SERVLET:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    :goto_70
    return v0

    .line 80
    .end local v4    # "mflags":I
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%provide%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "provide_name":Ljava/lang/String;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v2

    .line 82
    .local v2, "comp":Lgnu/expr/Compilation;
    const/4 v4, -0x1

    invoke-virtual {v2, v1, v4}, Lgnu/expr/Compilation;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v4

    .line 83
    .local v4, "decl":Lgnu/expr/Declaration;
    if-eqz v4, :cond_9d

    const-wide/32 v5, 0x10000

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-nez v5, :cond_9d

    .line 84
    return v0

    .line 85
    :cond_9d
    return v3
.end method

.method public static testFeature(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "form"    # Ljava/lang/Object;

    .line 10
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_b

    .line 12
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 13
    .local v0, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    .line 15
    .end local v0    # "sf":Lkawa/lang/SyntaxForm;
    :cond_b
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_16

    instance-of v0, p0, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_14

    goto :goto_16

    .line 17
    :cond_14
    const/4 v0, 0x0

    return v0

    .line 16
    :cond_16
    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkawa/standard/IfFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
