.class public Lkawa/standard/ImportFromLibrary;
.super Lkawa/lang/Syntax;
.source "ImportFromLibrary.java"


# static fields
.field private static final BUILTIN:Ljava/lang/String; = ""

.field private static final MISSING:Ljava/lang/String;

.field static final SRFI97Map:[[Ljava/lang/String;

.field public static final instance:Lkawa/standard/ImportFromLibrary;


# instance fields
.field public classPrefixPath:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 18
    new-instance v0, Lkawa/standard/ImportFromLibrary;

    invoke-direct {v0}, Lkawa/standard/ImportFromLibrary;-><init>()V

    sput-object v0, Lkawa/standard/ImportFromLibrary;->instance:Lkawa/standard/ImportFromLibrary;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    .line 25
    const/16 v1, 0x30

    new-array v1, v1, [[Ljava/lang/String;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "1"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "lists"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "gnu.kawa.slib.srfi1"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "2"

    aput-object v4, v3, v5

    const-string v4, "and-let*"

    aput-object v4, v3, v6

    const-string v4, "gnu.kawa.slib.srfi2"

    aput-object v4, v3, v7

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "5"

    aput-object v4, v3, v5

    const-string v4, "let"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    aput-object v3, v1, v7

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "6"

    aput-object v8, v3, v5

    const-string v8, "basic-string-ports"

    aput-object v8, v3, v6

    const-string v8, ""

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/String;

    const-string v9, "8"

    aput-object v9, v3, v5

    const-string v9, "receive"

    aput-object v9, v3, v6

    aput-object v8, v3, v7

    const/4 v9, 0x4

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/String;

    const-string v9, "9"

    aput-object v9, v3, v5

    const-string v9, "records"

    aput-object v9, v3, v6

    aput-object v8, v3, v7

    const/4 v10, 0x5

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "11"

    aput-object v10, v3, v5

    const-string v10, "let-values"

    aput-object v10, v3, v6

    aput-object v8, v3, v7

    const/4 v10, 0x6

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "13"

    aput-object v10, v3, v5

    const-string v10, "strings"

    aput-object v10, v3, v6

    const-string v10, "gnu.kawa.slib.srfi13"

    aput-object v10, v3, v7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "14"

    aput-object v10, v3, v5

    const-string v10, "char-sets"

    aput-object v10, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "16"

    aput-object v10, v3, v5

    const-string v10, "case-lambda"

    aput-object v10, v3, v6

    aput-object v8, v3, v7

    const/16 v10, 0x9

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "17"

    aput-object v10, v3, v5

    const-string v10, "generalized-set!"

    aput-object v10, v3, v6

    aput-object v8, v3, v7

    const/16 v10, 0xa

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "18"

    aput-object v10, v3, v5

    const-string v10, "multithreading"

    aput-object v10, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0xb

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "19"

    aput-object v10, v3, v5

    const-string v10, "time"

    aput-object v10, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0xc

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "21"

    aput-object v10, v3, v5

    const-string v10, "real-time-multithreading"

    aput-object v10, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0xd

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "23"

    aput-object v10, v3, v5

    const-string v10, "error"

    aput-object v10, v3, v6

    aput-object v8, v3, v7

    const/16 v10, 0xe

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "25"

    aput-object v10, v3, v5

    const-string v10, "multi-dimensional-arrays"

    aput-object v10, v3, v6

    aput-object v8, v3, v7

    const/16 v10, 0xf

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "26"

    aput-object v10, v3, v5

    const-string v10, "cut"

    aput-object v10, v3, v6

    aput-object v8, v3, v7

    const/16 v10, 0x10

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "27"

    aput-object v10, v3, v5

    const-string v10, "random-bits"

    aput-object v10, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0x11

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "28"

    aput-object v10, v3, v5

    const-string v10, "basic-format-strings"

    aput-object v10, v3, v6

    aput-object v8, v3, v7

    const/16 v10, 0x12

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "29"

    aput-object v10, v3, v5

    const-string v10, "localization"

    aput-object v10, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0x13

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "31"

    aput-object v10, v3, v5

    const-string v10, "rec"

    aput-object v10, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0x14

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "38"

    aput-object v10, v3, v5

    const-string v10, "with-shared-structure"

    aput-object v10, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0x15

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "39"

    aput-object v10, v3, v5

    const-string v10, "parameters"

    aput-object v10, v3, v6

    aput-object v8, v3, v7

    const/16 v8, 0x16

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "41"

    aput-object v8, v3, v5

    const-string v8, "streams"

    aput-object v8, v3, v6

    aput-object v0, v3, v7

    const/16 v8, 0x17

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "42"

    aput-object v8, v3, v5

    const-string v8, "eager-comprehensions"

    aput-object v8, v3, v6

    aput-object v0, v3, v7

    const/16 v8, 0x18

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "43"

    aput-object v8, v3, v5

    const-string v8, "vectors"

    aput-object v8, v3, v6

    aput-object v0, v3, v7

    const/16 v8, 0x19

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "44"

    aput-object v8, v3, v5

    const-string v8, "collections"

    aput-object v8, v3, v6

    aput-object v0, v3, v7

    const/16 v8, 0x1a

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "45"

    aput-object v8, v3, v5

    const-string v8, "lazy"

    aput-object v8, v3, v6

    aput-object v0, v3, v7

    const/16 v8, 0x1b

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "46"

    aput-object v8, v3, v5

    const-string v8, "syntax-rules"

    aput-object v8, v3, v6

    aput-object v0, v3, v7

    const/16 v8, 0x1c

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "47"

    aput-object v8, v3, v5

    const-string v8, "arrays"

    aput-object v8, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0x1d

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "48"

    aput-object v10, v3, v5

    const-string v10, "intermediate-format-strings"

    aput-object v10, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0x1e

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "51"

    aput-object v10, v3, v5

    const-string v10, "rest-values"

    aput-object v10, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0x1f

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "54"

    aput-object v10, v3, v5

    const-string v10, "cat"

    aput-object v10, v3, v6

    aput-object v0, v3, v7

    const/16 v10, 0x20

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "57"

    aput-object v10, v3, v5

    aput-object v9, v3, v6

    aput-object v0, v3, v7

    const/16 v9, 0x21

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/String;

    const-string v9, "59"

    aput-object v9, v3, v5

    const-string v9, "vicinities"

    aput-object v9, v3, v6

    aput-object v0, v3, v7

    const/16 v9, 0x22

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/String;

    const-string v9, "60"

    aput-object v9, v3, v5

    const-string v9, "integer-bits"

    aput-object v9, v3, v6

    aput-object v0, v3, v7

    const/16 v9, 0x23

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/String;

    const-string v9, "61"

    aput-object v9, v3, v5

    const-string v9, "cond"

    aput-object v9, v3, v6

    aput-object v0, v3, v7

    const/16 v9, 0x24

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/String;

    const-string v9, "63"

    aput-object v9, v3, v5

    aput-object v8, v3, v6

    aput-object v0, v3, v7

    const/16 v8, 0x25

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "64"

    aput-object v8, v3, v5

    const-string v8, "testing"

    aput-object v8, v3, v6

    const-string v8, "gnu.kawa.slib.testing"

    aput-object v8, v3, v7

    const/16 v8, 0x26

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "66"

    aput-object v8, v3, v5

    const-string v8, "octet-vectors"

    aput-object v8, v3, v6

    aput-object v0, v3, v7

    const/16 v8, 0x27

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "67"

    aput-object v8, v3, v5

    const-string v8, "compare-procedures"

    aput-object v8, v3, v6

    aput-object v0, v3, v7

    const/16 v8, 0x28

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "69"

    aput-object v8, v3, v5

    const-string v8, "basic-hash-tables"

    aput-object v8, v3, v6

    const-string v8, "gnu.kawa.slib.srfi69"

    aput-object v8, v3, v7

    const/16 v8, 0x29

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/String;

    const-string v8, "71"

    aput-object v8, v3, v5

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    const/16 v4, 0x2a

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "74"

    aput-object v4, v3, v5

    const-string v4, "blobs"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    const/16 v4, 0x2b

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "78"

    aput-object v4, v3, v5

    const-string v4, "lightweight-testing"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    const/16 v4, 0x2c

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "86"

    aput-object v4, v3, v5

    const-string v4, "mu-and-nu"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    const/16 v4, 0x2d

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "87"

    aput-object v4, v3, v5

    const-string v4, "case"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    const/16 v0, 0x2e

    aput-object v3, v1, v0

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "95"

    aput-object v2, v0, v5

    const-string v2, "sorting-and-merging"

    aput-object v2, v0, v6

    const-string v2, "kawa.lib.srfi95"

    aput-object v2, v0, v7

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    sput-object v1, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 16
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "kawa.lib."

    aput-object v2, v0, v1

    iput-object v0, p0, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .registers 30
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 79
    move-object/from16 v1, p0

    move-object/from16 v8, p4

    const/4 v0, 0x0

    .line 80
    .local v0, "mapper":Lgnu/mapping/Procedure;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    .line 81
    .local v9, "args":Ljava/lang/Object;
    instance-of v2, v9, Lgnu/lists/Pair;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    .line 82
    return v3

    .line 83
    :cond_f
    move-object v2, v9

    check-cast v2, Lgnu/lists/Pair;

    .line 84
    .local v2, "pair":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    .line 85
    .local v4, "libref":Ljava/lang/Object;
    invoke-static {v4, v3}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v5

    const/16 v6, 0x65

    if-gtz v5, :cond_24

    .line 87
    const-string v5, "expected <library reference> which must be a list"

    invoke-virtual {v8, v6, v5}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 88
    return v3

    .line 90
    :cond_24
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .line 91
    .local v10, "rest":Ljava/lang/Object;
    instance-of v5, v10, Lgnu/lists/Pair;

    if-eqz v5, :cond_43

    move-object v5, v10

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lgnu/mapping/Procedure;

    if-eqz v5, :cond_43

    .line 92
    move-object v5, v10

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lgnu/mapping/Procedure;

    move-object v11, v0

    goto :goto_44

    .line 94
    :cond_43
    move-object v11, v0

    .end local v0    # "mapper":Lgnu/mapping/Procedure;
    .local v11, "mapper":Lgnu/mapping/Procedure;
    :goto_44
    const/4 v0, 0x0

    .line 95
    .local v0, "versionSpec":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 96
    .local v5, "sourcePath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v7

    move-object v13, v0

    move-object v14, v2

    move-object v15, v4

    move-object v7, v5

    .line 97
    .end local v0    # "versionSpec":Ljava/lang/Object;
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v4    # "libref":Ljava/lang/Object;
    .end local v5    # "sourcePath":Ljava/lang/String;
    .local v7, "sourcePath":Ljava/lang/String;
    .local v12, "sbuf":Ljava/lang/StringBuffer;
    .local v13, "versionSpec":Ljava/lang/Object;
    .local v14, "pair":Lgnu/lists/Pair;
    .local v15, "libref":Ljava/lang/Object;
    :goto_50
    instance-of v0, v15, Lgnu/lists/Pair;

    const/16 v2, 0x2e

    if-eqz v0, :cond_c1

    .line 99
    move-object v14, v15

    check-cast v14, Lgnu/lists/Pair;

    .line 100
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "car":Ljava/lang/Object;
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 102
    .local v4, "cdr":Ljava/lang/Object;
    instance-of v5, v0, Lgnu/lists/Pair;

    if-eqz v5, :cond_98

    .line 104
    if-eqz v13, :cond_7d

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate version reference - was "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 108
    :cond_7d
    move-object v2, v0

    .line 109
    .end local v13    # "versionSpec":Ljava/lang/Object;
    .local v2, "versionSpec":Ljava/lang/Object;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "import version "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v13, v2

    goto :goto_be

    .line 111
    .end local v2    # "versionSpec":Ljava/lang/Object;
    .restart local v13    # "versionSpec":Ljava/lang/Object;
    :cond_98
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_aa

    .line 113
    instance-of v2, v4, Lgnu/lists/Pair;

    if-eqz v2, :cond_a5

    .line 114
    const-string v2, "source specifier must be last elemnt in library reference"

    invoke-virtual {v8, v6, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 115
    :cond_a5
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    .end local v7    # "sourcePath":Ljava/lang/String;
    .local v2, "sourcePath":Ljava/lang/String;
    goto :goto_be

    .line 119
    .end local v2    # "sourcePath":Ljava/lang/String;
    .restart local v7    # "sourcePath":Ljava/lang/String;
    :cond_aa
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_b3

    .line 120
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    :cond_b3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    :goto_be
    move-object v15, v4

    .line 124
    .end local v0    # "car":Ljava/lang/Object;
    .end local v4    # "cdr":Ljava/lang/Object;
    const/4 v3, 0x0

    goto :goto_50

    .line 126
    :cond_c1
    const/4 v0, 0x0

    .line 127
    .local v0, "minfo":Lgnu/expr/ModuleInfo;
    if-eqz v7, :cond_e4

    .line 129
    move-object/from16 v5, p3

    invoke-static {v7, v5}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    .line 130
    if-nez v0, :cond_e6

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 133
    const/4 v2, 0x0

    return v2

    .line 127
    :cond_e4
    move-object/from16 v5, p3

    .line 136
    :cond_e6
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "lname":Ljava/lang/String;
    const-string v4, "srfi."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21b

    .line 140
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "demangled":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 143
    .local v2, "dot":I
    if-gez v2, :cond_10a

    .line 145
    const/16 v18, 0x0

    .line 146
    .local v18, "srfiName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v6, v18

    goto :goto_110

    .line 149
    .end local v18    # "srfiName":Ljava/lang/String;
    :cond_10a
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "srfiName":Ljava/lang/String;
    :goto_110
    const/16 v19, 0x0

    .line 151
    .local v19, "srfiNumber":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "minfo":Lgnu/expr/ModuleInfo;
    .local v20, "minfo":Lgnu/expr/ModuleInfo;
    const/4 v0, 0x2

    if-ge v2, v0, :cond_126

    move-object/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "lname":Ljava/lang/String;
    .local v21, "lname":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_123

    goto :goto_128

    :cond_123
    move/from16 v23, v2

    goto :goto_144

    .end local v21    # "lname":Ljava/lang/String;
    .restart local v3    # "lname":Ljava/lang/String;
    :cond_126
    move-object/from16 v21, v3

    .line 153
    .end local v3    # "lname":Ljava/lang/String;
    .restart local v21    # "lname":Ljava/lang/String;
    :goto_128
    const/4 v0, 0x1

    .line 155
    .local v0, "i":I
    :goto_129
    if-ne v0, v2, :cond_135

    .line 157
    const/4 v3, 0x1

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 158
    move/from16 v23, v2

    move-object/from16 v2, v19

    goto :goto_146

    .line 160
    :cond_135
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v23, v2

    .end local v2    # "dot":I
    .local v23, "dot":I
    const/16 v2, 0xa

    invoke-static {v3, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-gez v2, :cond_20c

    .line 161
    nop

    .line 164
    .end local v0    # "i":I
    .end local v23    # "dot":I
    .restart local v2    # "dot":I
    :goto_144
    move-object/from16 v2, v19

    .end local v19    # "srfiNumber":Ljava/lang/String;
    .local v2, "srfiNumber":Ljava/lang/String;
    .restart local v23    # "dot":I
    :goto_146
    if-nez v2, :cond_151

    .line 166
    const-string v0, "SRFI library reference must have the form: (srfi :NNN [name])"

    const/16 v3, 0x65

    invoke-virtual {v8, v3, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 167
    const/4 v3, 0x0

    return v3

    .line 169
    :cond_151
    sget-object v0, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    array-length v0, v0

    .line 172
    .local v0, "srfiIndex":I
    :goto_154
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_17a

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    .end local v4    # "demangled":Ljava/lang/String;
    .local v24, "demangled":Ljava/lang/String;
    const-string v4, "unknown SRFI number \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in SRFI library reference"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v8, v4, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 175
    const/4 v3, 0x0

    return v3

    .line 177
    .end local v24    # "demangled":Ljava/lang/String;
    .restart local v4    # "demangled":Ljava/lang/String;
    :cond_17a
    move-object/from16 v24, v4

    const/4 v3, 0x0

    .end local v4    # "demangled":Ljava/lang/String;
    .restart local v24    # "demangled":Ljava/lang/String;
    sget-object v4, Lkawa/standard/ImportFromLibrary;->SRFI97Map:[[Ljava/lang/String;

    aget-object v16, v4, v0

    aget-object v5, v16, v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_201

    .line 178
    nop

    .line 180
    aget-object v3, v4, v0

    const/4 v4, 0x1

    aget-object v5, v3, v4

    .line 181
    .local v5, "srfiNameExpected":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v3, v3, v4

    .line 182
    .local v3, "srfiClass":Ljava/lang/String;
    if-eqz v6, :cond_1c5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c5

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    .end local v0    # "srfiIndex":I
    .local v22, "srfiIndex":I
    const-string v0, "the name of SRFI "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " should be \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x77

    invoke-virtual {v8, v4, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1c7

    .line 182
    .end local v22    # "srfiIndex":I
    .restart local v0    # "srfiIndex":I
    :cond_1c5
    move/from16 v22, v0

    .line 187
    .end local v0    # "srfiIndex":I
    .restart local v22    # "srfiIndex":I
    :goto_1c7
    const-string v0, ""

    if-ne v3, v0, :cond_1ce

    .line 188
    const/16 v18, 0x1

    return v18

    .line 189
    :cond_1ce
    const/16 v18, 0x1

    sget-object v0, Lkawa/standard/ImportFromLibrary;->MISSING:Ljava/lang/String;

    if-ne v3, v0, :cond_1fe

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sorry - Kawa does not support SRFI "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x65

    invoke-virtual {v8, v4, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 192
    const/4 v4, 0x0

    return v4

    .line 195
    :cond_1fe
    move-object v0, v3

    move-object v6, v0

    .end local v21    # "lname":Ljava/lang/String;
    .local v0, "lname":Ljava/lang/String;
    goto :goto_223

    .line 177
    .end local v3    # "srfiClass":Ljava/lang/String;
    .end local v5    # "srfiNameExpected":Ljava/lang/String;
    .end local v22    # "srfiIndex":I
    .local v0, "srfiIndex":I
    .restart local v21    # "lname":Ljava/lang/String;
    :cond_201
    move/from16 v22, v0

    const/4 v4, 0x2

    const/16 v18, 0x1

    .end local v0    # "srfiIndex":I
    .restart local v22    # "srfiIndex":I
    move-object/from16 v5, p3

    move-object/from16 v4, v24

    goto/16 :goto_154

    .line 153
    .end local v2    # "srfiNumber":Ljava/lang/String;
    .end local v22    # "srfiIndex":I
    .end local v24    # "demangled":Ljava/lang/String;
    .local v0, "i":I
    .restart local v4    # "demangled":Ljava/lang/String;
    .restart local v19    # "srfiNumber":Ljava/lang/String;
    :cond_20c
    move-object/from16 v24, v4

    const/4 v4, 0x2

    const/16 v18, 0x1

    .end local v4    # "demangled":Ljava/lang/String;
    .restart local v24    # "demangled":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, p3

    move/from16 v2, v23

    move-object/from16 v4, v24

    goto/16 :goto_129

    .line 138
    .end local v6    # "srfiName":Ljava/lang/String;
    .end local v19    # "srfiNumber":Ljava/lang/String;
    .end local v20    # "minfo":Lgnu/expr/ModuleInfo;
    .end local v21    # "lname":Ljava/lang/String;
    .end local v23    # "dot":I
    .end local v24    # "demangled":Ljava/lang/String;
    .local v0, "minfo":Lgnu/expr/ModuleInfo;
    .local v3, "lname":Ljava/lang/String;
    :cond_21b
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    const/16 v18, 0x1

    .end local v0    # "minfo":Lgnu/expr/ModuleInfo;
    .end local v3    # "lname":Ljava/lang/String;
    .restart local v20    # "minfo":Lgnu/expr/ModuleInfo;
    .restart local v21    # "lname":Ljava/lang/String;
    move-object/from16 v6, v21

    .line 198
    .end local v21    # "lname":Ljava/lang/String;
    .local v6, "lname":Ljava/lang/String;
    :goto_223
    iget-object v0, v1, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    array-length v5, v0

    .line 199
    .local v5, "classPrefixPathLength":I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_228
    if-ge v2, v5, :cond_24f

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lkawa/standard/ImportFromLibrary;->classPrefixPath:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "tname":Ljava/lang/String;
    :try_start_23f
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_247} :catch_24a

    .line 209
    .end local v20    # "minfo":Lgnu/expr/ModuleInfo;
    .restart local v0    # "minfo":Lgnu/expr/ModuleInfo;
    move-object/from16 v20, v0

    goto :goto_24c

    .line 206
    .end local v0    # "minfo":Lgnu/expr/ModuleInfo;
    .restart local v20    # "minfo":Lgnu/expr/ModuleInfo;
    :catch_24a
    move-exception v0

    .line 208
    .local v0, "ex":Ljava/lang/Exception;
    nop

    .line 199
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "tname":Ljava/lang/String;
    :goto_24c
    add-int/lit8 v2, v2, 0x1

    goto :goto_228

    .line 211
    .end local v2    # "i":I
    :cond_24f
    if-nez v20, :cond_26b

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v8, v2, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 214
    const/4 v2, 0x0

    return v2

    .line 216
    :cond_26b
    const/4 v2, 0x0

    move-object/from16 v3, v20

    move-object v4, v11

    move/from16 v16, v5

    .end local v5    # "classPrefixPathLength":I
    .local v16, "classPrefixPathLength":I
    move-object/from16 v5, p2

    move-object/from16 v21, v6

    const/16 v17, 0x1

    .end local v6    # "lname":Ljava/lang/String;
    .restart local v21    # "lname":Ljava/lang/String;
    move-object/from16 v6, p3

    move-object/from16 v18, v7

    .end local v7    # "sourcePath":Ljava/lang/String;
    .local v18, "sourcePath":Ljava/lang/String;
    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 218
    return v17
.end method
