.class Lgnu/kawa/functions/SetList;
.super Lgnu/mapping/Procedure2;
.source "Setter.java"


# instance fields
.field elementType:Lgnu/bytecode/Type;

.field list:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .param p1, "list"    # Ljava/util/List;

    .line 75
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 76
    iput-object p1, p0, Lgnu/kawa/functions/SetList;->list:Ljava/util/List;

    .line 77
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lgnu/kawa/functions/SetList;->list:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method
