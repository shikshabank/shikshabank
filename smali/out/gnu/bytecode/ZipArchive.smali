.class public Lgnu/bytecode/ZipArchive;
.super Ljava/lang/Object;
.source "ZipArchive.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .registers 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const-wide/16 v0, 0x0

    .line 28
    .local v0, "total":J
    :goto_2
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 29
    .local v2, "count":I
    if-gtz v2, :cond_9

    .line 30
    return-wide v0

    .line 31
    :cond_9
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 32
    int-to-long v3, v2

    add-long/2addr v0, v3

    .line 33
    .end local v2    # "count":I
    goto :goto_2
.end method

.method public static copy(Ljava/io/InputStream;Ljava/lang/String;[B)V
    .registers 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "dir_name":Ljava/lang/String;
    if-eqz v1, :cond_32

    .line 43
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_32

    .line 45
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mkdirs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    .end local v2    # "dir":Ljava/io/File;
    :cond_32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_50

    .line 49
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    .local v2, "out":Ljava/io/OutputStream;
    invoke-static {p0, v2, p2}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    .line 51
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 53
    .end local v2    # "out":Ljava/io/OutputStream;
    :cond_50
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 16
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const-string v0, "t"

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_9

    .line 78
    invoke-static {}, Lgnu/bytecode/ZipArchive;->usage()V

    .line 79
    :cond_9
    const/4 v1, 0x0

    aget-object v3, p0, v1

    .line 80
    .local v3, "command":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, p0, v4

    .line 84
    .local v4, "archive_name":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_18f

    const-string v6, " - not found"

    const-string v7, "p"

    if-nez v5, :cond_db

    :try_start_19
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_db

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    goto/16 :goto_db

    .line 145
    :cond_29
    const-string v0, "q"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 147
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v0, "zar":Ljava/util/zip/ZipOutputStream;
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_3c
    array-length v5, p0

    if-ge v2, v5, :cond_d1

    .line 151
    new-instance v5, Ljava/io/File;

    aget-object v7, p0, v2

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v5, "in":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 154
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 156
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v8, v7

    .line 157
    .local v8, "size":I
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 158
    .local v7, "fin":Ljava/io/FileInputStream;
    new-array v9, v8, [B

    .line 159
    .local v9, "contents":[B
    invoke-virtual {v7, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-ne v10, v8, :cond_82

    .line 161
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 163
    new-instance v10, Ljava/util/zip/ZipEntry;

    aget-object v11, p0, v2

    invoke-direct {v10, v11}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 164
    .local v10, "ze":Ljava/util/zip/ZipEntry;
    int-to-long v11, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 165
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 166
    invoke-virtual {v0, v10}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 167
    invoke-virtual {v0, v9, v1, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 149
    .end local v5    # "in":Ljava/io/File;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v8    # "size":I
    .end local v9    # "contents":[B
    .end local v10    # "ze":Ljava/util/zip/ZipEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 160
    .restart local v5    # "in":Ljava/io/File;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "size":I
    .restart local v9    # "contents":[B
    :cond_82
    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, p0, v2

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " - read error"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "command":Ljava/lang/String;
    .end local v4    # "archive_name":Ljava/lang/String;
    .end local p0    # "args":[Ljava/lang/String;
    throw v1

    .line 155
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v8    # "size":I
    .end local v9    # "contents":[B
    .restart local v3    # "command":Ljava/lang/String;
    .restart local v4    # "archive_name":Ljava/lang/String;
    .restart local p0    # "args":[Ljava/lang/String;
    :cond_9d
    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - not readable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "command":Ljava/lang/String;
    .end local v4    # "archive_name":Ljava/lang/String;
    .end local p0    # "args":[Ljava/lang/String;
    throw v1

    .line 153
    .restart local v3    # "command":Ljava/lang/String;
    .restart local v4    # "archive_name":Ljava/lang/String;
    .restart local p0    # "args":[Ljava/lang/String;
    :cond_b8
    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "command":Ljava/lang/String;
    .end local v4    # "archive_name":Ljava/lang/String;
    .end local p0    # "args":[Ljava/lang/String;
    throw v1

    .line 169
    .end local v2    # "i":I
    .end local v5    # "in":Ljava/io/File;
    .restart local v3    # "command":Ljava/lang/String;
    .restart local v4    # "archive_name":Ljava/lang/String;
    .restart local p0    # "args":[Ljava/lang/String;
    :cond_d1
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 170
    .end local v0    # "zar":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_18e

    .line 172
    :cond_d6
    invoke-static {}, Lgnu/bytecode/ZipArchive;->usage()V

    goto/16 :goto_18e

    .line 88
    :cond_db
    :goto_db
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 89
    .local v1, "out":Ljava/io/PrintStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 90
    .local v5, "buf":[B
    array-length v8, p0
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_e2} :catch_18f

    const-string v9, " size: "

    if-ne v8, v2, :cond_123

    .line 92
    :try_start_e6
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v2, "in":Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/util/zip/ZipInputStream;

    invoke-direct {v6, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    .local v6, "zin":Ljava/util/zip/ZipInputStream;
    :goto_f5
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    move-object v10, v8

    .local v10, "zent":Ljava/util/zip/ZipEntry;
    if-eqz v8, :cond_122

    .line 98
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_114

    .line 101
    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintStream;->println(J)V

    goto :goto_121

    .line 105
    :cond_114
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11e

    .line 107
    invoke-static {v6, v1, v5}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    goto :goto_121

    .line 111
    :cond_11e
    invoke-static {v6, v8, v5}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/lang/String;[B)V

    .line 113
    .end local v8    # "name":Ljava/lang/String;
    :goto_121
    goto :goto_f5

    .line 114
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v6    # "zin":Ljava/util/zip/ZipInputStream;
    .end local v10    # "zent":Ljava/util/zip/ZipEntry;
    :cond_122
    goto :goto_18d

    .line 117
    :cond_123
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "zar":Ljava/util/zip/ZipFile;
    const/4 v8, 0x2

    .local v8, "i":I
    :goto_129
    array-length v10, p0

    if-ge v8, v10, :cond_18d

    .line 120
    aget-object v10, p0, v8

    .line 121
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    .line 122
    .local v11, "zent":Ljava/util/zip/ZipEntry;
    if-nez v11, :cond_161

    .line 124
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "zipfile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, p0, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    goto :goto_18a

    .line 128
    :cond_161
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_175

    .line 130
    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Ljava/io/PrintStream;->println(J)V

    goto :goto_18a

    .line 134
    :cond_175
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_183

    .line 136
    invoke-virtual {v2, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12, v1, v5}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    goto :goto_18a

    .line 140
    :cond_183
    invoke-virtual {v2, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12, v10, v5}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/lang/String;[B)V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_18a} :catch_18f

    .line 118
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "zent":Ljava/util/zip/ZipEntry;
    :goto_18a
    add-int/lit8 v8, v8, 0x1

    goto :goto_129

    .line 144
    .end local v1    # "out":Ljava/io/PrintStream;
    .end local v2    # "zar":Ljava/util/zip/ZipFile;
    .end local v5    # "buf":[B
    .end local v8    # "i":I
    :cond_18d
    :goto_18d
    nop

    .line 177
    :goto_18e
    goto :goto_1a8

    .line 174
    :catch_18f
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O Exception:  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1a8
    return-void
.end method

.method private static usage()V
    .registers 2

    .line 18
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "zipfile [ptxq] archive [file ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 20
    return-void
.end method
