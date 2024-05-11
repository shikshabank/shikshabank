.class public Lkawa/lib/characters;
.super Lgnu/expr/ModuleBody;
.source "characters.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ncharacters.scm\nScheme\n*S Scheme\n*F\n+ 1 characters.scm\n/u2/home/jis/ai2-kawa/kawa/lib/characters.scm\n*L\n1#1,21:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/characters;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field public static final char$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Gr$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Ls$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mn$Grinteger:Lgnu/expr/ModuleMethod;

.field public static final char$Qu:Lgnu/expr/ModuleMethod;

.field public static final integer$Mn$Grchar:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char>=?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/characters;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "char<=?"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/characters;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "char>?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/characters;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "char<?"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/characters;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "char=?"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/characters;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "integer->char"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/characters;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "char->integer"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/characters;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "char?"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/characters;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lkawa/lib/characters;

    invoke-direct {v8}, Lkawa/lib/characters;-><init>()V

    sput-object v8, Lkawa/lib/characters;->$instance:Lkawa/lib/characters;

    new-instance v9, Lgnu/expr/ModuleMethod;

    const/4 v10, 0x1

    const/16 v11, 0x1001

    invoke-direct {v9, v8, v10, v7, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v9, Lkawa/lib/characters;->char$Qu:Lgnu/expr/ModuleMethod;

    new-instance v7, Lgnu/expr/ModuleMethod;

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9, v6, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v7, Lkawa/lib/characters;->char$Mn$Grinteger:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/4 v7, 0x3

    invoke-direct {v6, v8, v7, v5, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lkawa/lib/characters;->integer$Mn$Grchar:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x4

    const/16 v7, 0x2002

    invoke-direct {v5, v8, v6, v4, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lkawa/lib/characters;->char$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x5

    invoke-direct {v4, v8, v5, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/characters;->char$Ls$Qu:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x6

    invoke-direct {v3, v8, v4, v2, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/characters;->char$Gr$Qu:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x7

    invoke-direct {v2, v8, v3, v1, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/characters;->char$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    invoke-direct {v1, v8, v2, v0, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/characters;->char$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

    invoke-virtual {v8}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static char$To$Integer(Lgnu/text/Char;)I
    .registers 2
    .param p0, "char"    # Lgnu/text/Char;

    .line 6
    nop

    .line 7
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    return v0
.end method

.method public static integer$To$Char(I)Lgnu/text/Char;
    .registers 2
    .param p0, "n"    # I

    .line 9
    nop

    .line 10
    invoke-static {p0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method public static isChar(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 3
    nop

    .line 4
    instance-of v0, p0, Lgnu/text/Char;

    return v0
.end method

.method public static isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .registers 4
    .param p0, "c1"    # Lgnu/text/Char;
    .param p1, "c2"    # Lgnu/text/Char;

    .line 12
    nop

    .line 13
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static isChar$Gr(Lgnu/text/Char;Lgnu/text/Char;)Z
    .registers 4
    .param p0, "c1"    # Lgnu/text/Char;
    .param p1, "c2"    # Lgnu/text/Char;

    .line 16
    nop

    .line 17
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    if-le v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static isChar$Gr$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .registers 4
    .param p0, "c1"    # Lgnu/text/Char;
    .param p1, "c2"    # Lgnu/text/Char;

    .line 20
    nop

    .line 21
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static isChar$Ls(Lgnu/text/Char;Lgnu/text/Char;)Z
    .registers 4
    .param p0, "c1"    # Lgnu/text/Char;
    .param p1, "c2"    # Lgnu/text/Char;

    .line 14
    nop

    .line 15
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static isChar$Ls$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .registers 4
    .param p0, "c1"    # Lgnu/text/Char;
    .param p1, "c2"    # Lgnu/text/Char;

    .line 18
    nop

    .line 19
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_40

    .line 9
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    :try_start_b
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_12} :catch_17

    invoke-static {p1}, Lkawa/lib/characters;->integer$To$Char(I)Lgnu/text/Char;

    move-result-object p1

    return-object p1

    :catch_17
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "integer->char"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 6
    :pswitch_20
    :try_start_20
    check-cast p2, Lgnu/text/Char;
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_22} :catch_2b

    invoke-static {p2}, Lkawa/lib/characters;->char$To$Integer(Lgnu/text/Char;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_2b
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char->integer"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 3
    :pswitch_34
    invoke-static {p2}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3f

    :cond_3d
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3f
    return-object p1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_34
        :pswitch_20
        :pswitch_b
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const-string v0, "char>=?"

    const-string v1, "char<=?"

    const-string v2, "char>?"

    const-string v3, "char<?"

    const-string v4, "char=?"

    iget v5, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_ac

    .line 20
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_16
    :try_start_16
    check-cast p2, Lgnu/text/Char;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_18} :catch_2d

    :try_start_18
    check-cast p3, Lgnu/text/Char;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1a} :catch_26

    invoke-static {p2, p3}, Lkawa/lib/characters;->isChar$Gr$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_23

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_25

    :cond_23
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_25
    return-object p1

    :catch_26
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2d
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v7, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 18
    :pswitch_34
    :try_start_34
    check-cast p2, Lgnu/text/Char;
    :try_end_36
    .catch Ljava/lang/ClassCastException; {:try_start_34 .. :try_end_36} :catch_4b

    :try_start_36
    check-cast p3, Lgnu/text/Char;
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_36 .. :try_end_38} :catch_44

    invoke-static {p2, p3}, Lkawa/lib/characters;->isChar$Ls$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_41

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_43

    :cond_41
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_43
    return-object p1

    :catch_44
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_4b
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v7, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 16
    :pswitch_52
    :try_start_52
    check-cast p2, Lgnu/text/Char;
    :try_end_54
    .catch Ljava/lang/ClassCastException; {:try_start_52 .. :try_end_54} :catch_69

    :try_start_54
    check-cast p3, Lgnu/text/Char;
    :try_end_56
    .catch Ljava/lang/ClassCastException; {:try_start_54 .. :try_end_56} :catch_62

    invoke-static {p2, p3}, Lkawa/lib/characters;->isChar$Gr(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_5f

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_61

    :cond_5f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_61
    return-object p1

    :catch_62
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_69
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v7, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 14
    :pswitch_70
    :try_start_70
    check-cast p2, Lgnu/text/Char;
    :try_end_72
    .catch Ljava/lang/ClassCastException; {:try_start_70 .. :try_end_72} :catch_87

    :try_start_72
    check-cast p3, Lgnu/text/Char;
    :try_end_74
    .catch Ljava/lang/ClassCastException; {:try_start_72 .. :try_end_74} :catch_80

    invoke-static {p2, p3}, Lkawa/lib/characters;->isChar$Ls(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_7d

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7f

    :cond_7d
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7f
    return-object p1

    :catch_80
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_87
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v3, v7, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 12
    :pswitch_8e
    :try_start_8e
    check-cast p2, Lgnu/text/Char;
    :try_end_90
    .catch Ljava/lang/ClassCastException; {:try_start_8e .. :try_end_90} :catch_a5

    :try_start_90
    check-cast p3, Lgnu/text/Char;
    :try_end_92
    .catch Ljava/lang/ClassCastException; {:try_start_90 .. :try_end_92} :catch_9e

    invoke-static {p2, p3}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_9b

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9d

    :cond_9b
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9d
    return-object p1

    :catch_9e
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_a5
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v4, v7, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :pswitch_data_ac
    .packed-switch 0x4
        :pswitch_8e
        :pswitch_70
        :pswitch_52
        :pswitch_34
        :pswitch_16
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_2a

    .line 3
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 9
    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 6
    :pswitch_13
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_1b

    const p1, -0xbffff

    return p1

    :cond_1b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 3
    :pswitch_22
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbfffe

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, -0xbffff

    packed-switch v0, :pswitch_data_72

    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 20
    :pswitch_12
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_17

    return v4

    :cond_17
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_1e

    return v1

    :cond_1e
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 18
    :pswitch_25
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_2a

    return v4

    :cond_2a
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_31

    return v1

    :cond_31
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 16
    :pswitch_38
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_3d

    return v4

    :cond_3d
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_44

    return v1

    :cond_44
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 14
    :pswitch_4b
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_50

    return v4

    :cond_50
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_57

    return v1

    :cond_57
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 12
    :pswitch_5e
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_63

    return v4

    :cond_63
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_6a

    return v1

    :cond_6a
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_72
    .packed-switch 0x4
        :pswitch_5e
        :pswitch_4b
        :pswitch_38
        :pswitch_25
        :pswitch_12
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 3
    nop

    .line 6
    nop

    .line 9
    nop

    .line 12
    nop

    .line 14
    nop

    .line 16
    nop

    .line 18
    nop

    .line 20
    return-void
.end method
