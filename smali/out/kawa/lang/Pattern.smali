.class public abstract Lkawa/lang/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Lgnu/text/Printable;


# static fields
.field private static matchArgs:[Lgnu/bytecode/Type;

.field public static final matchPatternMethod:Lgnu/bytecode/Method;

.field public static typePattern:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 35
    const-string v0, "kawa.lang.Pattern"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/lang/Pattern;->typePattern:Lgnu/bytecode/ClassType;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lgnu/bytecode/Type;

    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sput-object v0, Lkawa/lang/Pattern;->matchArgs:[Lgnu/bytecode/Type;

    .line 38
    sget-object v1, Lkawa/lang/Pattern;->typePattern:Lgnu/bytecode/ClassType;

    sget-object v3, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    const-string v4, "match"

    invoke-virtual {v1, v4, v0, v3, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Pattern;->matchPatternMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
.end method

.method public match(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lkawa/lang/Pattern;->varCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    .local v0, "vars":[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v1, v0

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public abstract varCount()I
.end method
