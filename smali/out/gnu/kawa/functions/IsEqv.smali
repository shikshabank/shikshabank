.class public Lgnu/kawa/functions/IsEqv;
.super Lgnu/mapping/Procedure2;
.source "IsEqv.java"


# instance fields
.field isEq:Lgnu/kawa/functions/IsEq;

.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;Lgnu/kawa/functions/IsEq;)V
    .registers 6
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isEq"    # Lgnu/kawa/functions/IsEq;

    .line 15
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/kawa/functions/IsEqv;->language:Lgnu/expr/Language;

    .line 17
    iput-object p3, p0, Lgnu/kawa/functions/IsEqv;->isEq:Lgnu/kawa/functions/IsEq;

    .line 18
    invoke-virtual {p0, p2}, Lgnu/kawa/functions/IsEqv;->setName(Ljava/lang/String;)V

    .line 19
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompilationHelpers:validateIsEqv"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/IsEqv;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 25
    if-ne p0, p1, :cond_4

    .line 26
    const/4 v0, 0x1

    return v0

    .line 27
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_17

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_17

    .line 28
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v0, v1}, Lgnu/kawa/functions/IsEqual;->numberEquals(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    return v0

    .line 29
    :cond_17
    instance-of v0, p0, Lgnu/text/Char;

    if-nez v0, :cond_22

    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_20

    goto :goto_22

    .line 33
    :cond_20
    const/4 v0, 0x0

    return v0

    .line 32
    :cond_22
    :goto_22
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lgnu/kawa/functions/IsEqv;->language:Lgnu/expr/Language;

    invoke-static {p1, p2}, Lgnu/kawa/functions/IsEqv;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
