.class public Lgnu/kawa/functions/ParseFormat;
.super Lgnu/mapping/Procedure1;
.source "ParseFormat.java"


# static fields
.field public static final PARAM_FROM_LIST:I = -0x60000000

.field public static final PARAM_UNSPECIFIED:I = -0x40000000

.field public static final SEEN_HASH:I = 0x10

.field public static final SEEN_MINUS:I = 0x1

.field public static final SEEN_PLUS:I = 0x2

.field public static final SEEN_SPACE:I = 0x4

.field public static final SEEN_ZERO:I = 0x8

.field public static final parseFormat:Lgnu/kawa/functions/ParseFormat;


# instance fields
.field emacsStyle:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    new-instance v0, Lgnu/kawa/functions/ParseFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ParseFormat;-><init>(Z)V

    sput-object v0, Lgnu/kawa/functions/ParseFormat;->parseFormat:Lgnu/kawa/functions/ParseFormat;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "emacsStyle"    # Z

    .line 17
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    .line 18
    iput-boolean p1, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    .line 19
    return-void
.end method

.method public static asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;
    .registers 7
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "style"    # C

    .line 234
    const-string v0, ")"

    :try_start_2
    instance-of v1, p0, Lgnu/text/ReportFormat;

    if-eqz v1, :cond_a

    .line 235
    move-object v1, p0

    check-cast v1, Lgnu/text/ReportFormat;

    return-object v1

    .line 236
    :cond_a
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_18

    .line 237
    new-instance v1, Lgnu/kawa/functions/LispFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/kawa/functions/LispFormat;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 241
    :cond_18
    instance-of v1, p0, Lgnu/lists/FString;

    if-eqz v1, :cond_2a

    .line 243
    move-object v1, p0

    check-cast v1, Lgnu/lists/FString;

    .line 244
    .local v1, "str":Lgnu/lists/FString;
    new-instance v2, Lgnu/mapping/CharArrayInPort;

    iget-object v3, v1, Lgnu/lists/FString;->data:[C

    iget v4, v1, Lgnu/lists/FString;->size:I

    invoke-direct {v2, v3, v4}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V

    move-object v1, v2

    .line 245
    .local v1, "iport":Lgnu/mapping/InPort;
    goto :goto_33

    .line 247
    .end local v1    # "iport":Lgnu/mapping/InPort;
    :cond_2a
    new-instance v1, Lgnu/mapping/CharArrayInPort;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_33} :catch_67
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_33} :catch_49
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_33} :catch_40

    .line 250
    .restart local v1    # "iport":Lgnu/mapping/InPort;
    :goto_33
    :try_start_33
    invoke-static {v1, p1}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3b

    .line 254
    :try_start_37
    invoke-virtual {v1}, Lgnu/mapping/InPort;->close()V

    return-object v2

    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Lgnu/mapping/InPort;->close()V

    .end local p0    # "arg":Ljava/lang/Object;
    .end local p1    # "style":C
    throw v2
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_40} :catch_67
    .catch Ljava/text/ParseException; {:try_start_37 .. :try_end_40} :catch_49
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_37 .. :try_end_40} :catch_40

    .line 266
    .end local v1    # "iport":Lgnu/mapping/InPort;
    .restart local p0    # "arg":Ljava/lang/Object;
    .restart local p1    # "style":C
    :catch_40
    move-exception v0

    .line 268
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "End while parsing format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_49
    move-exception v1

    .line 264
    .local v1, "ex":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid format ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    .end local v1    # "ex":Ljava/text/ParseException;
    :catch_67
    move-exception v1

    .line 260
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing format ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    move/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 37
    nop

    .line 38
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 42
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 43
    if-ltz v4, :cond_27

    .line 45
    if-eq v4, v0, :cond_1c

    .line 48
    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    goto :goto_f

    .line 51
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 52
    if-ne v4, v0, :cond_27

    .line 54
    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    goto :goto_f

    .line 58
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 59
    const/4 v6, 0x0

    if-lez v5, :cond_3e

    .line 61
    new-array v7, v5, [C

    .line 62
    invoke-virtual {v1, v6, v5, v7, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 63
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 64
    new-instance v5, Lgnu/text/LiteralFormat;

    invoke-direct {v5, v7}, Lgnu/text/LiteralFormat;-><init>([C)V

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    :cond_3e
    const/4 v5, 0x1

    if-gez v4, :cond_5e

    .line 67
    nop

    .line 213
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 214
    if-ne v0, v5, :cond_53

    .line 216
    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 217
    instance-of v2, v1, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_53

    .line 218
    check-cast v1, Lgnu/text/ReportFormat;

    return-object v1

    .line 220
    :cond_53
    new-array v0, v0, [Ljava/text/Format;

    .line 221
    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 222
    new-instance v1, Lgnu/text/CompoundFormat;

    invoke-direct {v1, v0}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;)V

    return-object v1

    .line 69
    :cond_5e
    const/16 v7, 0x24

    const/4 v8, -0x1

    const/16 v9, 0xa

    if-ne v4, v7, :cond_86

    .line 71
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 72
    int-to-char v4, v4

    invoke-static {v4, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 73
    if-ltz v4, :cond_7e

    .line 78
    :goto_70
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 79
    int-to-char v7, v4

    invoke-static {v7, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 80
    if-gez v7, :cond_7d

    .line 81
    nop

    .line 84
    goto :goto_86

    .line 82
    :cond_7d
    goto :goto_70

    .line 74
    :cond_7e
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "missing number (position) after \'%$\'"

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 87
    :cond_86
    :goto_86
    const/4 v7, 0x0

    .line 90
    :goto_87
    int-to-char v10, v4

    sparse-switch v10, :sswitch_data_1a8

    .line 98
    goto :goto_a4

    .line 95
    :sswitch_8c
    or-int/lit8 v4, v7, 0x8

    move v7, v4

    goto :goto_9f

    .line 92
    :sswitch_90
    or-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_9f

    .line 93
    :sswitch_94
    or-int/lit8 v4, v7, 0x2

    move v7, v4

    goto :goto_9f

    .line 96
    :sswitch_98
    or-int/lit8 v4, v7, 0x10

    move v7, v4

    goto :goto_9f

    .line 94
    :sswitch_9c
    or-int/lit8 v4, v7, 0x4

    move v7, v4

    .line 88
    :goto_9f
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    goto :goto_87

    .line 101
    :goto_a4
    nop

    .line 102
    invoke-static {v10, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    .line 103
    const/high16 v11, -0x60000000

    const/16 v12, 0x2a

    const/high16 v13, -0x40000000    # -2.0f

    if-ltz v10, :cond_c2

    .line 105
    nop

    .line 108
    :goto_b2
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 109
    int-to-char v14, v4

    invoke-static {v14, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v14

    .line 110
    if-gez v14, :cond_be

    .line 111
    goto :goto_c9

    .line 112
    :cond_be
    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v14

    goto :goto_b2

    .line 115
    :cond_c2
    if-ne v4, v12, :cond_c7

    .line 116
    const/high16 v10, -0x60000000

    goto :goto_c9

    .line 115
    :cond_c7
    const/high16 v10, -0x40000000    # -2.0f

    .line 118
    :goto_c9
    nop

    .line 119
    const/16 v14, 0x2e

    if-ne v4, v14, :cond_e5

    .line 121
    if-ne v4, v12, :cond_d3

    .line 122
    const/high16 v15, -0x60000000

    goto :goto_e7

    .line 125
    :cond_d3
    const/4 v11, 0x0

    .line 128
    :goto_d4
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 129
    int-to-char v12, v4

    invoke-static {v12, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    .line 130
    if-gez v12, :cond_e1

    .line 131
    move v15, v11

    goto :goto_e7

    .line 132
    :cond_e1
    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v12

    goto :goto_d4

    .line 119
    :cond_e5
    const/high16 v15, -0x40000000    # -2.0f

    .line 137
    :goto_e7
    const/16 v11, 0x30

    const/16 v12, 0x20

    sparse-switch v4, :sswitch_data_1be

    .line 191
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 188
    :sswitch_10d
    new-instance v4, Lgnu/kawa/functions/ObjectFormat;

    invoke-direct {v4, v6}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    .line 189
    goto/16 :goto_186

    .line 150
    :sswitch_114
    nop

    .line 151
    const/16 v5, 0x10

    const/16 v14, 0x8

    if-eq v4, v2, :cond_132

    const/16 v2, 0x69

    if-ne v4, v2, :cond_120

    goto :goto_132

    .line 153
    :cond_120
    const/16 v2, 0x6f

    if-ne v4, v2, :cond_128

    .line 154
    const/4 v2, 0x0

    const/16 v5, 0x8

    goto :goto_135

    .line 157
    :cond_128
    nop

    .line 158
    const/16 v2, 0x58

    if-ne v4, v2, :cond_130

    const/16 v2, 0x20

    goto :goto_135

    :cond_130
    const/4 v2, 0x0

    goto :goto_135

    .line 152
    :cond_132
    :goto_132
    const/4 v2, 0x0

    const/16 v5, 0xa

    .line 160
    :goto_135
    nop

    .line 161
    nop

    .line 162
    and-int/lit8 v4, v7, 0x9

    if-ne v4, v14, :cond_13e

    const/16 v16, 0x30

    goto :goto_140

    :cond_13e
    const/16 v16, 0x20

    .line 164
    :goto_140
    and-int/lit8 v4, v7, 0x10

    if-eqz v4, :cond_146

    .line 165
    or-int/lit8 v2, v2, 0x8

    .line 166
    :cond_146
    and-int/lit8 v4, v7, 0x2

    if-eqz v4, :cond_14c

    .line 167
    or-int/lit8 v2, v2, 0x2

    .line 168
    :cond_14c
    and-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_152

    .line 169
    or-int/lit8 v2, v2, 0x10

    .line 170
    :cond_152
    and-int/lit8 v4, v7, 0x4

    if-eqz v4, :cond_15b

    .line 171
    or-int/lit8 v2, v2, 0x4

    move/from16 v19, v2

    goto :goto_15d

    .line 170
    :cond_15b
    move/from16 v19, v2

    .line 172
    :goto_15d
    if-eq v15, v13, :cond_16f

    .line 174
    and-int/lit8 v7, v7, -0x9

    .line 175
    or-int/lit8 v19, v19, 0x40

    .line 176
    const/16 v16, 0x30

    const/high16 v17, -0x40000000    # -2.0f

    const/high16 v18, -0x40000000    # -2.0f

    move v14, v5

    invoke-static/range {v14 .. v19}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v4

    goto :goto_186

    .line 181
    :cond_16f
    const/high16 v17, -0x40000000    # -2.0f

    const/high16 v18, -0x40000000    # -2.0f

    move v14, v5

    move v15, v10

    invoke-static/range {v14 .. v19}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v4

    .line 184
    goto :goto_186

    .line 141
    :sswitch_17a
    new-instance v2, Lgnu/kawa/functions/ObjectFormat;

    const/16 v9, 0x53

    if-ne v4, v9, :cond_181

    goto :goto_182

    :cond_181
    const/4 v5, 0x0

    :goto_182
    invoke-direct {v2, v5, v15}, Lgnu/kawa/functions/ObjectFormat;-><init>(ZI)V

    .line 142
    move-object v4, v2

    .line 193
    :goto_186
    if-lez v10, :cond_1a0

    .line 195
    and-int/lit8 v2, v7, 0x8

    if-eqz v2, :cond_18e

    const/16 v12, 0x30

    .line 197
    :cond_18e
    and-int/lit8 v2, v7, 0x1

    if-eqz v2, :cond_195

    .line 198
    const/16 v6, 0x64

    goto :goto_19a

    .line 199
    :cond_195
    if-ne v12, v11, :cond_199

    .line 200
    const/4 v6, -0x1

    goto :goto_19a

    .line 202
    :cond_199
    nop

    .line 203
    :goto_19a
    new-instance v2, Lgnu/text/PadFormat;

    invoke-direct {v2, v4, v10, v12, v6}, Lgnu/text/PadFormat;-><init>(Ljava/text/Format;ICI)V

    move-object v4, v2

    .line 209
    :cond_1a0
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 210
    nop

    .line 211
    const/16 v2, 0x64

    goto/16 :goto_f

    :sswitch_data_1a8
    .sparse-switch
        0x20 -> :sswitch_9c
        0x23 -> :sswitch_98
        0x2b -> :sswitch_94
        0x2d -> :sswitch_90
        0x30 -> :sswitch_8c
    .end sparse-switch

    :sswitch_data_1be
    .sparse-switch
        0x53 -> :sswitch_17a
        0x58 -> :sswitch_114
        0x64 -> :sswitch_114
        0x65 -> :sswitch_10d
        0x66 -> :sswitch_10d
        0x67 -> :sswitch_10d
        0x69 -> :sswitch_114
        0x6f -> :sswitch_114
        0x73 -> :sswitch_17a
        0x78 -> :sswitch_114
    .end sparse-switch
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg"    # Ljava/lang/Object;

    .line 227
    iget-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x3f

    goto :goto_9

    :cond_7
    const/16 v0, 0x7e

    :goto_9
    invoke-static {p1, v0}, Lgnu/kawa/functions/ParseFormat;->asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;

    move-result-object v0

    return-object v0
.end method

.method public parseFormat(Lgnu/text/LineBufferedReader;)Lgnu/text/ReportFormat;
    .registers 3
    .param p1, "fmt"    # Lgnu/text/LineBufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x3f

    goto :goto_9

    :cond_7
    const/16 v0, 0x7e

    :goto_9
    invoke-static {p1, v0}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;

    move-result-object v0

    return-object v0
.end method
