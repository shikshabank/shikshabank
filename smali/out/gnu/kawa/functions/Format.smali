.class public Lgnu/kawa/functions/Format;
.super Lgnu/mapping/ProcedureN;
.source "Format.java"


# static fields
.field public static final format:Lgnu/kawa/functions/Format;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 11
    new-instance v0, Lgnu/kawa/functions/Format;

    invoke-direct {v0}, Lgnu/kawa/functions/Format;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Format;->format:Lgnu/kawa/functions/Format;

    .line 13
    const-string v1, "format"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/Format;->setName(Ljava/lang/String;)V

    .line 14
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileMisc:validateApplyFormat"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/Format;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method static drop2([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p0, "vals"    # [Ljava/lang/Object;

    .line 142
    array-length v0, p0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 143
    .local v0, "xlen":I
    new-array v2, v0, [Ljava/lang/Object;

    .line 144
    .local v2, "xvals":[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    return-object v2
.end method

.method public static varargs format([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "args"    # [Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 106
    .local v1, "port_arg":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_12

    .line 108
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    invoke-static {v0, p0, v3}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 109
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 111
    :cond_12
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_1b

    .line 113
    invoke-static {v3, p0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1b
    instance-of v2, v1, Ljava/text/MessageFormat;

    if-nez v2, :cond_50

    instance-of v2, v1, Ljava/lang/CharSequence;

    if-nez v2, :cond_50

    instance-of v2, v1, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_28

    goto :goto_50

    .line 125
    :cond_28
    instance-of v0, v1, Ljava/io/Writer;

    if-eqz v0, :cond_35

    .line 127
    move-object v0, v1

    check-cast v0, Ljava/io/Writer;

    invoke-static {v0, p0, v3}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 128
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 130
    :cond_35
    instance-of v0, v1, Ljava/io/OutputStream;

    if-eqz v0, :cond_48

    .line 132
    move-object v0, v1

    check-cast v0, Ljava/io/OutputStream;

    aget-object v2, p0, v3

    invoke-static {p0}, Lgnu/kawa/functions/Format;->drop2([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lgnu/kawa/functions/Format;->formatToOutputStream(Ljava/io/OutputStream;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 134
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 137
    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "bad first argument to format"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_50
    :goto_50
    invoke-static {v0, p0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/io/Writer;[Ljava/lang/Object;I)V
    .registers 7
    .param p0, "dst"    # Ljava/io/Writer;
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "arg_offset"    # I

    .line 20
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "arg_offset":I
    .local v0, "arg_offset":I
    aget-object p2, p1, p2

    .line 21
    .local p2, "format":Ljava/lang/Object;
    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .local v1, "vals":[Ljava/lang/Object;
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-static {p0, p2, v1}, Lgnu/kawa/functions/Format;->formatToWriter(Ljava/io/Writer;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static formatToFString(CLjava/lang/Object;[Ljava/lang/Object;)Lgnu/lists/FString;
    .registers 9
    .param p0, "style"    # C
    .param p1, "fmt"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 75
    invoke-static {p1, p0}, Lgnu/kawa/functions/ParseFormat;->asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;

    move-result-object v0

    .line 76
    .local v0, "rfmt":Lgnu/text/ReportFormat;
    new-instance v1, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v1}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 79
    .local v1, "port":Lgnu/mapping/CharArrayOutPort;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {v0, p2, v2, v1, v3}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1c

    .line 84
    nop

    .line 85
    invoke-virtual {v1}, Lgnu/mapping/CharArrayOutPort;->toCharArray()[C

    move-result-object v2

    .line 86
    .local v2, "chars":[C
    invoke-virtual {v1}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 87
    new-instance v3, Lgnu/lists/FString;

    invoke-direct {v3, v2}, Lgnu/lists/FString;-><init>([C)V

    return-object v3

    .line 81
    .end local v2    # "chars":[C
    :catch_1c
    move-exception v2

    .line 83
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static varargs formatToOutputStream(Ljava/io/OutputStream;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "dst"    # Ljava/io/OutputStream;
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .line 52
    new-instance v0, Lgnu/mapping/OutPort;

    invoke-direct {v0, p0}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    .line 53
    .local v0, "port":Lgnu/mapping/OutPort;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lgnu/kawa/functions/Format;->format([Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->closeThis()V

    .line 55
    return-void
.end method

.method public static varargs formatToString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "arg_offset"    # I
    .param p1, "args"    # [Ljava/lang/Object;

    .line 59
    new-instance v0, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v0}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 60
    .local v0, "port":Lgnu/mapping/CharArrayOutPort;
    invoke-static {v0, p1, p0}, Lgnu/kawa/functions/Format;->format(Ljava/io/Writer;[Ljava/lang/Object;I)V

    .line 61
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 63
    return-object v1
.end method

.method public static varargs formatToWriter(Ljava/io/Writer;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .param p0, "dst"    # Ljava/io/Writer;
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .line 28
    if-nez p0, :cond_6

    .line 29
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object p0

    .line 32
    :cond_6
    :try_start_6
    instance-of v0, p1, Ljava/text/MessageFormat;

    if-eqz v0, :cond_15

    .line 34
    move-object v0, p1

    check-cast v0, Ljava/text/MessageFormat;

    invoke-virtual {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "out":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 36
    .end local v0    # "out":Ljava/lang/String;
    goto :goto_28

    .line 39
    :cond_15
    instance-of v0, p1, Lgnu/text/ReportFormat;

    if-nez v0, :cond_20

    .line 40
    sget-object v0, Lgnu/kawa/functions/ParseFormat;->parseFormat:Lgnu/kawa/functions/ParseFormat;

    invoke-virtual {v0, p1}, Lgnu/kawa/functions/ParseFormat;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    .line 41
    :cond_20
    move-object v0, p1

    check-cast v0, Lgnu/text/ReportFormat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p0, v2}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_2a

    .line 47
    :goto_28
    nop

    .line 48
    return-void

    .line 44
    :catch_2a
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Lgnu/kawa/functions/Format;->format([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
