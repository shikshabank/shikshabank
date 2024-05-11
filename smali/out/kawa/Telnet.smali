.class public Lkawa/Telnet;
.super Ljava/lang/Object;
.source "Telnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DO:I = 0xfd

.field public static final DONT:I = 0xfe

.field public static final ECHO:I = 0x1

.field static final EOF:I = 0xec

.field static final IAC:I = 0xff

.field static final IP:I = 0xf4

.field static final LINEMODE:I = 0x22

.field static final NAWS:I = 0x1f

.field static final NOP:I = 0xf1

.field static final OPTION_NO:I = 0x0

.field static final OPTION_WANTNO:I = 0x1

.field static final OPTION_WANTNO_OPPOSITE:I = 0x2

.field static final OPTION_WANTYES:I = 0x3

.field static final OPTION_WANTYES_OPPOSITE:I = 0x4

.field static final OPTION_YES:I = 0x5

.field static final SB:I = 0xfa

.field static final SE:I = 0xf0

.field public static final SUPPRESS_GO_AHEAD:I = 0x3

.field static final TM:I = 0x6

.field static final TTYPE:I = 0x18

.field public static final WILL:I = 0xfb

.field public static final WONT:I = 0xfc


# instance fields
.field in:Lkawa/TelnetInputStream;

.field isServer:Z

