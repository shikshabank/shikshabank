.class public Lgnu/bytecode/Access;
.super Ljava/lang/Object;
.source "Access.java"


# static fields
.field public static final ABSTRACT:S = 0x400s

.field public static final ANNOTATION:S = 0x2000s

.field public static final BRIDGE:S = 0x40s

.field public static final CLASS_CONTEXT:C = 'C'

.field public static final CLASS_MODIFIERS:S = 0x7631s

.field public static final ENUM:S = 0x4000s

.field public static final FIELD_CONTEXT:C = 'F'

.field public static final FIELD_MODIFIERS:S = 0x50dfs

.field public static final FINAL:S = 0x10s

.field public static final INNERCLASS_CONTEXT:C = 'I'

.field public static final INNERCLASS_MODIFIERS:S = 0x761fs

.field public static final INTERFACE:S = 0x200s

.field public static final METHOD_CONTEXT:C = 'M'

.field public static final METHOD_MODIFIERS:S = 0x1dffs

.field public static final NATIVE:S = 0x100s

.field public static final PRIVATE:S = 0x2s

.field public static final PROTECTED:S = 0x4s

.field public static final PUBLIC:S = 0x1s

.field public static final STATIC:S = 0x8s

.field public static final STRICT:S = 0x800s

.field public static final SUPER:S = 0x20s

.field public static final SYNCHRONIZED:S = 0x20s

.field public static final SYNTHETIC:S = 0x1000s

.field public static final TRANSIENT:S = 0x80s

.field public static final VARARGS:S = 0x80s

.field public static final VOLATILE:S = 0x40s


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "flags"    # I

    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(IC)Ljava/lang/String;
    .registers 8
    .param p0, "flags"    # I
    .param p1, "kind"    # C

    .line 71
    const/16 v0, 0x43

    const/16 v1, 0x4d

    if-ne p1, v0, :cond_9

    const/16 v2, 0x7631

    goto :goto_1e

    :cond_9
    const/16 v2, 0x49

    if-ne p1, v2, :cond_10

    const/16 v2, 0x761f

    goto :goto_1e

    :cond_10
    const/16 v2, 0x46

    if-ne p1, v2, :cond_17

    const/16 v2, 0x50df

    goto :goto_1e

    :cond_17
    if-ne p1, v1, :cond_1c

    const/16 v2, 0x1dff

    goto :goto_1e

    :cond_1c
    const/16 v2, 0x7fff

    .line 77
    .local v2, "mask":S
    :goto_1e
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, p0

    int-to-short v3, v3

    .line 78
    .local v3, "bad_flags":S
    and-int/2addr p0, v2

    .line 79
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v4, "buf":Ljava/lang/StringBuffer;
    and-int/lit8 v5, p0, 0x1

    if-eqz v5, :cond_31

    const-string v5, " public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_31
    and-int/lit8 v5, p0, 0x2

    if-eqz v5, :cond_3a

    const-string v5, " private"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_3a
    and-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_43

    const-string v5, " protected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_43
    and-int/lit8 v5, p0, 0x8

    if-eqz v5, :cond_4c

    const-string v5, " static"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_4c
    and-int/lit8 v5, p0, 0x10

    if-eqz v5, :cond_55

    const-string v5, " final"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_55
    and-int/lit8 v5, p0, 0x20

    if-eqz v5, :cond_63

    .line 86
    if-ne p1, v0, :cond_5e

    const-string v0, " super"

    goto :goto_60

    :cond_5e
    const-string v0, " synchronized"

    :goto_60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_63
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_71

    .line 88
    if-ne p1, v1, :cond_6c

    const-string v0, " bridge"

    goto :goto_6e

    :cond_6c
    const-string v0, " volatile"

    :goto_6e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_71
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_7f

    .line 90
    if-ne p1, v1, :cond_7a

    const-string v0, " varargs"

    goto :goto_7c

    :cond_7a
    const-string v0, " transient"

    :goto_7c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_7f
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_88

    const-string v0, " native"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :cond_88
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_91

    const-string v0, " interface"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_91
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_9a

    const-string v0, " abstract"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_9a
    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_a3

    const-string v0, " strict"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :cond_a3
    and-int/lit16 v0, p0, 0x4000

    if-eqz v0, :cond_ac

    const-string v0, " enum"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_ac
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_b5

    const-string v0, " synthetic"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_b5
    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_be

    const-string v0, " annotation"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_be
    if-eqz v3, :cond_cc

    .line 100
    const-string v0, " unknown-flags:0x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_cc
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
