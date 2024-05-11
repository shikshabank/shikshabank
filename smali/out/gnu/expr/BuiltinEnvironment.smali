.class public Lgnu/expr/BuiltinEnvironment;
.super Lgnu/mapping/Environment;
.source "BuiltinEnvironment.java"


# static fields
.field static final instance:Lgnu/expr/BuiltinEnvironment;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lgnu/expr/BuiltinEnvironment;

    invoke-direct {v0}, Lgnu/expr/BuiltinEnvironment;-><init>()V

    sput-object v0, Lgnu/expr/BuiltinEnvironment;->instance:Lgnu/expr/BuiltinEnvironment;

    .line 12
    const-string v1, "language-builtins"

    invoke-virtual {v0, v1}, Lgnu/expr/BuiltinEnvironment;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lgnu/mapping/Environment;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/expr/BuiltinEnvironment;
    .registers 1

    .line 15
    sget-object v0, Lgnu/expr/BuiltinEnvironment;->instance:Lgnu/expr/BuiltinEnvironment;

    return-object v0
.end method


# virtual methods
.method public addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .registers 5
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "prop"    # Ljava/lang/Object;
    .param p3, "loc"    # Lgnu/mapping/Location;

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lgnu/expr/BuiltinEnvironment;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public enumerateLocations()Lgnu/mapping/LocationEnumeration;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lgnu/expr/BuiltinEnvironment;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/Environment;->enumerateLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLangEnvironment()Lgnu/mapping/Environment;
    .registers 3

    .line 19
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 20
    .local v0, "lang":Lgnu/expr/Language;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Lgnu/expr/Language;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .registers 6
    .param p1, "key"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I
    .param p4, "create"    # Z

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .registers 3
    .param p1, "it"    # Lgnu/mapping/LocationEnumeration;

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .registers 6
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 25
    sget-object v0, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_6

    .line 26
    return-object v1

    .line 27
    :cond_6
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 28
    .local v0, "lang":Lgnu/expr/Language;
    if-nez v0, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {v0, p1, p2, p3}, Lgnu/expr/Language;->lookupBuiltin(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    :goto_11
    return-object v1
.end method
