.class public Lgnu/xquery/lang/XQResolveNames;
.super Lgnu/expr/ResolveNames;
.source "XQResolveNames.java"


# static fields
.field public static final BASE_URI_BUILTIN:I = -0xb

.field public static final CASTABLE_AS_BUILTIN:I = -0x22

.field public static final CAST_AS_BUILTIN:I = -0x21

.field public static final COLLECTION_BUILTIN:I = -0x8

.field public static final COMPARE_BUILTIN:I = -0x4

.field public static final DEEP_EQUAL_BUILTIN:I = -0x19

.field public static final DEFAULT_COLLATION_BUILTIN:I = -0x1d

.field public static final DISTINCT_VALUES_BUILTIN:I = -0x5

.field public static final DOC_AVAILABLE_BUILTIN:I = -0xa

.field public static final DOC_BUILTIN:I = -0x9

.field public static final HANDLE_EXTENSION_BUILTIN:I = -0x3

.field public static final IDREF_BUILTIN:I = -0x1f

.field public static final ID_BUILTIN:I = -0x1e

.field public static final INDEX_OF_BUILTIN:I = -0xf

.field public static final LANG_BUILTIN:I = -0x17

.field public static final LAST_BUILTIN:I = -0x1

.field public static final LOCAL_NAME_BUILTIN:I = -0x6

.field public static final MAX_BUILTIN:I = -0x1b

.field public static final MIN_BUILTIN:I = -0x1a

.field public static final NAMESPACE_URI_BUILTIN:I = -0x7

.field public static final NAME_BUILTIN:I = -0x18

.field public static final NORMALIZE_SPACE_BUILTIN:I = -0x11

.field public static final NUMBER_BUILTIN:I = -0x1c

.field public static final POSITION_BUILTIN:I = -0x2

.field public static final RESOLVE_PREFIX_BUILTIN:I = -0xd

.field public static final RESOLVE_URI_BUILTIN:I = -0xc

.field public static final ROOT_BUILTIN:I = -0x20

.field public static final STATIC_BASE_URI_BUILTIN:I = -0xe

.field public static final STRING_BUILTIN:I = -0x10

.field public static final UNORDERED_BUILTIN:I = -0x12

.field public static final XS_QNAME_BUILTIN:I = -0x23

.field public static final XS_QNAME_IGNORE_DEFAULT_BUILTIN:I = -0x24

.field public static final castAsDecl:Lgnu/expr/Declaration;

.field public static final castableAsDecl:Lgnu/expr/Declaration;

.field public static final handleExtensionDecl:Lgnu/expr/Declaration;

.field public static final lastDecl:Lgnu/expr/Declaration;

.field public static final resolvePrefixDecl:Lgnu/expr/Declaration;

.field public static final staticBaseUriDecl:Lgnu/expr/Declaration;

.field public static final xsQNameDecl:Lgnu/expr/Declaration;

.field public static final xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;


