.class public Lgnu/kawa/reflect/StaticFieldLocation;
.super Lgnu/kawa/reflect/FieldLocation;
.source "StaticFieldLocation.java"


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Lgnu/bytecode/ClassType;
    .param p2, "mname"    # Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "fname"    # Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 21
    return-void
.end method

.method public static define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;
    .registers 6
    .param p0, "environ"    # Lgnu/mapping/Environment;
    .param p1, "sym"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "cname"    # Ljava/lang/String;
    .param p4, "fname"    # Ljava/lang/String;

    .line 35
    new-instance v0, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-direct {v0, p3, p4}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v0, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 37
    return-object v0
.end method

.method public static make(Lgnu/expr/Declaration;)Lgnu/kawa/reflect/StaticFieldLocation;
    .registers 5
    .param p0, "decl"    # Lgnu/expr/Declaration;

    .line 42
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 43
    .local v0, "fld":Lgnu/bytecode/Field;
    invoke-virtual {v0}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 44
    .local v1, "ctype":Lgnu/bytecode/ClassType;
    new-instance v2, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 45
    .local v2, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v2, p0}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 47
    return-object v2
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;
    .registers 3
    .param p0, "cname"    # Ljava/lang/String;
    .param p1, "fldName"    # Ljava/lang/String;

    .line 52
    new-instance v0, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 25
    invoke-super {p0, p1}, Lgnu/kawa/reflect/FieldLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, "val":Ljava/lang/Object;
    instance-of v1, v0, Lkawa/lang/Macro;

    if-eqz v1, :cond_b

    .line 27
    invoke-virtual {p0}, Lgnu/kawa/reflect/StaticFieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    .line 28
    :cond_b
    return-object v0
.end method