.field final optionsState:[B

.field out:Lkawa/TelnetOutputStream;

.field final preferredLineMode:B

.field sin:Ljava/io/InputStream;

.field sout:Ljava/io/OutputStream;

.field public terminalType:[B

.field public windowHeight:S

.field public windowWidth:S


# direct methods
.method public constructor <init>(Ljava/net/Socket;Z)V
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "isServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x3

    iput-byte v0, p0, Lkawa/Telnet;->preferredLineMode:B

    .line 99
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lkawa/Telnet;->optionsState:[B

    .line 412
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lkawa/Telnet;->sin:Ljava/io/InputStream;

    .line 413
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lkawa/Telnet;->sout:Ljava/io/OutputStream;

    .line 414
    new-instance v0, Lkawa/TelnetOutputStream;

    iget-object v1, p0, Lkawa/Telnet;->sout:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lkawa/TelnetOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    .line 415
    new-instance v0, Lkawa/TelnetInputStream;

    iget-object v1, p0, Lkawa/Telnet;->sin:Ljava/io/InputStream;

    invoke-direct {v0, v1, p0}, Lkawa/TelnetInputStream;-><init>(Ljava/io/InputStream;Lkawa/Telnet;)V

    iput-object v0, p0, Lkawa/Telnet;->in:Lkawa/TelnetInputStream;

    .line 416
    iput-boolean p2, p0, Lkawa/Telnet;->isServer:Z

    .line 417
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 13
    .param p0, "args"    # [Ljava/lang/String;

    .line 367
    array-length v0, p0

    if-nez v0, :cond_6

    .line 368
    invoke-static {}, Lkawa/Telnet;->usage()V

    .line 369
    :cond_6
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 370
    .local v1, "host":Ljava/lang/String;
    const/16 v2, 0x17

    .line 371
    .local v2, "port":I
    array-length v3, p0

    const/4 v4, 0x1

    if-le v3, v4, :cond_15

    .line 373
    aget-object v3, p0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 377
    :cond_15
    :try_start_15
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 378
    .local v3, "socket":Ljava/net/Socket;
    new-instance v5, Lkawa/Telnet;

    invoke-direct {v5, v3, v0}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 379
    .local v5, "telnet":Lkawa/Telnet;
    invoke-virtual {v5}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v6

    .line 380
    .local v6, "tout":Lkawa/TelnetOutputStream;
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 382
    .local v7, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getPriority()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 383
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 385
    const/16 v8, 0x400

    new-array v8, v8, [B

    .line 388
    .local v8, "buffer":[B
    :goto_3b
    sget-object v9, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 389
    .local v9, "ch":I
    if-gez v9, :cond_48

    .line 390
    nop

    .line 401
    .end local v9    # "ch":I
    invoke-virtual {v7}, Ljava/lang/Thread;->stop()V

    .line 406
    .end local v3    # "socket":Ljava/net/Socket;
    .end local v5    # "telnet":Lkawa/Telnet;
    .end local v6    # "tout":Lkawa/TelnetOutputStream;
    .end local v7    # "t":Ljava/lang/Thread;
    .end local v8    # "buffer":[B
    goto :goto_6d

    .line 391
    .restart local v3    # "socket":Ljava/net/Socket;
    .restart local v5    # "telnet":Lkawa/Telnet;
    .restart local v6    # "tout":Lkawa/TelnetOutputStream;
    .restart local v7    # "t":Ljava/lang/Thread;
    .restart local v8    # "buffer":[B
    .restart local v9    # "ch":I
    :cond_48
    int-to-byte v10, v9

    aput-byte v10, v8, v0

    .line 392
    sget-object v10, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v10

    .line 393
    .local v10, "avail":I
    if-lez v10, :cond_61

    .line 395
    array-length v11, v8

    sub-int/2addr v11, v4

    if-le v10, v11, :cond_5a

    .line 396
    array-length v11, v8

    add-int/lit8 v10, v11, -0x1

    .line 397
    :cond_5a
    sget-object v11, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v11, v8, v4, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    move v10, v11

    .line 399
    :cond_61
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v6, v8, v0, v11}, Lkawa/TelnetOutputStream;->write([BII)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_66} :catch_67

    .line 400
    .end local v9    # "ch":I
    .end local v10    # "avail":I
    goto :goto_3b

    .line 403
    .end local v3    # "socket":Ljava/net/Socket;
    .end local v5    # "telnet":Lkawa/Telnet;
    .end local v6    # "tout":Lkawa/TelnetOutputStream;
    .end local v7    # "t":Ljava/lang/Thread;
    .end local v8    # "buffer":[B
    :catch_67
    move-exception v0

    .line 405
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 407
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6d
    return-void
.end method

.method static usage()V
    .registers 2

    .line 361
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage:  [java] kawa.Telnet HOST [PORT#]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 363
    return-void
.end method


# virtual methods
.method change(II)Z
    .registers 8
    .param p1, "command"    # I
    .param p2, "option"    # I

    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p2, v1, :cond_5

    .line 136
    return v0

    .line 137
    :cond_5
    iget-boolean v1, p0, Lkawa/Telnet;->isServer:Z

    if-eqz v1, :cond_e

    const/16 v2, 0x1f

    if-ne p2, v2, :cond_e

    .line 138
    return v0

    .line 139
    :cond_e
    const/16 v2, 0xfb

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    if-ne p1, v2, :cond_29

    const/16 v4, 0x22

    if-ne p2, v4, :cond_29

    .line 141
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 142
    .local v1, "buf":[B
    aput-byte v0, v1, v3

    .line 143
    const/4 v2, 0x3

    aput-byte v2, v1, v0

    .line 146
    :try_start_21
    iget-object v2, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v2, v4, v1}, Lkawa/TelnetOutputStream;->writeSubCommand(I[B)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_27

    .line 151
    goto :goto_28

    .line 148
    :catch_27
    move-exception v2

    .line 152
    :goto_28
    return v0

    .line 154
    .end local v1    # "buf":[B
    :cond_29
    if-eqz v1, :cond_3d

    if-ne p1, v2, :cond_3d

    const/16 v4, 0x18

    if-ne p2, v4, :cond_3d

    .line 156
    new-array v1, v0, [B

    .line 157
    .restart local v1    # "buf":[B
    aput-byte v0, v1, v3

    .line 160
    :try_start_35
    iget-object v2, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v2, p2, v1}, Lkawa/TelnetOutputStream;->writeSubCommand(I[B)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 165
    goto :goto_3c

    .line 162
    :catch_3b
    move-exception v2

    .line 166
    :goto_3c
    return v0

    .line 168
    .end local v1    # "buf":[B
    :cond_3d
    if-nez v1, :cond_49

    if-ne p2, v0, :cond_49

    .line 170
    const/16 v1, 0xfd

    if-ne p1, v1, :cond_46

    .line 171
    return v3

    .line 172
    :cond_46
    if-ne p1, v2, :cond_49

    .line 173
    return v0

    .line 175
    :cond_49
    return v3
.end method

.method public getInputStream()Lkawa/TelnetInputStream;
    .registers 2

    .line 84
    iget-object v0, p0, Lkawa/Telnet;->in:Lkawa/TelnetInputStream;

    return-object v0
.end method

.method public getOutputStream()Lkawa/TelnetOutputStream;
    .registers 2

    .line 89
    iget-object v0, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    return-object v0
.end method

.method handle(II)V
    .registers 11
    .param p1, "command"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xfd

    if-ge p1, v2, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 228
    .local v3, "otherSide":Z
    :goto_9
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_e

    const/4 v0, 0x1

    .line 229
    .local v0, "wantOn":Z
    :cond_e
    iget-object v1, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v1, v1, p2

    .line 231
    .local v1, "state":B
    if-eqz v3, :cond_17

    .line 232
    shr-int/lit8 v4, v1, 0x3

    int-to-byte v1, v4

    .line 233
    :cond_17
    shr-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0x7

    const/16 v5, 0xfb

    const/16 v6, 0xfe

    const/16 v7, 0xfc

    packed-switch v4, :pswitch_data_9a

    goto/16 :goto_7f

    .line 236
    :pswitch_26
    if-eqz v0, :cond_29

    .line 237
    return-void

    .line 239
    :cond_29
    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    .line 241
    iget-object v2, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v3, :cond_32

    goto :goto_34

    :cond_32
    const/16 v6, 0xfc

    :goto_34
    invoke-virtual {v2, v6, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 242
    goto :goto_7f

    .line 279
    :pswitch_38
    if-eqz v0, :cond_46

    .line 281
    const/4 v1, 0x1

    .line 282
    iget-object v2, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v3, :cond_40

    goto :goto_42

    :cond_40
    const/16 v6, 0xfc

    :goto_42
    invoke-virtual {v2, v6, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_7f

    .line 286
    :cond_46
    const/4 v1, 0x0

    goto :goto_7f

    .line 270
    :pswitch_48
    if-eqz v0, :cond_4f

    .line 272
    const/4 v1, 0x5

    .line 273
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    goto :goto_7f

    .line 276
    :cond_4f
    const/4 v1, 0x0

    .line 277
    goto :goto_7f

    .line 265
    :pswitch_51
    const/4 v1, 0x3

    .line 266
    iget-object v4, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v3, :cond_57

    goto :goto_59

    :cond_57
    const/16 v2, 0xfb

    :goto_59
    invoke-virtual {v4, v2, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 268
    goto :goto_7f

    .line 258
    :pswitch_5d
    const/4 v1, 0x0

    .line 259
    goto :goto_7f

    .line 244
    :pswitch_5f
    if-nez v0, :cond_62

    .line 245
    return-void

    .line 246
    :cond_62
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 248
    const/4 v1, 0x5

    .line 249
    iget-object v4, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v3, :cond_6e

    goto :goto_70

    :cond_6e
    const/16 v2, 0xfb

    :goto_70
    invoke-virtual {v4, v2, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_7f

    .line 253
    :cond_74
    iget-object v2, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v3, :cond_79

    goto :goto_7b

    :cond_79
    const/16 v6, 0xfc

    :goto_7b
    invoke-virtual {v2, v6, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 256
    nop

    .line 290
    :goto_7f
    if-eqz v3, :cond_8c

    .line 291
    iget-object v2, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v2, v2, p2

    and-int/lit16 v2, v2, 0xc7

    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v2, v4

    int-to-byte v1, v2

    goto :goto_94

    .line 293
    :cond_8c
    iget-object v2, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v2, v2, p2

    and-int/lit16 v2, v2, 0xf8

    or-int/2addr v2, v1

    int-to-byte v1, v2

    .line 294
    :goto_94
    iget-object v2, p0, Lkawa/Telnet;->optionsState:[B

    aput-byte v1, v2, p2

    .line 295
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5d
        :pswitch_51
        :pswitch_48
        :pswitch_38
        :pswitch_26
    .end packed-switch
.end method

.method public request(II)V
    .registers 8
    .param p1, "command"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xfd

    if-lt p1, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    .line 307
    .local v2, "otherSide":Z
    :goto_9
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_e

    const/4 v0, 0x1

    .line 309
    .local v0, "wantOn":Z
    :cond_e
    iget-object v1, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v1, v1, p2

    .line 310
    .local v1, "state":B
    if-eqz v2, :cond_17

    .line 311
    shr-int/lit8 v3, v1, 0x3

    int-to-byte v1, v3

    .line 313
    :cond_17
    and-int/lit8 v3, v1, 0x7

    packed-switch v3, :pswitch_data_58

    goto :goto_3d

    .line 324
    :pswitch_1d
    if-nez v0, :cond_3d

    .line 326
    const/4 v1, 0x1

    .line 327
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v3, p1, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_3d

    .line 342
    :pswitch_26
    if-nez v0, :cond_29

    .line 343
    const/4 v1, 0x4

    .line 346
    :cond_29
    :pswitch_29
    if-eqz v0, :cond_3d

    .line 347
    const/4 v1, 0x3

    goto :goto_3d

    .line 337
    :pswitch_2d
    if-nez v0, :cond_3d

    .line 338
    const/4 v1, 0x1

    goto :goto_3d

    .line 332
    :pswitch_31
    if-eqz v0, :cond_3d

    .line 333
    const/4 v1, 0x2

    goto :goto_3d

    .line 316
    :pswitch_35
    if-eqz v0, :cond_3d

    .line 318
    const/4 v1, 0x3

    .line 319
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v3, p1, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 352
    :cond_3d
    :goto_3d
    if-eqz v2, :cond_4a

    .line 353
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v3, v3, p2

    and-int/lit16 v3, v3, 0xc7

    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    int-to-byte v1, v3

    goto :goto_52

    .line 355
    :cond_4a
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v3, v3, p2

    and-int/lit16 v3, v3, 0xf8

    or-int/2addr v3, v1

    int-to-byte v1, v3

    .line 356
    :goto_52
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aput-byte v1, v3, p2

    .line 357
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_26
        :pswitch_29
        :pswitch_1d
    .end packed-switch
.end method

.method public run()V
    .registers 8

    .line 423
    :try_start_0
    invoke-virtual {p0}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v0

    .line 424
    .local v0, "tin":Lkawa/TelnetInputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 427
    .local v1, "buffer":[B
    :goto_8
    invoke-virtual {v0}, Lkawa/TelnetInputStream;->read()I

    move-result v2

    .line 428
    .local v2, "ch":I
    if-gez v2, :cond_10

    .line 429
    nop

    .line 445
    .end local v0    # "tin":Lkawa/TelnetInputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "ch":I
    goto :goto_39

    .line 430
    .restart local v0    # "tin":Lkawa/TelnetInputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "ch":I
    :cond_10
    int-to-byte v3, v2

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 431
    invoke-virtual {v0}, Lkawa/TelnetInputStream;->available()I

    move-result v3

    .line 432
    .local v3, "avail":I
    if-lez v3, :cond_27

    .line 434
    array-length v5, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_22

    .line 435
    array-length v5, v1

    add-int/lit8 v3, v5, -0x1

    .line 436
    :cond_22
    invoke-virtual {v0, v1, v6, v3}, Lkawa/TelnetInputStream;->read([BII)I

    move-result v5

    move v3, v5

    .line 438
    :cond_27
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v1, v4, v6}, Ljava/io/PrintStream;->write([BII)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 439
    .end local v2    # "ch":I
    .end local v3    # "avail":I
    goto :goto_8

    .line 441
    .end local v0    # "tin":Lkawa/TelnetInputStream;
    .end local v1    # "buffer":[B
    :catch_2f
    move-exception v0

    .line 443
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 444
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 446
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_39
    return-void
.end method

.method public subCommand([BII)V
    .registers 11
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 182
    aget-byte v0, p1, p2

    .line 183
    .local v0, "command":I
    const/4 v1, 0x3

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_be

    goto/16 :goto_bd

    :sswitch_9
    const/4 v3, 0x0

    .line 205
    .local v3, "type":[B
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SBCommand LINEMODE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " len:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    aget-byte v2, p1, v2

    if-ne v2, v1, :cond_bd

    .line 208
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_33
    add-int/lit8 v2, v1, 0x2

    if-ge v2, p3, :cond_6e

    .line 210
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    add-int/lit8 v1, v1, 0x3

    goto :goto_33

    .line 212
    .end local v1    # "i":I
    :cond_6e
    return-void

    .line 186
    .end local v3    # "type":[B
    :sswitch_6f
    const/4 v3, 0x5

    if-ne p3, v3, :cond_bd

    .line 188
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lkawa/Telnet;->windowWidth:S

    .line 189
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lkawa/Telnet;->windowHeight:S

    .line 194
    return-void

    .line 198
    :sswitch_8d
    add-int/lit8 v1, p3, -0x1

    new-array v1, v1, [B

    .line 199
    .local v1, "type":[B
    const/4 v3, 0x0

    add-int/lit8 v4, p3, -0x1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iput-object v1, p0, Lkawa/Telnet;->terminalType:[B

    .line 201
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "terminal type: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    return-void

    .line 217
    .end local v1    # "type":[B
    :cond_bd
    :goto_bd
    return-void

    :sswitch_data_be
    .sparse-switch
        0x18 -> :sswitch_8d
        0x1f -> :sswitch_6f
        0x22 -> :sswitch_9
    .end sparse-switch
.end method
