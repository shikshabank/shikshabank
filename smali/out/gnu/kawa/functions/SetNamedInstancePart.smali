.class Lgnu/kawa/functions/SetNamedInstancePart;
.super Lgnu/mapping/Procedure2;
.source "GetNamedInstancePart.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field pname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 92
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 93
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileNamedPart:validateSetNamedInstancePart"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/SetNamedInstancePart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lgnu/kawa/functions/SetNamedInstancePart;-><init>()V

    .line 100
    invoke-virtual {p0, p1}, Lgnu/kawa/functions/SetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lgnu/kawa/reflect/SlotSet;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 125
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgnu/kawa/functions/SetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setPartName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set-instance-part:."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/functions/SetNamedInstancePart;->setName(Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
