.class public Lkawa/standard/module_extends;
.super Lkawa/lang/Syntax;
.source "module_extends.java"


# static fields
.field public static final module_extends:Lkawa/standard/module_extends;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Lkawa/standard/module_extends;

    invoke-direct {v0}, Lkawa/standard/module_extends;-><init>()V

    sput-object v0, Lkawa/standard/module_extends;->module_extends:Lkawa/standard/module_extends;

    .line 10
    const-string v1, "module-extends"

    invoke-virtual {v0, v1}, Lkawa/standard/module_extends;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .registers 7
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 14
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {p3, v0}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 15
    .local v0, "base":Lgnu/bytecode/Type;
    invoke-virtual {p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    .line 16
    .local v1, "module":Lgnu/expr/ModuleExp;
    move-object v2, v0

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleExp;->setSuperType(Lgnu/bytecode/ClassType;)V

    .line 17
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 18
    return-void
.end method