# instance fields
.field public functionNamespacePath:[Lgnu/mapping/Namespace;

.field private moduleDecl:Lgnu/expr/Declaration;

.field public parser:Lgnu/xquery/lang/XQParser;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 116
    const-string v0, "(extension)"

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->handleExtensionDecl:Lgnu/expr/Declaration;

    .line 119
    const-string v0, "(cast as)"

    const/16 v1, -0x21

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->castAsDecl:Lgnu/expr/Declaration;

    .line 122
    const-string v0, "(castable as)"

    const/16 v1, -0x22

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->castableAsDecl:Lgnu/expr/Declaration;

    .line 126
    const-string v0, "last"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->lastDecl:Lgnu/expr/Declaration;

    .line 129
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const-string v1, "QName"

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    const/16 v2, -0x23

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    .line 132
    const-string v1, "(QName-ignore-default)"

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    const/16 v2, -0x24

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQResolveNames;->xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;

    .line 135
    const-string v1, "static-base-uri"

    const/16 v2, -0xe

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v1

    sput-object v1, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    .line 138
    const-string v1, "(resolve-prefix)"

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    const/16 v1, -0xd

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->resolvePrefixDecl:Lgnu/expr/Declaration;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/xquery/lang/XQResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 170
    invoke-direct {p0, p1}, Lgnu/expr/ResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 201
    sget-object v0, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 171
    iget-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v1, Lgnu/xquery/lang/XQResolveNames;->lastDecl:Lgnu/expr/Declaration;

    invoke-virtual {v0, v1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 172
    iget-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v1, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v0, v1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 173
    iget-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v1, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    invoke-virtual {v0, v1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 174
    const-string v0, "position"

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 175
    const-string v0, "compare"

    const/4 v1, -0x4

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 176
    const-string v0, "distinct-values"

    const/4 v1, -0x5

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 177
    const-string v0, "local-name"

    const/4 v1, -0x6

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 178
    const-string v0, "name"

    const/16 v1, -0x18

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 179
    const-string v0, "namespace-uri"

    const/4 v1, -0x7

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 180
    const-string v0, "root"

    const/16 v1, -0x20

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 181
    const-string v0, "base-uri"

    const/16 v1, -0xb

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 182
    const-string v0, "lang"

    const/16 v1, -0x17

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 183
    const-string v0, "resolve-uri"

    const/16 v1, -0xc

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 184
    const-string v0, "collection"

    const/4 v1, -0x8

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 185
    const-string v0, "doc"

    const/16 v1, -0x9

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 186
    const-string v0, "document"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 187
    const-string v0, "doc-available"

    const/16 v1, -0xa

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 188
    const-string v0, "index-of"

    const/16 v1, -0xf

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 189
    const-string v0, "string"

    const/16 v1, -0x10

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 190
    const-string v0, "normalize-space"

    const/16 v1, -0x11

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 191
    const-string v0, "unordered"

    const/16 v1, -0x12

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 192
    const-string v0, "deep-equal"

    const/16 v1, -0x19

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 193
    const-string v0, "min"

    const/16 v1, -0x1a

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 194
    const-string v0, "max"

    const/16 v1, -0x1b

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 195
    const-string v0, "number"

    const/16 v1, -0x1c

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 196
    const-string v0, "default-collation"

    const/16 v1, -0x1d

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 197
    const-string v0, "id"

    const/16 v1, -0x1e

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 198
    const-string v0, "idref"

    const/16 v1, -0x1f

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQResolveNames;->pushBuiltin(Ljava/lang/String;I)V

    .line 199
    return-void
.end method

.method private checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;
    .registers 7
    .param p1, "args"    # [Lgnu/expr/Expression;
    .param p2, "decl"    # Lgnu/expr/Declaration;
    .param p3, "min"    # I
    .param p4, "max"    # I

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    invoke-static {v0, p3, p4, v1}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "err":Ljava/lang/String;
    if-nez v0, :cond_20

    .line 517
    const/4 v1, 0x0

    return-object v1

    .line 519
    :cond_20
    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method public static makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;
    .registers 4
    .param p0, "name"    # Lgnu/mapping/Symbol;
    .param p1, "code"    # I

    .line 152
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 153
    .local v0, "decl":Lgnu/expr/Declaration;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 154
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->setCode(I)V

    .line 155
    return-object v0
.end method

.method public static makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "code"    # I

    .line 145
    const-string v0, "http://www.w3.org/2005/xpath-functions"

    const-string v1, "fn"

    invoke-static {v0, p0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method static maybeAddNamespace(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .registers 6
    .param p0, "qname"    # Lgnu/mapping/Symbol;
    .param p1, "isAttribute"    # Z
    .param p2, "bindings"    # Lgnu/xml/NamespaceBinding;

    .line 991
    if-nez p0, :cond_3

    .line 992
    return-object p2

    .line 993
    :cond_3
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, "uri":Ljava/lang/String;
    const-string v2, ""

    if-ne v0, v2, :cond_10

    .line 996
    const/4 v0, 0x0

    .line 997
    :cond_10
    if-ne v1, v2, :cond_13

    .line 998
    const/4 v1, 0x0

    .line 999
    :cond_13
    if-eqz p1, :cond_1a

    if-nez v0, :cond_1a

    if-nez v1, :cond_1a

    .line 1000
    return-object p2

    .line 1001
    :cond_1a
    invoke-static {v0, v1, p2}, Lgnu/xml/NamespaceBinding;->maybeAdd(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v2

    return-object v2
.end method

.method static procToDecl(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Declaration;
    .registers 5
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    .line 1007
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 1008
    .local v0, "decl":Lgnu/expr/Declaration;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 1009
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1010
    const-wide/16 v1, 0x4000

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1011
    return-object v0
.end method

.method private visitStatements(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "exp"    # Lgnu/expr/Expression;

    .line 402
    instance-of v0, p1, Lgnu/expr/BeginExp;

    if-eqz v0, :cond_1e

    .line 404
    move-object v0, p1

    check-cast v0, Lgnu/expr/BeginExp;

    .line 405
    .local v0, "bbody":Lgnu/expr/BeginExp;
    invoke-virtual {v0}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v1

    .line 406
    .local v1, "exps":[Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/BeginExp;->getExpressionCount()I

    move-result v2

    .line 407
    .local v2, "nexps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_1d

    .line 409
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lgnu/xquery/lang/XQResolveNames;->visitStatements(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v1, v3

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 411
    .end local v0    # "bbody":Lgnu/expr/BeginExp;
    .end local v1    # "exps":[Lgnu/expr/Expression;
    .end local v2    # "nexps":I
    .end local v3    # "i":I
    :cond_1d
    goto :goto_4f

    .line 412
    :cond_1e
    instance-of v0, p1, Lgnu/expr/SetExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 414
    iget-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->moduleDecl:Lgnu/expr/Declaration;

    .line 415
    .local v0, "decl":Lgnu/expr/Declaration;
    move-object v2, p1

    check-cast v2, Lgnu/expr/SetExp;

    .line 416
    .local v2, "sexp":Lgnu/expr/SetExp;
    invoke-virtual {p0, v2, v1}, Lgnu/xquery/lang/XQResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    .line 417
    invoke-virtual {v2}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v2}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    if-ne v1, v0, :cond_45

    .line 419
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v1

    if-nez v1, :cond_41

    .line 420
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQResolveNames;->push(Lgnu/expr/Declaration;)V

    .line 421
    :cond_41
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 423
    :cond_45
    iput-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->moduleDecl:Lgnu/expr/Declaration;

    .line 424
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .end local v2    # "sexp":Lgnu/expr/SetExp;
    goto :goto_4f

    .line 426
    :cond_48
    invoke-virtual {p0, p1, v1}, Lgnu/xquery/lang/XQResolveNames;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lgnu/expr/Expression;

    .line 427
    :goto_4f
    return-object p1
.end method


# virtual methods
.method public checkPragma(Lgnu/mapping/Symbol;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "contents"    # Lgnu/expr/Expression;

    .line 975
    const/4 v0, 0x0

    return-object v0
.end method

.method flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;
    .registers 6
    .param p1, "sym"    # Lgnu/mapping/Symbol;

    .line 253
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    .line 254
    .local v0, "env":Lgnu/mapping/Environment;
    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v1

    .line 255
    .local v1, "loc":Lgnu/mapping/Location;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 256
    return-object v2

    .line 257
    :cond_c
    invoke-virtual {v1}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v1

    .line 258
    instance-of v3, v1, Lgnu/kawa/reflect/StaticFieldLocation;

    if-eqz v3, :cond_1e

    .line 260
    move-object v3, v1

    check-cast v3, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v3}, Lgnu/kawa/reflect/StaticFieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v3

    .line 261
    .local v3, "decl":Lgnu/expr/Declaration;
    if-eqz v3, :cond_1e

    .line 262
    return-object v3

    .line 264
    .end local v3    # "decl":Lgnu/expr/Declaration;
    :cond_1e
    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 265
    .local v3, "val":Ljava/lang/Object;
    if-eqz v3, :cond_29

    .line 266
    invoke-static {p1, v3}, Lgnu/xquery/lang/XQResolveNames;->procToDecl(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    return-object v2

    .line 267
    :cond_29
    return-object v2
.end method

.method getBaseUriExpr()Lgnu/expr/Expression;
    .registers 4

    .line 980
    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 981
    .local v0, "comp":Lgnu/expr/Compilation;
    iget-object v1, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "staticBaseUri":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 983
    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    return-object v2

    .line 985
    :cond_11
    invoke-static {v0}, Lgnu/kawa/functions/GetModuleClass;->getModuleClassURI(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2
.end method

.method getCollator([Lgnu/expr/Expression;I)Lgnu/expr/Expression;
    .registers 8
    .param p1, "args"    # [Lgnu/expr/Expression;
    .param p2, "argno"    # I

    .line 458
    if-eqz p1, :cond_1f

    array-length v0, p1

    if-le v0, p2, :cond_1f

    .line 459
    new-instance v0, Lgnu/expr/ApplyExp;

    const-string v1, "gnu.xquery.util.NamedCollator"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "find"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    new-array v2, v3, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aget-object v4, p1, p2

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v0

    .line 462
    :cond_1f
    iget-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 463
    .local v0, "coll":Lgnu/xquery/util/NamedCollator;
    if-nez v0, :cond_28

    sget-object v1, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    goto :goto_2d

    :cond_28
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    :goto_2d
    return-object v1
.end method

.method push(Lgnu/expr/Declaration;)V
    .registers 11
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 215
    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 216
    .local v0, "comp":Lgnu/expr/Compilation;
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, "name":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v2

    .line 218
    .local v2, "function":Z
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_43

    .line 220
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v3

    .line 221
    .local v3, "line":I
    if-lez v3, :cond_34

    if-eqz v0, :cond_34

    .line 223
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "saveFilename":Ljava/lang/String;
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v5

    .line 225
    .local v5, "saveLine":I
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v6

    .line 226
    .local v6, "saveColumn":I
    invoke-virtual {v0, p1}, Lgnu/expr/Compilation;->setLocation(Lgnu/text/SourceLocator;)V

    .line 227
    iget-object v7, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v4, v5, v6}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 229
    .end local v4    # "saveFilename":Ljava/lang/String;
    .end local v5    # "saveLine":I
    .end local v6    # "saveColumn":I
    goto :goto_3d

    .line 231
    :cond_34
    iget-object v4, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 232
    :goto_3d
    if-nez v1, :cond_40

    .line 233
    return-void

    .line 234
    :cond_40
    invoke-virtual {p1, v1}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 237
    .end local v3    # "line":I
    :cond_43
    iget-object v3, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v4, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-virtual {v4, p1}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v3

    .line 238
    .local v3, "old":Lgnu/expr/Declaration;
    if-eqz v3, :cond_75

    .line 240
    iget-object v4, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    iget-object v5, v3, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    if-ne v4, v5, :cond_5b

    .line 241
    invoke-static {v3, p1, v0}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    goto :goto_75

    .line 242
    :cond_5b
    sget-boolean v4, Lgnu/xquery/lang/XQParser;->warnHidePreviousDeclaration:Z

    if-eqz v4, :cond_75

    instance-of v4, v1, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_6c

    move-object v4, v1

    check-cast v4, Lgnu/mapping/Symbol;

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v4

    if-eqz v4, :cond_75

    .line 245
    :cond_6c
    const/16 v4, 0x77

    const-string v5, "declaration "

    const-string v6, " hides previous declaration"

    invoke-virtual {v0, v4, p1, v5, v6}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_75
    :goto_75
    iget-object v4, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v4, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 249
    return-void
.end method

.method protected push(Lgnu/expr/ScopeExp;)V
    .registers 3
    .param p1, "exp"    # Lgnu/expr/ScopeExp;

    .line 206
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 207
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_4
    if-eqz v0, :cond_e

    .line 209
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQResolveNames;->push(Lgnu/expr/Declaration;)V

    .line 207
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_4

    .line 211
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_e
    return-void
.end method

.method pushBuiltin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 165
    iget-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-static {p1, p2}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 166
    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .registers 4
    .param p1, "exp"    # Lgnu/expr/ModuleExp;

    .line 432
    iput-object p1, p0, Lgnu/xquery/lang/XQResolveNames;->currentLambda:Lgnu/expr/LambdaExp;

    .line 433
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 434
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_6
    if-eqz v0, :cond_16

    .line 436
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 437
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQResolveNames;->push(Lgnu/expr/Declaration;)V

    .line 434
    :cond_11
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_6

    .line 439
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_16
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    iput-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->moduleDecl:Lgnu/expr/Declaration;

    .line 440
    iget-object v0, p1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    invoke-direct {p0, v0}, Lgnu/xquery/lang/XQResolveNames;->visitStatements(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 443
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 444
    .restart local v0    # "decl":Lgnu/expr/Declaration;
    :goto_28
    if-eqz v0, :cond_3a

    .line 446
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 447
    iget-object v1, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v1, v0}, Lgnu/expr/NameLookup;->removeSubsumed(Lgnu/expr/Declaration;)V

    .line 444
    :cond_35
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_28

    .line 449
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_3a
    return-void
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 20

    .line 524
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v3

    .line 525
    iget-object v4, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v4, v4, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 526
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object v5

    .line 527
    instance-of v6, v5, Lgnu/kawa/xml/MakeElement;

    if-eqz v6, :cond_27

    .line 529
    check-cast v5, Lgnu/kawa/xml/MakeElement;

    .line 530
    invoke-virtual {v5}, Lgnu/kawa/xml/MakeElement;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v6

    invoke-static {v6, v4}, Lgnu/xml/NamespaceBinding;->nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v6

    .line 532
    invoke-virtual {v5, v6}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 533
    iget-object v5, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iput-object v6, v5, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 535
    :cond_27
    instance-of v5, v3, Lgnu/expr/ReferenceExp;

    if-eqz v5, :cond_32

    .line 536
    check-cast v3, Lgnu/expr/ReferenceExp;

    invoke-virtual {v1, v3, v0}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_38

    .line 538
    :cond_32
    invoke-virtual {v1, v3, v2}, Lgnu/xquery/lang/XQResolveNames;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    .line 539
    :goto_38
    invoke-virtual {v0, v3}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    .line 540
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lgnu/xquery/lang/XQResolveNames;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    .line 541
    iget-object v3, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iput-object v4, v3, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 542
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v3

    .line 543
    instance-of v4, v3, Lgnu/expr/ReferenceExp;

    const-string v5, "castAs"

    const-string v6, "gnu.xquery.util.CastAs"

    const/16 v8, 0x65

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v4, :cond_505

    .line 545
    check-cast v3, Lgnu/expr/ReferenceExp;

    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v3

    .line 548
    if-eqz v3, :cond_503

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getCode()I

    move-result v4

    if-gez v4, :cond_503

    .line 550
    const-string v12, "gnu.xquery.util.StringUtils"

    const-string v13, "gnu.xquery.util.SequenceUtils"

    const-string v14, "gnu.xquery.util.MinMax"

    const-string v15, "gnu.xquery.util.QNameUtils"

    const/4 v7, 0x3

    const-string v16, "gnu.xquery.util.NodeUtils"

    packed-switch v4, :pswitch_data_5b4

    :pswitch_73
    const/4 v10, 0x0

    goto/16 :goto_506

    .line 554
    :pswitch_76
    const/4 v0, -0x1

    if-ne v4, v0, :cond_7c

    sget-object v0, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    goto :goto_7e

    :cond_7c
    sget-object v0, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    .line 556
    :goto_7e
    iget-object v2, v1, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v2, v0, v10}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v2

    .line 557
    if-nez v2, :cond_a1

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "undefined context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lgnu/xquery/lang/XQResolveNames;->error(CLjava/lang/String;)V

    goto :goto_a4

    .line 562
    :cond_a1
    invoke-virtual {v2, v11}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 563
    :goto_a4
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v0, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    return-object v3

    .line 880
    :pswitch_aa
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    .line 881
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 882
    const/4 v3, 0x0

    .line 883
    :goto_b3
    array-length v4, v0

    sub-int/2addr v4, v11

    if-ge v3, v4, :cond_e8

    .line 885
    aget-object v4, v0, v3

    .line 886
    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 887
    iget-object v5, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    invoke-virtual {v5, v4, v10}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 888
    if-nez v4, :cond_ca

    .line 889
    goto :goto_e5

    .line 890
    :cond_ca
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_da

    .line 891
    const-string v4, "pragma name cannot be in the empty namespace"

    invoke-virtual {v2, v8, v4}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_e5

    .line 894
    :cond_da
    add-int/lit8 v5, v3, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v1, v4, v5}, Lgnu/xquery/lang/XQResolveNames;->checkPragma(Lgnu/mapping/Symbol;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    .line 896
    if-eqz v4, :cond_e5

    .line 897
    return-object v4

    .line 883
    :cond_e5
    :goto_e5
    add-int/lit8 v3, v3, 0x2

    goto :goto_b3

    .line 900
    :cond_e8
    array-length v2, v0

    if-ge v3, v2, :cond_f0

    .line 901
    array-length v2, v0

    sub-int/2addr v2, v11

    aget-object v0, v0, v2

    return-object v0

    .line 902
    :cond_f0
    const-string v0, "no recognized pragma or default in extension expression"

    .line 903
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    const-string v3, "XQST0079"

    invoke-virtual {v2, v8, v0, v3}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 904
    new-instance v2, Lgnu/expr/ErrorExp;

    invoke-direct {v2, v0}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 769
    :pswitch_101
    invoke-static {v12}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "compare"

    invoke-virtual {v2, v3, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 771
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:compare"

    invoke-virtual {v1, v2, v0, v3, v9}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 845
    :pswitch_116
    const-string v2, "gnu.xquery.util.DistinctValues"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "distinctValues$X"

    invoke-virtual {v2, v3, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 847
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:distinct-values"

    invoke-virtual {v1, v2, v0, v3, v11}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 689
    :pswitch_12d
    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "localName"

    invoke-virtual {v2, v3, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 691
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:local-name"

    invoke-virtual {v1, v2, v0, v3, v10}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 745
    :pswitch_142
    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "namespaceURI"

    invoke-virtual {v2, v3, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 747
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:namespace-uri"

    invoke-virtual {v1, v2, v0, v3, v10}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 787
    :pswitch_157
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 788
    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 789
    const-string v4, "collection"

    invoke-virtual {v2, v4, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 790
    invoke-direct {v1, v0, v3, v10, v11}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_16c

    .line 791
    return-object v3

    .line 792
    :cond_16c
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v3

    .line 793
    array-length v4, v0

    if-lez v4, :cond_176

    aget-object v0, v0, v10

    goto :goto_178

    :cond_176
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 795
    :goto_178
    new-instance v4, Lgnu/expr/ApplyExp;

    new-array v5, v9, [Lgnu/expr/Expression;

    aput-object v0, v5, v10

    aput-object v3, v5, v11

    invoke-direct {v4, v2, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 797
    sget-object v0, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v4, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 798
    return-object v4

    .line 803
    :pswitch_189
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 804
    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 806
    const/16 v5, -0x9

    if-ne v4, v5, :cond_1b4

    .line 808
    nop

    .line 809
    sget-boolean v6, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v6, :cond_1b1

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "document"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b1

    .line 811
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v6

    const/16 v7, 0x77

    const-string v8, "replace \'document\' by \'doc\'"

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 816
    :cond_1b1
    const-string v6, "docCached"

    goto :goto_1b6

    .line 815
    :cond_1b4
    const-string v6, "availableCached"

    .line 816
    :goto_1b6
    invoke-virtual {v2, v6, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 817
    invoke-direct {v1, v0, v3, v11, v11}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_1c1

    .line 818
    return-object v3

    .line 819
    :cond_1c1
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v3

    .line 820
    new-instance v6, Lgnu/expr/ApplyExp;

    new-array v7, v9, [Lgnu/expr/Expression;

    aget-object v0, v0, v10

    aput-object v0, v7, v10

    aput-object v3, v7, v11

    invoke-direct {v6, v2, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 822
    if-ne v4, v5, :cond_1da

    .line 823
    sget-object v0, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v6, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    goto :goto_1df

    .line 825
    :cond_1da
    sget-object v0, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v6, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 826
    :goto_1df
    return-object v6

    .line 713
    :pswitch_1e0
    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "baseUri"

    invoke-virtual {v2, v3, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 715
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:base-uri"

    invoke-virtual {v1, v2, v0, v3, v10}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 830
    :pswitch_1f5
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 831
    invoke-direct {v1, v0, v3, v11, v9}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_200

    .line 832
    return-object v2

    .line 833
    :cond_200
    new-array v2, v9, [Lgnu/expr/Expression;

    .line 834
    aget-object v3, v0, v10

    aput-object v3, v2, v10

    .line 835
    array-length v3, v0

    if-ne v3, v11, :cond_210

    .line 836
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v0

    aput-object v0, v2, v11

    goto :goto_214

    .line 838
    :cond_210
    aget-object v0, v0, v11

    aput-object v0, v2, v11

    .line 839
    :goto_214
    invoke-static {v15}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v3, "resolveURI"

    invoke-virtual {v0, v3, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 841
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-direct {v3, v0, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v3

    .line 660
    :pswitch_224
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 661
    invoke-direct {v1, v0, v3, v11, v11}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_22f

    .line 662
    return-object v2

    .line 663
    :cond_22f
    aget-object v0, v0, v10

    instance-of v2, v0, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_279

    .line 665
    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 666
    if-nez v0, :cond_23f

    const/4 v7, 0x0

    goto :goto_243

    :cond_23f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 667
    :goto_243
    iget-object v0, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    iget-object v2, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v2, v2, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-static {v7, v0, v2}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v0

    .line 670
    if-nez v0, :cond_273

    .line 671
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown namespace prefix \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 674
    :cond_273
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 676
    :cond_279
    new-array v2, v7, [Lgnu/expr/Expression;

    aput-object v0, v2, v10

    new-instance v0, Lgnu/expr/QuoteExp;

    iget-object v3, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v3, v3, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-direct {v0, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v0, v2, v11

    new-instance v0, Lgnu/expr/QuoteExp;

    iget-object v3, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v3, v3, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-direct {v0, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v0, v2, v9

    .line 680
    new-instance v0, Lgnu/expr/PrimProcedure;

    invoke-static {v15}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "resolvePrefix"

    invoke-virtual {v3, v4, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-direct {v0, v3}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 683
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-direct {v3, v0, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 684
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 685
    return-object v3

    .line 738
    :pswitch_2ac
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 739
    invoke-direct {v1, v0, v3, v10, v10}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_2b7

    .line 740
    return-object v0

    .line 741
    :cond_2b7
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getBaseUriExpr()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 781
    :pswitch_2bc
    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "indexOf$X"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 783
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:index-of"

    invoke-virtual {v1, v2, v0, v3, v9}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 775
    :pswitch_2d2
    const-string v2, "gnu.xml.TextUtils"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "asString"

    invoke-virtual {v2, v3, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:string"

    invoke-virtual {v1, v2, v0, v3, v10}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 753
    :pswitch_2e9
    invoke-static {v12}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "normalizeSpace"

    invoke-virtual {v2, v3, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 755
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:normalize-space"

    invoke-virtual {v1, v2, v0, v3, v10}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 761
    :pswitch_2fe
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 762
    invoke-direct {v1, v0, v3, v11, v11}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_309

    .line 763
    return-object v2

    .line 764
    :cond_309
    aget-object v0, v0, v10

    return-object v0

    .line 719
    :pswitch_30c
    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "lang"

    invoke-virtual {v2, v3, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 721
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:lang"

    invoke-virtual {v1, v2, v0, v3, v11}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 695
    :pswitch_321
    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 697
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:name"

    invoke-virtual {v1, v2, v0, v3, v10}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 853
    :pswitch_336
    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "deepEqual"

    invoke-virtual {v2, v3, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 855
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:deep-equal"

    invoke-virtual {v1, v2, v0, v3, v9}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 860
    :pswitch_34b
    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "min"

    invoke-virtual {v2, v3, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 862
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:min"

    invoke-virtual {v1, v2, v0, v3, v11}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 867
    :pswitch_360
    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "max"

    invoke-virtual {v2, v3, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 869
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:max"

    invoke-virtual {v1, v2, v0, v3, v11}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 701
    :pswitch_375
    const-string v2, "gnu.xquery.util.NumberValue"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "numberValue"

    invoke-virtual {v2, v3, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 703
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:number"

    invoke-virtual {v1, v2, v0, v3, v10}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 873
    :pswitch_38c
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    invoke-direct {v1, v0, v3, v10, v10}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_397

    .line 874
    return-object v0

    .line 875
    :cond_397
    iget-object v0, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 876
    if-eqz v0, :cond_3a2

    invoke-virtual {v0}, Lgnu/xquery/util/NamedCollator;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a4

    :cond_3a2
    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    :goto_3a4
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 725
    :pswitch_3a9
    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "id$X"

    invoke-virtual {v2, v3, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 727
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:id"

    invoke-virtual {v1, v2, v0, v3, v11}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 731
    :pswitch_3be
    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "idref"

    invoke-virtual {v2, v3, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 733
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:idref"

    invoke-virtual {v1, v2, v0, v3, v11}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 707
    :pswitch_3d3
    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "root"

    invoke-virtual {v2, v3, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 709
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:root"

    invoke-virtual {v1, v2, v0, v3, v10}, Lgnu/xquery/lang/XQResolveNames;->withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 567
    :pswitch_3e8
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 568
    const/16 v7, -0x21

    if-ne v4, v7, :cond_3f2

    const/4 v9, 0x0

    goto :goto_3f3

    :cond_3f2
    const/4 v9, 0x1

    :goto_3f3
    aget-object v9, v3, v9

    .line 569
    nop

    .line 570
    instance-of v12, v9, Lgnu/expr/ApplyExp;

    if-eqz v12, :cond_40e

    .line 572
    move-object v13, v9

    check-cast v13, Lgnu/expr/ApplyExp;

    .line 573
    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v14

    invoke-virtual {v14}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lgnu/xquery/lang/XQParser;->proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

    if-ne v14, v15, :cond_40e

    .line 575
    invoke-virtual {v13, v10}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v13

    goto :goto_40f

    .line 577
    :cond_40e
    move-object v13, v9

    :goto_40f
    invoke-virtual {v13}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v13

    .line 578
    nop

    .line 579
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v14

    if-ne v13, v14, :cond_41d

    .line 580
    const-string v14, "type to \'cast as\' or \'castable as\' must be atomic"

    goto :goto_43a

    .line 581
    :cond_41d
    sget-object v14, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    if-ne v13, v14, :cond_424

    .line 582
    const-string v14, "type to \'cast as\' or \'castable as\' cannot be anyAtomicType"

    goto :goto_43a

    .line 583
    :cond_424
    sget-object v14, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    if-ne v13, v14, :cond_42b

    .line 584
    const-string v14, "type to \'cast as\' or \'castable as\' cannot be anySimpleType"

    goto :goto_43a

    .line 585
    :cond_42b
    sget-object v14, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    if-ne v13, v14, :cond_432

    .line 586
    const-string v14, "type to \'cast as\' or \'castable as\' cannot be untyped"

    goto :goto_43a

    .line 587
    :cond_432
    sget-object v14, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    if-ne v13, v14, :cond_439

    .line 588
    const-string v14, "type to \'cast as\' or \'castable as\' cannot be NOTATION"

    goto :goto_43a

    .line 587
    :cond_439
    const/4 v14, 0x0

    .line 589
    :goto_43a
    if-eqz v14, :cond_443

    .line 590
    iget-object v15, v1, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    const-string v10, "XPST0080"

    invoke-virtual {v15, v8, v9, v14, v10}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_443
    sget-object v8, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    if-ne v13, v8, :cond_44b

    if-nez v12, :cond_44b

    const/4 v8, 0x1

    goto :goto_44c

    :cond_44b
    const/4 v8, 0x0

    .line 593
    :goto_44c
    if-ne v4, v7, :cond_460

    .line 595
    if-eqz v8, :cond_45b

    .line 596
    aget-object v0, v3, v11

    invoke-static {v0, v11}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQResolveNames;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 597
    :cond_45b
    invoke-static {v6, v5}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_489

    .line 602
    :cond_460
    if-eqz v8, :cond_481

    const/4 v2, 0x0

    aget-object v2, v3, v2

    instance-of v4, v2, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_481

    .line 604
    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 607
    :try_start_46f
    iget-object v2, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v2, v2, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    iget-object v3, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v3, v3, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-static {v0, v2, v3}, Lgnu/xquery/util/QNameUtils;->resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;
    :try_end_47c
    .catch Ljava/lang/RuntimeException; {:try_start_46f .. :try_end_47c} :catch_47d

    return-object v0

    .line 612
    :catch_47d
    move-exception v0

    .line 614
    sget-object v0, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 617
    :cond_481
    const-string v2, "gnu.xquery.lang.XQParser"

    const-string v4, "castableAs"

    invoke-static {v2, v4}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 619
    :goto_489
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v4, v0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 624
    :pswitch_493
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 625
    invoke-direct {v1, v0, v3, v11, v11}, Lgnu/xquery/lang/XQResolveNames;->checkArgCount([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_49e

    .line 626
    return-object v2

    .line 627
    :cond_49e
    iget-object v2, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v2, v2, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 629
    const/16 v3, -0x24

    if-ne v4, v3, :cond_4af

    .line 630
    new-instance v3, Lgnu/xml/NamespaceBinding;

    const-string v4, ""

    const/4 v10, 0x0

    invoke-direct {v3, v10, v4, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v2, v3

    .line 632
    :cond_4af
    const/4 v3, 0x0

    aget-object v0, v0, v3

    instance-of v3, v0, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_4d8

    .line 636
    :try_start_4b6
    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 637
    iget-object v3, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v3, v3, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-static {v0, v2, v3}, Lgnu/xquery/util/QNameUtils;->resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;

    move-result-object v0

    .line 640
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_4c9
    .catch Ljava/lang/RuntimeException; {:try_start_4b6 .. :try_end_4c9} :catch_4ca

    return-object v2

    .line 642
    :catch_4ca
    move-exception v0

    .line 644
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 647
    :cond_4d8
    new-array v3, v7, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v0, v3, v11

    new-instance v0, Lgnu/expr/QuoteExp;

    iget-object v2, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v2, v2, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-direct {v0, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v0, v3, v9

    .line 651
    invoke-static {v15}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v2, "resolveQName"

    invoke-virtual {v0, v2, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 654
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v0, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 655
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 656
    return-object v2

    .line 548
    :cond_503
    const/4 v10, 0x0

    goto :goto_506

    .line 543
    :cond_505
    const/4 v10, 0x0

    .line 909
    :goto_506
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object v2

    .line 910
    instance-of v3, v2, Lgnu/bytecode/Type;

    if-eqz v3, :cond_534

    .line 912
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 913
    array-length v3, v2

    if-eq v3, v11, :cond_51d

    .line 915
    iget-object v2, v1, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    const-string v3, "type constructor requires a single argument"

    invoke-virtual {v2, v8, v3}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 916
    return-object v0

    .line 918
    :cond_51d
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-static {v6, v5}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    new-array v5, v9, [Lgnu/expr/Expression;

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aget-object v0, v2, v6

    aput-object v0, v5, v11

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v3

    .line 921
    :cond_534
    instance-of v3, v2, Lgnu/kawa/xml/MakeElement;

    if-eqz v3, :cond_5b3

    .line 923
    check-cast v2, Lgnu/kawa/xml/MakeElement;

    .line 926
    invoke-virtual {v2}, Lgnu/kawa/xml/MakeElement;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v3

    .line 927
    iget-object v4, v2, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    .line 928
    if-nez v4, :cond_546

    .line 929
    invoke-static/range {p1 .. p1}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 930
    :cond_546
    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lgnu/xquery/lang/XQResolveNames;->maybeAddNamespace(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    .line 931
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    .line 932
    array-length v6, v4

    new-array v6, v6, [Lgnu/mapping/Symbol;

    .line 933
    nop

    .line 934
    move-object v9, v3

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_556
    array-length v12, v4

    if-ge v3, v12, :cond_5ae

    .line 936
    aget-object v12, v4, v3

    .line 937
    instance-of v13, v12, Lgnu/expr/ApplyExp;

    if-eqz v13, :cond_5a9

    .line 939
    check-cast v12, Lgnu/expr/ApplyExp;

    .line 940
    invoke-virtual {v12}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v13

    sget-object v14, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    if-ne v13, v14, :cond_5a9

    .line 942
    invoke-static {v12}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v13

    .line 943
    if-eqz v13, :cond_5a9

    .line 945
    const/4 v14, 0x0

    .line 947
    :goto_570
    if-ne v14, v7, :cond_57e

    .line 949
    add-int/lit8 v12, v7, 0x1

    aput-object v13, v6, v7

    .line 950
    nop

    .line 961
    invoke-static {v13, v11, v9}, Lgnu/xquery/lang/XQResolveNames;->maybeAddNamespace(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v7

    move-object v9, v7

    move v7, v12

    goto :goto_5a9

    .line 952
    :cond_57e
    aget-object v15, v6, v14

    invoke-virtual {v13, v15}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5a4

    .line 954
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v15

    invoke-virtual {v15, v12}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 955
    invoke-static/range {p1 .. p1}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v15

    .line 956
    if-nez v15, :cond_595

    move-object v15, v10

    goto :goto_599

    :cond_595
    invoke-virtual {v15}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v15

    .line 958
    :goto_599
    iget-object v5, v1, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    invoke-static {v13, v15}, Lgnu/xml/XMLFilter;->duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v10, "XQST0040"

    invoke-virtual {v5, v8, v15, v10}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 945
    :cond_5a4
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    goto :goto_570

    .line 934
    :cond_5a9
    :goto_5a9
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    goto :goto_556

    .line 966
    :cond_5ae
    if-eqz v9, :cond_5b3

    .line 967
    invoke-virtual {v2, v9}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 969
    :cond_5b3
    return-object v0

    :pswitch_data_5b4
    .packed-switch -0x24
        :pswitch_493
        :pswitch_493
        :pswitch_3e8
        :pswitch_3e8
        :pswitch_3d3
        :pswitch_3be
        :pswitch_3a9
        :pswitch_38c
        :pswitch_375
        :pswitch_360
        :pswitch_34b
        :pswitch_336
        :pswitch_321
        :pswitch_30c
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_2fe
        :pswitch_2e9
        :pswitch_2d2
        :pswitch_2bc
        :pswitch_2ac
        :pswitch_224
        :pswitch_1f5
        :pswitch_1e0
        :pswitch_189
        :pswitch_189
        :pswitch_157
        :pswitch_142
        :pswitch_12d
        :pswitch_116
        :pswitch_101
        :pswitch_aa
        :pswitch_76
        :pswitch_76
    .end packed-switch
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ApplyExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 18
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQResolveNames;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;
    .registers 14
    .param p1, "exp"    # Lgnu/expr/ReferenceExp;
    .param p2, "call"    # Lgnu/expr/ApplyExp;

    .line 277
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    if-nez v0, :cond_179

    .line 279
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 280
    .local v0, "symbol":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v1

    .line 281
    .local v1, "needFunction":Z
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lgnu/expr/ReferenceExp;->getFlag(I)Z

    move-result v2

    .line 282
    .local v2, "needType":Z
    if-nez p2, :cond_18

    const/4 v3, 0x1

    goto :goto_20

    :cond_18
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v3

    invoke-static {v3}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result v3

    .line 284
    .local v3, "namespace":I
    :goto_20
    iget-object v4, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v4, v0, v3}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v4

    .line 286
    .local v4, "decl":Lgnu/expr/Declaration;
    if-eqz v4, :cond_2a

    .line 287
    goto/16 :goto_121

    .line 288
    :cond_2a
    instance-of v5, v0, Lgnu/mapping/Symbol;

    const-string v6, ""

    if-eqz v5, :cond_70

    move-object v5, v0

    check-cast v5, Lgnu/mapping/Symbol;

    move-object v7, v5

    .local v7, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 292
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "name":Ljava/lang/String;
    const-string v6, "request"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 295
    const-string v6, "getCurrentRequest"

    .local v6, "mname":Ljava/lang/String;
    goto :goto_59

    .line 296
    .end local v6    # "mname":Ljava/lang/String;
    :cond_4d
    const-string v6, "response"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 297
    const-string v6, "getCurrentResponse"

    .restart local v6    # "mname":Ljava/lang/String;
    goto :goto_59

    .line 299
    .end local v6    # "mname":Ljava/lang/String;
    :cond_58
    const/4 v6, 0x0

    .line 300
    .restart local v6    # "mname":Ljava/lang/String;
    :goto_59
    if-eqz v6, :cond_6e

    .line 302
    const-string v8, "gnu.kawa.servlet.ServletRequestContext"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    .line 305
    .local v8, "meth":Lgnu/bytecode/Method;
    new-instance v9, Lgnu/expr/ApplyExp;

    sget-object v10, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v9, v8, v10}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v9

    .line 307
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "mname":Ljava/lang/String;
    .end local v8    # "meth":Lgnu/bytecode/Method;
    :cond_6e
    goto/16 :goto_121

    .line 308
    .end local v7    # "sym":Lgnu/mapping/Symbol;
    :cond_70
    instance-of v5, v0, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_7d

    .line 311
    move-object v5, v0

    check-cast v5, Lgnu/mapping/Symbol;

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQResolveNames;->flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v4

    goto/16 :goto_121

    .line 315
    :cond_7d
    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 316
    .restart local v5    # "name":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_ad

    .line 318
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 319
    if-eqz v1, :cond_ad

    .line 321
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8f
    iget-object v8, p0, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    array-length v9, v8

    if-ge v7, v9, :cond_ad

    .line 323
    aget-object v8, v8, v7

    invoke-virtual {v8, v5}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    .line 324
    .local v8, "sym":Lgnu/mapping/Symbol;
    iget-object v9, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v9, v8, v3}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v4

    .line 325
    if-eqz v4, :cond_a3

    .line 326
    goto :goto_ad

    .line 327
    :cond_a3
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQResolveNames;->flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 328
    if-eqz v4, :cond_aa

    .line 329
    goto :goto_ad

    .line 321
    :cond_aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_8f

    .line 333
    .end local v7    # "i":I
    .end local v8    # "sym":Lgnu/mapping/Symbol;
    :cond_ad
    :goto_ad
    if-nez v4, :cond_121

    .line 335
    iget-object v7, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    invoke-virtual {v7, v5, v1}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v7

    .line 336
    .local v7, "sym":Lgnu/mapping/Symbol;
    if-eqz v7, :cond_121

    .line 338
    iget-object v8, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v8, v7, v3}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v4

    .line 339
    if-nez v4, :cond_121

    if-nez v1, :cond_c3

    if-eqz v2, :cond_121

    .line 342
    :cond_c3
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    .line 343
    .local v8, "uri":Ljava/lang/String;
    const/4 v9, 0x0

    .line 344
    .local v9, "type":Lgnu/bytecode/Type;
    const-string v10, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d9

    .line 346
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgnu/xquery/lang/XQuery;->getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v9

    goto :goto_ef

    .line 348
    :cond_d9
    if-eqz v2, :cond_ef

    if-ne v8, v6, :cond_ef

    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v6

    if-nez v6, :cond_ef

    .line 351
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v9

    .line 353
    :cond_ef
    :goto_ef
    if-eqz v9, :cond_fb

    .line 354
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, v9}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Lgnu/expr/QuoteExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v6

    return-object v6

    .line 355
    :cond_fb
    if-eqz v8, :cond_11d

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v10, 0x6

    if-le v6, v10, :cond_11d

    const-string v6, "class:"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 358
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 359
    .local v6, "ctype":Lgnu/bytecode/ClassType;
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    return-object v10

    .line 361
    .end local v6    # "ctype":Lgnu/bytecode/ClassType;
    :cond_11d
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQResolveNames;->flookup(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 366
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "sym":Lgnu/mapping/Symbol;
    .end local v8    # "uri":Ljava/lang/String;
    .end local v9    # "type":Lgnu/bytecode/Type;
    :cond_121
    :goto_121
    if-eqz v4, :cond_127

    .line 367
    invoke-virtual {p1, v4}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    goto :goto_179

    .line 368
    :cond_127
    const/16 v5, 0x65

    if-eqz v1, :cond_142

    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown function "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lgnu/xquery/lang/XQResolveNames;->error(CLjava/lang/String;)V

    goto :goto_179

    .line 370
    :cond_142
    if-eqz v2, :cond_15f

    .line 371
    iget-object v6, p0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "XPST0051"

    invoke-virtual {v6, v5, p1, v7, v8}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_179

    .line 373
    :cond_15f
    iget-object v6, p0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown variable $"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "XPST0008"

    invoke-virtual {v6, v5, p1, v7, v8}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v0    # "symbol":Ljava/lang/Object;
    .end local v1    # "needFunction":Z
    .end local v2    # "needType":Z
    .end local v3    # "namespace":I
    .end local v4    # "decl":Lgnu/expr/Declaration;
    :cond_179
    :goto_179
    return-object p1
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 5
    .param p1, "exp"    # Lgnu/expr/ReferenceExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 272
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lgnu/expr/ApplyExp;

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ReferenceExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 18
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 10
    .param p1, "exp"    # Lgnu/expr/SetExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 380
    invoke-super {p0, p1, p2}, Lgnu/expr/ResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    .line 381
    .local v0, "result":Lgnu/expr/Expression;
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    .line 384
    .local v1, "decl":Lgnu/expr/Declaration;
    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    iget-boolean v2, v2, Lgnu/expr/Compilation;->immediate:Z

    if-nez v2, :cond_48

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "name":Ljava/lang/Object;
    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_48

    move-object v2, v3

    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v4, "http://www.w3.org/2005/xquery-local-functions"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p1}, Lgnu/expr/SetExp;->getNewValue()Lgnu/expr/Expression;

    move-result-object v2

    move-object v4, v2

    .local v4, "new_value":Lgnu/expr/Expression;
    instance-of v2, v2, Lgnu/expr/ApplyExp;

    if-eqz v2, :cond_3e

    move-object v2, v4

    check-cast v2, Lgnu/expr/ApplyExp;

    invoke-virtual {v2}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v2

    sget-object v5, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    if-eq v2, v5, :cond_48

    .line 390
    :cond_3e
    const-wide/32 v5, 0x1000000

    invoke-virtual {v1, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 391
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 393
    .end local v3    # "name":Ljava/lang/Object;
    .end local v4    # "new_value":Lgnu/expr/Expression;
    :cond_48
    return-object v0
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/SetExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 18
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method withCollator(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;
    .registers 7
    .param p1, "method"    # Lgnu/bytecode/Method;
    .param p2, "args"    # [Lgnu/expr/Expression;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "minArgs"    # I

    .line 469
    new-instance v0, Lgnu/expr/QuoteExp;

    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lgnu/xquery/lang/XQResolveNames;->withCollator(Lgnu/expr/Expression;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method withCollator(Lgnu/expr/Expression;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;
    .registers 8
    .param p1, "function"    # Lgnu/expr/Expression;
    .param p2, "args"    # [Lgnu/expr/Expression;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "minArgs"    # I

    .line 477
    add-int/lit8 v0, p4, 0x1

    array-length v1, p2

    invoke-static {p3, p4, v0, v1}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "err":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 479
    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 480
    :cond_12
    add-int/lit8 v1, p4, 0x1

    new-array v1, v1, [Lgnu/expr/Expression;

    .line 481
    .local v1, "xargs":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    invoke-virtual {p0, p2, p4}, Lgnu/xquery/lang/XQResolveNames;->getCollator([Lgnu/expr/Expression;I)Lgnu/expr/Expression;

    move-result-object v2

    aput-object v2, v1, p4

    .line 483
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, p1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v2
.end method

.method withContext(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;
    .registers 12
    .param p1, "method"    # Lgnu/bytecode/Method;
    .param p2, "args"    # [Lgnu/expr/Expression;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "minArgs"    # I

    .line 490
    add-int/lit8 v0, p4, 0x1

    array-length v1, p2

    invoke-static {p3, p4, v0, v1}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "err":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 493
    invoke-virtual {p0}, Lgnu/xquery/lang/XQResolveNames;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 494
    :cond_12
    array-length v1, p2

    if-ne v1, p4, :cond_51

    .line 496
    add-int/lit8 v1, p4, 0x1

    new-array v1, v1, [Lgnu/expr/Expression;

    .line 497
    .local v1, "xargs":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iget-object v3, p0, Lgnu/xquery/lang/XQResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v4, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v3, v4, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v2

    .line 499
    .local v2, "dot":Lgnu/expr/Declaration;
    if-nez v2, :cond_49

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "undefined context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "message":Ljava/lang/String;
    iget-object v4, p0, Lgnu/xquery/lang/XQResolveNames;->messages:Lgnu/text/SourceMessages;

    const/16 v5, 0x65

    const-string v6, "XPDY0002"

    invoke-virtual {v4, v5, v3, v6}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 503
    new-instance v4, Lgnu/expr/ErrorExp;

    invoke-direct {v4, v3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 505
    .end local v3    # "message":Ljava/lang/String;
    :cond_49
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v3, v1, p4

    .line 506
    move-object p2, v1

    .line 508
    .end local v1    # "xargs":[Lgnu/expr/Expression;
    .end local v2    # "dot":Lgnu/expr/Declaration;
    :cond_51
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v1
.end method
