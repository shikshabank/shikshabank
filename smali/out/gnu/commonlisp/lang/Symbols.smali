.class public Lgnu/commonlisp/lang/Symbols;
.super Ljava/lang/Object;
.source "Symbols.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "environ"    # Lgnu/mapping/Environment;
    .param p1, "symbol"    # Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFunctionBinding(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "symbol"    # Ljava/lang/Object;

    .line 57
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPrintName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "sym"    # Ljava/lang/Object;

    .line 51
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p0, v0, :cond_7

    const-string v0, "nil"

    goto :goto_12

    :cond_7
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/commonlisp/lang/Lisp2;->getString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public static getSymbol(Lgnu/mapping/Environment;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .registers 4
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "sym"    # Ljava/lang/Object;

    .line 35
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p1, v0, :cond_6

    .line 36
    const-string p1, "nil"

    .line 37
    :cond_6
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    goto :goto_19

    :cond_e
    invoke-virtual {p0}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    :goto_19
    return-object v0
.end method

.method public static getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .registers 2
    .param p0, "sym"    # Ljava/lang/Object;

    .line 43
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p0, v0, :cond_6

    .line 44
    const-string p0, "nil"

    .line 45
    :cond_6
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    goto :goto_15

    :cond_e
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method public static isBound(Ljava/lang/Object;)Z
    .registers 5
    .param p0, "sym"    # Ljava/lang/Object;

    .line 22
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    .line 23
    return v1

    .line 24
    :cond_6
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 26
    .local v0, "env":Lgnu/mapping/Environment;
    instance-of v2, p0, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_12

    .line 27
    move-object v2, p0

    check-cast v2, Lgnu/mapping/Symbol;

    .local v2, "symbol":Lgnu/mapping/Symbol;
    goto :goto_1d

    .line 29
    .end local v2    # "symbol":Lgnu/mapping/Symbol;
    :cond_12
    invoke-virtual {v0}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 30
    .restart local v2    # "symbol":Lgnu/mapping/Symbol;
    :goto_1d
    if-eqz v2, :cond_26

    invoke-virtual {v0, v2}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method public static isSymbol(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "val"    # Ljava/lang/Object;

    .line 16
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_f

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-eq p0, v0, :cond_f

    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static setFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "environ"    # Lgnu/mapping/Environment;
    .param p1, "symbol"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p2}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
