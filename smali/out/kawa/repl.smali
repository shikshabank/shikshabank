.class public Lkawa/repl;
.super Lgnu/mapping/Procedure0or1;
.source "repl.java"


# static fields
.field public static compilationTopname:Ljava/lang/String;

.field static defaultParseOptions:I

.field public static homeDirectory:Ljava/lang/String;

.field public static noConsole:Z

.field static previousLanguage:Lgnu/expr/Language;

.field static shutdownRegistered:Z


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    .line 23
    const/16 v0, 0x48

    sput v0, Lkawa/repl;->defaultParseOptions:I

    .line 176
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0}, Lgnu/text/WriterManager;->registerShutdownHook()Z

    move-result v0

    sput-boolean v0, Lkawa/repl;->shutdownRegistered:Z

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;)V
    .registers 2
    .param p1, "language"    # Lgnu/expr/Language;

    .line 26
    invoke-direct {p0}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 27
    iput-object p1, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    .line 28
    return-void
.end method

.method static bad_option(Ljava/lang/String;)V
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 44
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kawa: bad option \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lkawa/repl;->printOptions(Ljava/io/PrintStream;)V

    .line 46
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 47
    return-void
.end method

.method static checkInitFile()V
    .registers 6

    .line 125
    sget-object v0, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    if-nez v0, :cond_55

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "initFile":Ljava/io/File;
    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    .line 130
    if-eqz v1, :cond_32

    .line 132
    new-instance v1, Lgnu/lists/FString;

    sget-object v2, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    invoke-direct {v1, v2}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "scmHomeDirectory":Ljava/lang/Object;
    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "file_separator":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, ".kawarc.scm"

    goto :goto_29

    :cond_27
    const-string v3, "kawarc.scm"

    .line 137
    .local v3, "kawarc_name":Ljava/lang/String;
    :goto_29
    new-instance v4, Ljava/io/File;

    sget-object v5, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 138
    .end local v2    # "file_separator":Ljava/lang/String;
    .end local v3    # "kawarc_name":Ljava/lang/String;
    goto :goto_34

    .line 140
    .end local v1    # "scmHomeDirectory":Ljava/lang/Object;
    :cond_32
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 141
    .restart local v1    # "scmHomeDirectory":Ljava/lang/Object;
    :goto_34
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    const-string v3, "home-directory"

    invoke-virtual {v2, v3, v1}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_55

    .line 144
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 146
    .end local v0    # "initFile":Ljava/io/File;
    .end local v1    # "scmHomeDirectory":Ljava/lang/Object;
    :cond_55
    return-void
.end method

.method public static compileFiles([Ljava/lang/String;II)V
    .registers 16

    .line 718
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    .line 719
    sub-int v1, p2, p1

    new-array v2, v1, [Lgnu/expr/Compilation;

    .line 720
    new-array v1, v1, [Lgnu/expr/ModuleInfo;

    .line 721
    new-instance v3, Lgnu/text/SourceMessages;

    invoke-direct {v3}, Lgnu/text/SourceMessages;-><init>()V

    .line 722
    move v4, p1

    :goto_10
    const/16 v5, 0x29

    const-string v6, "(compiling "

    const/4 v7, -0x1

    if-ge v4, p2, :cond_a0

    .line 724
    aget-object v8, p0, v4

    .line 725
    invoke-static {v8}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v9

    .line 727
    const/4 v10, 0x0

    .line 733
    :try_start_21
    invoke-static {v8}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v7
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_25} :catch_54
    .catchall {:try_start_21 .. :try_end_25} :catchall_52

    .line 740
    nop

    .line 742
    :try_start_26
    sget v11, Lkawa/repl;->defaultParseOptions:I

    invoke-virtual {v9, v7, v3, v11}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object v10

    .line 746
    sget-object v7, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    if-eqz v7, :cond_47

    .line 748
    invoke-static {v7}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 750
    new-instance v9, Lgnu/bytecode/ClassType;

    invoke-direct {v9, v7}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v10}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v7

    .line 752
    invoke-virtual {v7, v9}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 753
    sget-object v11, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 754
    iput-object v9, v10, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 757
    :cond_47
    sub-int v7, v4, p1

    invoke-virtual {v0, v10}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    move-result-object v9

    aput-object v9, v1, v7

    .line 758
    aput-object v10, v2, v7

    .line 766
    goto :goto_6e

    .line 761
    :catchall_52
    move-exception v7

    goto :goto_5e

    .line 735
    :catch_54
    move-exception v9

    .line 737
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 738
    invoke-static {v7}, Ljava/lang/System;->exit(I)V
    :try_end_5d
    .catchall {:try_start_26 .. :try_end_5d} :catchall_52

    .line 739
    goto :goto_a0

    .line 763
    :goto_5e
    instance-of v9, v7, Lgnu/text/SyntaxException;

    if-eqz v9, :cond_6b

    move-object v9, v7

    check-cast v9, Lgnu/text/SyntaxException;

    invoke-virtual {v9}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v9

    if-eq v9, v3, :cond_6e

    .line 765
    :cond_6b
    invoke-static {v7, v10, v8}, Lkawa/repl;->internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V

    .line 767
    :cond_6e
    :goto_6e
    invoke-virtual {v3}, Lgnu/text/SourceMessages;->seenErrorsOrWarnings()Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 769
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 770
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v6, 0x14

    invoke-virtual {v3, v5, v6}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 771
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 722
    :cond_9c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    .line 775
    :cond_a0
    :goto_a0
    move v0, p1

    :goto_a1
    if-ge v0, p2, :cond_102

    .line 777
    aget-object v4, p0, v0

    .line 778
    sub-int v8, v0, p1

    aget-object v9, v2, v8

    .line 781
    :try_start_a9
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v12}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    aget-object v10, v1, v8

    const/16 v11, 0xe

    invoke-virtual {v10, v11}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 784
    invoke-virtual {v3}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v10

    .line 785
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v12, 0x32

    invoke-virtual {v3, v11, v12}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    .line 786
    if-eqz v10, :cond_ea

    .line 787
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 788
    :cond_ea
    aput-object v9, v2, v8

    .line 789
    invoke-virtual {v3}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v8

    .line 790
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v10, v12}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    .line 791
    if-eqz v8, :cond_fa

    .line 792
    invoke-static {v7}, Ljava/lang/System;->exit(I)V
    :try_end_fa
    .catchall {:try_start_a9 .. :try_end_fa} :catchall_fb

    .line 797
    :cond_fa
    goto :goto_ff

    .line 794
    :catchall_fb
    move-exception v8

    .line 796
    invoke-static {v8, v9, v4}, Lkawa/repl;->internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V

    .line 775
    :goto_ff
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 799
    :cond_102
    return-void
.end method

.method public static getLanguage()V
    .registers 1

    .line 169
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v0, :cond_e

    .line 171
    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    sput-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    .line 172
    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 174
    :cond_e
    return-void
.end method

.method public static getLanguageFromFilenameExtension(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 155
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v0, :cond_10

    .line 157
    invoke-static {p0}, Lgnu/expr/Language;->getInstanceFromFilenameExtension(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    sput-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    .line 158
    if-eqz v0, :cond_10

    .line 160
    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 161
    return-void

    .line 164
    :cond_10
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 165
    return-void
.end method

.method static internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V
    .registers 7
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 803
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 804
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_23

    .line 806
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, "file":Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v2

    .line 808
    .local v2, "line":I
    if-eqz v1, :cond_23

    if-lez v2, :cond_23

    .line 810
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 812
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 813
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "line":I
    :cond_23
    const-string v1, "internal error while compiling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 818
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 819
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 820
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 821
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 827
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_59

    .line 828
    .local v0, "iArg":I
    if-gez v0, :cond_13

    .line 857
    sget-boolean v1, Lkawa/repl;->shutdownRegistered:Z

    if-nez v1, :cond_f

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_f
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    return-void

    .line 831
    :cond_13
    :try_start_13
    array-length v2, p0

    if-ge v0, v2, :cond_28

    .line 833
    aget-object v2, p0, v0

    .line 834
    .local v2, "filename":Ljava/lang/String;
    invoke-static {v2}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 835
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 836
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 837
    invoke-static {v2, v1, v1}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v1

    .line 838
    .end local v2    # "filename":Ljava/lang/String;
    .local v1, "ok":Z
    goto :goto_4d

    .line 841
    .end local v1    # "ok":Z
    :cond_28
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 842
    invoke-static {p0, v0}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 843
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 844
    invoke-static {}, Lkawa/repl;->shouldUseGuiConsole()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 845
    invoke-static {}, Lkawa/repl;->startGuiConsole()V

    goto :goto_4d

    .line 848
    :cond_3b
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    invoke-static {v1, v2}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    move-result v1

    .line 850
    .restart local v1    # "ok":Z
    if-nez v1, :cond_4d

    .line 851
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_4d
    .catchall {:try_start_13 .. :try_end_4d} :catchall_59

    .line 857
    .end local v0    # "iArg":I
    .end local v1    # "ok":Z
    :cond_4d
    :goto_4d
    sget-boolean v0, Lkawa/repl;->shutdownRegistered:Z

    if-nez v0, :cond_54

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_54
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    .line 863
    nop

    .line 864
    return-void

    .line 857
    :catchall_59
    move-exception v0

    sget-boolean v1, Lkawa/repl;->shutdownRegistered:Z

    if-nez v1, :cond_61

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_61
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    throw v0
.end method

.method public static printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "doc"    # Ljava/lang/String;

    .line 51
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 55
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    rsub-int/lit8 v3, v1, 0x1e

    if-ge v2, v3, :cond_19

    .line 56
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 57
    .end local v2    # "i":I
    :cond_19
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static printOptions(Ljava/io/PrintStream;)V
    .registers 8
    .param p0, "out"    # Ljava/io/PrintStream;

    .line 63
    const-string v0, "Usage: [java kawa.repl | kawa] [options ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 65
    const-string v0, " Generic options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    const-string v0, "--help"

    const-string v1, "Show help about options"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "--author"

    const-string v1, "Show author information"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "--version"

    const-string v1, "Show version information"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 70
    const-string v0, " Options"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    const-string v0, "-e <expr>"

    const-string v1, "Evaluate expression <expr>"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "-c <expr>"

    const-string v1, "Same as -e, but make sure ~/.kawarc.scm is run first"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "-f <filename>"

    const-string v1, "File to interpret"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "-s| --"

    const-string v1, "Start reading commands interactively from console"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "-w"

    const-string v1, "Launch the interpreter in a GUI window"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "--server <port>"

    const-string v1, "Start a server accepting telnet connections on <port>"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "--debug-dump-zip"

    const-string v1, "Compiled interactive expressions to a zip archive"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "--debug-print-expr"

    const-string v1, "Print generated internal expressions"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "--debug-print-final-expr"

    const-string v1, "Print expression after any optimizations"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "--debug-error-prints-stack-trace"

    const-string v1, "Print stack trace with errors"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "--debug-warning-prints-stack-trace"

    const-string v1, "Print stack trace with warnings"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "--[no-]full-tailcalls"

    const-string v1, "(Don\'t) use full tail-calls"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "-C <filename> ..."

    const-string v1, "Compile named files to Java class files"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "--output-format <format>"

    const-string v1, "Use <format> when printing top-level output"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "--<language>"

    const-string v1, "Select source language, one of:"

    invoke-static {p0, v0, v1}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lgnu/expr/Language;->getLanguages()[[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "languages":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_98
    array-length v2, v0

    if-ge v1, v2, :cond_d0

    .line 89
    const-string v2, "   "

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 90
    aget-object v2, v0, v1

    .line 92
    .local v2, "lang":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 93
    .local v3, "nwords":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_a6
    if-ge v4, v3, :cond_c3

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    .line 95
    .end local v4    # "j":I
    :cond_c3
    if-nez v1, :cond_ca

    .line 96
    const-string v4, "[default]"

    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 97
    :cond_ca
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 87
    .end local v2    # "lang":[Ljava/lang/String;
    .end local v3    # "nwords":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 99
    .end local v1    # "i":I
    :cond_d0
    const-string v1, " Compilation options, must be specified before -C"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "-d <dirname>"

    const-string v2, "Directory to place .class files in"

    invoke-static {p0, v1, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "-P <prefix>"

    const-string v2, "Prefix to prepand to class names"

    invoke-static {p0, v1, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "-T <topname>"

    const-string v2, "name to give to top-level class"

    invoke-static {p0, v1, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "--main"

    const-string v2, "Generate an application, with a main method"

    invoke-static {p0, v1, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "--applet"

    const-string v2, "Generate an applet"

    invoke-static {p0, v1, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "--servlet"

    const-string v2, "Generate a servlet"

    invoke-static {p0, v1, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "--module-static"

    const-string v2, "Top-level definitions are by default static"

    invoke-static {p0, v1, v2}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v1, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v1}, Lgnu/text/Options;->keys()Ljava/util/ArrayList;

    move-result-object v1

    .line 110
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_138

    .line 112
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v5, v3}, Lgnu/text/Options;->getDoc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10d

    .line 116
    .end local v2    # "i":I
    :cond_138
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 117
    const-string v2, "For more information go to:  http://www.gnu.org/software/kawa/"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static processArgs([Ljava/lang/String;II)I
    .registers 19

    .line 181
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, 0x0

    move/from16 v0, p1

    const/4 v4, 0x0

    .line 182
    :goto_8
    const/4 v5, -0x1

    if-ge v0, v2, :cond_6c5

    .line 184
    aget-object v6, v1, v0

    .line 185
    const-string v7, "-c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_67d

    const-string v8, "-e"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    goto/16 :goto_67d

    .line 207
    :cond_20
    const-string v7, "-f"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 209
    add-int/lit8 v0, v0, 0x1

    .line 210
    if-ne v0, v2, :cond_2f

    .line 211
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 212
    :cond_2f
    aget-object v4, v1, v0

    .line 213
    invoke-static {v4}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 214
    add-int/lit8 v6, v0, 0x1

    invoke-static {v1, v6}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 215
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 216
    invoke-static {v4, v9, v3}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_45

    .line 217
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 218
    :cond_45
    nop

    .line 219
    const/4 v4, 0x1

    goto/16 :goto_6c1

    .line 220
    :cond_49
    const-string v7, "--script"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 222
    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    add-int/2addr v0, v9

    .line 224
    nop

    .line 225
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_66

    .line 229
    :try_start_5f
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_64

    .line 234
    goto :goto_66

    .line 231
    :catchall_64
    move-exception v0

    .line 233
    move v0, v2

    .line 236
    :cond_66
    :goto_66
    if-ne v0, v2, :cond_6b

    .line 237
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 238
    :cond_6b
    aget-object v2, v1, v0

    .line 239
    invoke-static {v2}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 240
    add-int/2addr v0, v9

    invoke-static {v1, v0}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 241
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 242
    invoke-static {v2, v9, v3}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_80

    .line 243
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 244
    :cond_80
    return v5

    .line 246
    :cond_81
    const-string v7, "\\"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c1

    .line 249
    add-int/2addr v0, v9

    if-ne v0, v2, :cond_8f

    .line 250
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 251
    :cond_8f
    aget-object v2, v1, v0

    .line 253
    new-instance v4, Lgnu/text/SourceMessages;

    invoke-direct {v4}, Lgnu/text/SourceMessages;-><init>()V

    .line 256
    :try_start_96
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 257
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 258
    const/16 v10, 0x23

    if-ne v7, v10, :cond_175

    .line 260
    new-instance v10, Ljava/lang/StringBuffer;

    const/16 v11, 0x64

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 261
    new-instance v11, Ljava/util/Vector;

    const/16 v12, 0xa

    invoke-direct {v11, v12}, Ljava/util/Vector;-><init>(I)V

    .line 262
    nop

    .line 263
    :goto_b7
    const/16 v13, 0xd

    if-eq v7, v12, :cond_c4

    if-eq v7, v13, :cond_c4

    if-ltz v7, :cond_c4

    .line 264
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v7

    goto :goto_b7

    .line 267
    :cond_c4
    const/4 v7, 0x0

    :goto_c5
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v14

    .line 268
    const/16 v15, 0x27

    if-gez v14, :cond_ec

    .line 270
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected end-of-file processing argument line for: \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 273
    :cond_ec
    const/16 v3, 0x5c

    if-nez v7, :cond_161

    .line 275
    if-eq v14, v3, :cond_15b

    if-eq v14, v15, :cond_15b

    const/16 v3, 0x22

    if-ne v14, v3, :cond_f9

    goto :goto_15b

    .line 280
    :cond_f9
    if-eq v14, v12, :cond_11a

    if-ne v14, v13, :cond_fe

    .line 281
    goto :goto_11a

    .line 282
    :cond_fe
    const/16 v3, 0x20

    if-eq v14, v3, :cond_106

    const/16 v3, 0x9

    if-ne v14, v3, :cond_16d

    .line 284
    :cond_106
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_117

    .line 286
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 287
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 267
    :cond_117
    const/4 v3, 0x0

    const/4 v9, 0x1

    goto :goto_c5

    .line 301
    :cond_11a
    :goto_11a
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_127

    .line 302
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 303
    :cond_127
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v3

    .line 304
    if-lez v3, :cond_175

    .line 306
    new-array v7, v3, [Ljava/lang/String;

    .line 307
    invoke-virtual {v11, v7}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 308
    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I

    move-result v7

    .line 309
    if-ltz v7, :cond_175

    if-ge v7, v3, :cond_175

    .line 311
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-int/2addr v3, v7

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " unused meta args"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_175

    .line 277
    :cond_15b
    :goto_15b
    nop

    .line 278
    move v7, v14

    const/4 v3, 0x0

    const/4 v9, 0x1

    goto/16 :goto_c5

    .line 292
    :cond_161
    if-ne v7, v3, :cond_165

    .line 293
    const/4 v7, 0x0

    goto :goto_16d

    .line 294
    :cond_165
    if-ne v14, v7, :cond_16d

    .line 296
    nop

    .line 297
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_c5

    .line 299
    :cond_16d
    :goto_16d
    int-to-char v3, v14

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    const/4 v9, 0x1

    goto/16 :goto_c5

    .line 315
    :cond_175
    :goto_175
    invoke-static {v2}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 316
    invoke-static {v6, v2}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v12

    .line 318
    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 319
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 320
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    .line 321
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v10

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v11

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v13

    const/4 v14, 0x0

    move-object v15, v4

    invoke-static/range {v10 .. v15}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v1

    .line 325
    const/16 v2, 0x14

    invoke-virtual {v4, v0, v2}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 326
    if-eqz v1, :cond_1b3

    .line 328
    instance-of v0, v1, Lgnu/text/SyntaxException;

    if-eqz v0, :cond_1b2

    .line 330
    move-object v0, v1

    check-cast v0, Lgnu/text/SyntaxException;

    .line 331
    invoke-virtual {v0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    if-ne v0, v4, :cond_1b2

    .line 332
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 334
    :cond_1b2
    throw v1
    :try_end_1b3
    .catchall {:try_start_96 .. :try_end_1b3} :catchall_1b4

    .line 341
    :cond_1b3
    goto :goto_1c0

    .line 337
    :catchall_1b4
    move-exception v0

    .line 339
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 340
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 342
    :goto_1c0
    return v5

    .line 344
    :cond_1c1
    const-string v3, "-s"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_666

    const-string v3, "--"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d3

    goto/16 :goto_666

    .line 353
    :cond_1d3
    const-string v3, "-w"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ed

    .line 355
    add-int/lit8 v0, v0, 0x1

    .line 356
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 357
    invoke-static {v1, v0}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 358
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 359
    invoke-static {}, Lkawa/repl;->startGuiConsole()V

    .line 360
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_6c1

    .line 362
    :cond_1ed
    const-string v3, "-d"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_208

    .line 364
    add-int/lit8 v0, v0, 0x1

    .line 365
    if-ne v0, v2, :cond_1fc

    .line 366
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 367
    :cond_1fc
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v3

    .line 368
    aget-object v5, v1, v0

    invoke-virtual {v3, v5}, Lgnu/expr/ModuleManager;->setCompilationDirectory(Ljava/lang/String;)V

    .line 369
    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 370
    :cond_208
    const-string v3, "--target"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e8

    const-string v3, "target"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21b

    const/4 v3, 0x0

    goto/16 :goto_5e9

    .line 393
    :cond_21b
    const-string v3, "-P"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_231

    .line 395
    add-int/lit8 v0, v0, 0x1

    .line 396
    if-ne v0, v2, :cond_22a

    .line 397
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 398
    :cond_22a
    aget-object v3, v1, v0

    sput-object v3, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 400
    :cond_231
    const-string v3, "-T"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 402
    add-int/lit8 v0, v0, 0x1

    .line 403
    if-ne v0, v2, :cond_240

    .line 404
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 405
    :cond_240
    aget-object v3, v1, v0

    sput-object v3, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 407
    :cond_247
    const-string v3, "-C"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25a

    .line 409
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 410
    if-ne v0, v2, :cond_256

    .line 411
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 412
    :cond_256
    invoke-static {v1, v0, v2}, Lkawa/repl;->compileFiles([Ljava/lang/String;II)V

    .line 413
    return v5

    .line 415
    :cond_25a
    const-string v3, "--output-format"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d9

    const-string v3, "--format"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26d

    const/4 v3, 0x0

    goto/16 :goto_5da

    .line 422
    :cond_26d
    const-string v3, "--connect"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    const-string v8, "-"

    if-eqz v3, :cond_2d2

    .line 424
    add-int/lit8 v3, v0, 0x1

    .line 425
    if-ne v3, v2, :cond_27f

    .line 426
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 428
    :cond_27f
    aget-object v0, v1, v3

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_289

    .line 429
    const/4 v5, 0x0

    goto :goto_297

    .line 434
    :cond_289
    :try_start_289
    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_28f
    .catch Ljava/lang/NumberFormatException; {:try_start_289 .. :try_end_28f} :catch_290

    .line 440
    goto :goto_297

    .line 436
    :catch_290
    move-exception v0

    .line 438
    const-string v0, "--connect port#"

    invoke-static {v0}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 439
    nop

    .line 444
    :goto_297
    :try_start_297
    new-instance v0, Ljava/net/Socket;

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v0, v6, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 445
    new-instance v5, Lkawa/Telnet;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 446
    invoke-virtual {v5}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v0

    .line 447
    invoke-virtual {v5}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v5

    .line 448
    new-instance v6, Ljava/io/PrintStream;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 449
    invoke-static {v0}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 450
    invoke-static {v6}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 451
    invoke-static {v6}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_2bd
    .catch Ljava/io/IOException; {:try_start_297 .. :try_end_2bd} :catch_2c2

    .line 457
    nop

    .line 458
    move v0, v3

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 453
    :catch_2c2
    move-exception v0

    .line 455
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 456
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_2d2
    const-string v3, "--server"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36a

    .line 461
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 462
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 463
    if-ne v0, v2, :cond_2e4

    .line 464
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 466
    :cond_2e4
    aget-object v2, v1, v0

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ee

    .line 467
    const/4 v3, 0x0

    goto :goto_2fc

    .line 472
    :cond_2ee
    :try_start_2ee
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2f4
    .catch Ljava/lang/NumberFormatException; {:try_start_2ee .. :try_end_2f4} :catch_2f5

    .line 478
    goto :goto_2fc

    .line 474
    :catch_2f5
    move-exception v0

    .line 476
    const-string v0, "--server port#"

    invoke-static {v0}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 477
    const/4 v3, -0x1

    .line 482
    :goto_2fc
    :try_start_2fc
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, v3}, Ljava/net/ServerSocket;-><init>(I)V

    .line 484
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    .line 485
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listening on port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    :goto_31d
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "waiting ... "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 489
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 490
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got connection from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " port:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-static {v2, v1}, Lkawa/TelnetRepl;->serve(Lgnu/expr/Language;Ljava/net/Socket;)V
    :try_end_35e
    .catch Ljava/io/IOException; {:try_start_2fc .. :try_end_35e} :catch_35f

    .line 494
    goto :goto_31d

    .line 496
    :catch_35f
    move-exception v0

    .line 498
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_36a
    const-string v3, "--http-auto-handler"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "kawa: HttpServer classes not found"

    if-eqz v3, :cond_386

    .line 503
    add-int/lit8 v0, v0, 0x2

    .line 504
    if-lt v0, v2, :cond_37b

    .line 505
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 521
    :cond_37b
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 522
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 525
    :cond_386
    const-string v3, "--http-start"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a2

    .line 527
    add-int/lit8 v0, v0, 0x1

    .line 528
    if-lt v0, v2, :cond_397

    .line 529
    const-string v3, "missing httpd port argument"

    invoke-static {v3}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 556
    :cond_397
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 560
    :cond_3a2
    const-string v3, "--main"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b0

    .line 562
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->generateMainDefault:Z

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 564
    :cond_3b0
    const-string v3, "--applet"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c1

    .line 566
    sget v3, Lkawa/repl;->defaultParseOptions:I

    or-int/lit8 v3, v3, 0x10

    sput v3, Lkawa/repl;->defaultParseOptions:I

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 568
    :cond_3c1
    const-string v3, "--servlet"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x2

    if-eqz v3, :cond_3d6

    .line 570
    sget v3, Lkawa/repl;->defaultParseOptions:I

    const/16 v5, 0x20

    or-int/2addr v3, v5

    sput v3, Lkawa/repl;->defaultParseOptions:I

    .line 571
    sput v8, Lgnu/kawa/servlet/HttpRequestContext;->importServletDefinitions:I

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 573
    :cond_3d6
    const-string v3, "--debug-dump-zip"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e5

    .line 575
    const-string v3, "kawa-zip-dump-"

    sput-object v3, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 577
    :cond_3e5
    const-string v3, "--debug-print-expr"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f3

    .line 579
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->debugPrintExpr:Z

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 581
    :cond_3f3
    const/4 v3, 0x1

    const-string v9, "--debug-print-final-expr"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_401

    .line 583
    sput-boolean v3, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 585
    :cond_401
    const-string v9, "--debug-error-prints-stack-trace"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40e

    .line 587
    sput-boolean v3, Lgnu/text/SourceMessages;->debugStackTraceOnError:Z

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 589
    :cond_40e
    const-string v9, "--debug-warning-prints-stack-trace"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41b

    .line 591
    sput-boolean v3, Lgnu/text/SourceMessages;->debugStackTraceOnWarning:Z

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 593
    :cond_41b
    const-string v3, "--module-nonstatic"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d4

    const-string v3, "--no-module-static"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42e

    const/4 v3, 0x0

    goto/16 :goto_5d5

    .line 598
    :cond_42e
    const-string v3, "--module-static"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43c

    .line 600
    const/4 v3, 0x1

    sput v3, Lgnu/expr/Compilation;->moduleStatic:I

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 602
    :cond_43c
    const-string v3, "--module-static-run"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_449

    .line 604
    sput v8, Lgnu/expr/Compilation;->moduleStatic:I

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 606
    :cond_449
    const-string v3, "--no-inline"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5cf

    const-string v3, "--inline=none"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45b

    goto/16 :goto_5cf

    .line 611
    :cond_45b
    const-string v3, "--no-console"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_469

    .line 612
    const/4 v3, 0x1

    sput-boolean v3, Lkawa/repl;->noConsole:Z

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 613
    :cond_469
    const/4 v3, 0x1

    const-string v9, "--inline"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_477

    .line 615
    sput-boolean v3, Lgnu/expr/Compilation;->inlineOk:Z

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 617
    :cond_477
    const-string v3, "--cps"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_485

    .line 619
    const/4 v3, 0x4

    sput v3, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 622
    :cond_485
    const-string v3, "--full-tailcalls"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x3

    if-eqz v3, :cond_493

    .line 624
    sput v9, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 627
    :cond_493
    const-string v3, "--no-full-tailcalls"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a1

    .line 629
    const/4 v3, 0x1

    sput v3, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 632
    :cond_4a1
    const/4 v3, 0x1

    const-string v10, "--pedantic"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4af

    .line 634
    sput-boolean v3, Lgnu/expr/Language;->requirePedantic:Z

    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 636
    :cond_4af
    const-string v3, "--help"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 638
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lkawa/repl;->printOptions(Ljava/io/PrintStream;)V

    .line 639
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_6c1

    .line 641
    :cond_4c2
    const/4 v3, 0x0

    const-string v10, "--author"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d7

    .line 643
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Per Bothner <per@bothner.com>"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 644
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_6c1

    .line 646
    :cond_4d7
    const-string v3, "--version"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4ff

    .line 648
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Kawa "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 649
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lkawa/Version;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 650
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 651
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Copyright (C) 2009 Per Bothner"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 652
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_6c1

    .line 654
    :cond_4ff
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5c4

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_5c4

    .line 656
    nop

    .line 657
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v8, :cond_529

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_529

    .line 658
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_523

    goto :goto_524

    :cond_523
    const/4 v8, 0x1

    :goto_524
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_52a

    .line 659
    :cond_529
    move-object v3, v6

    :goto_52a
    invoke-static {v3}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v8

    .line 660
    if-eqz v8, :cond_53f

    .line 662
    sget-object v3, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v3, :cond_538

    .line 663
    invoke-static {v8}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    goto :goto_53b

    .line 665
    :cond_538
    invoke-static {v8}, Lgnu/expr/Language;->setCurrentLanguage(Lgnu/expr/Language;)V

    .line 666
    :goto_53b
    sput-object v8, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    goto/16 :goto_5c1

    .line 671
    :cond_53f
    const-string v8, "="

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 673
    if-gez v8, :cond_548

    .line 674
    goto :goto_553

    .line 677
    :cond_548
    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 678
    const/4 v10, 0x0

    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 682
    :goto_553
    const-string v8, "no-"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_563

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_563

    const/4 v8, 0x1

    goto :goto_564

    :cond_563
    const/4 v8, 0x0

    .line 684
    :goto_564
    if-nez v7, :cond_56f

    if-eqz v8, :cond_56f

    .line 686
    nop

    .line 687
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "no"

    .line 690
    :cond_56f
    sget-object v9, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v9, v3, v7}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 691
    if-eqz v3, :cond_5c1

    .line 694
    const-string v9, "unknown option name"

    if-eqz v8, :cond_596

    if-ne v3, v9, :cond_596

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "both \'--no-\' prefix and \'="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' specified"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 697
    :cond_596
    if-ne v3, v9, :cond_59c

    .line 699
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    goto :goto_5c1

    .line 703
    :cond_59c
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "kawa: bad option \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\': "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 705
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 709
    :cond_5c1
    :goto_5c1
    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 710
    :cond_5c4
    invoke-static {v6}, Lgnu/expr/ApplicationMainSupport;->processSetProperty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5cc

    .line 711
    goto/16 :goto_6c5

    .line 710
    :cond_5cc
    const/4 v3, 0x0

    goto/16 :goto_6c1

    .line 609
    :cond_5cf
    :goto_5cf
    const/4 v3, 0x0

    sput-boolean v3, Lgnu/expr/Compilation;->inlineOk:Z

    goto/16 :goto_6c1

    .line 593
    :cond_5d4
    const/4 v3, 0x0

    .line 596
    :goto_5d5
    sput v5, Lgnu/expr/Compilation;->moduleStatic:I

    goto/16 :goto_6c1

    .line 415
    :cond_5d9
    const/4 v3, 0x0

    .line 418
    :goto_5da
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_5e1

    .line 419
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 420
    :cond_5e1
    aget-object v5, v1, v0

    invoke-static {v5}, Lkawa/Shell;->setDefaultFormat(Ljava/lang/String;)V

    goto/16 :goto_6c1

    .line 370
    :cond_5e8
    const/4 v3, 0x0

    .line 372
    :goto_5e9
    add-int/lit8 v0, v0, 0x1

    .line 373
    if-ne v0, v2, :cond_5f0

    .line 374
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 375
    :cond_5f0
    aget-object v5, v1, v0

    .line 376
    const-string v6, "7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5fe

    .line 377
    const/high16 v6, 0x330000

    sput v6, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    .line 378
    :cond_5fe
    const-string v6, "6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_661

    const-string v6, "1.6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60f

    goto :goto_661

    .line 380
    :cond_60f
    const-string v6, "5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65c

    const-string v6, "1.5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_620

    goto :goto_65c

    .line 382
    :cond_620
    const-string v6, "1.4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62e

    .line 383
    const/high16 v5, 0x300000

    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_6c1

    .line 384
    :cond_62e
    const-string v6, "1.3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63c

    .line 385
    const/high16 v5, 0x2f0000

    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_6c1

    .line 386
    :cond_63c
    const-string v6, "1.2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64a

    .line 387
    const/high16 v5, 0x2e0000

    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_6c1

    .line 388
    :cond_64a
    const-string v6, "1.1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_658

    .line 389
    const v5, 0x2d0003

    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto :goto_6c1

    .line 391
    :cond_658
    invoke-static {v5}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    goto :goto_6c1

    .line 381
    :cond_65c
    :goto_65c
    const/high16 v5, 0x310000    # 4.49994E-39f

    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto :goto_6c1

    .line 379
    :cond_661
    :goto_661
    const/high16 v5, 0x320000

    sput v5, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto :goto_6c1

    .line 346
    :cond_666
    :goto_666
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 347
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 348
    invoke-static {v1, v0}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 349
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 350
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 351
    return v5

    .line 187
    :cond_67d
    :goto_67d
    add-int/lit8 v0, v0, 0x1

    .line 188
    if-ne v0, v2, :cond_684

    .line 189
    invoke-static {v6}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 190
    :cond_684
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 191
    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v4}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_695

    .line 193
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 194
    :cond_695
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    .line 195
    new-instance v4, Lgnu/text/SourceMessages;

    invoke-direct {v4}, Lgnu/text/SourceMessages;-><init>()V

    .line 196
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v7

    new-instance v8, Lgnu/mapping/CharArrayInPort;

    aget-object v9, v1, v0

    invoke-direct {v8, v9}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v9

    const/4 v10, 0x0

    move-object v11, v4

    invoke-static/range {v6 .. v11}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v6

    .line 200
    if-eqz v6, :cond_6bf

    .line 202
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 203
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 205
    :cond_6bf
    nop

    .line 206
    const/4 v4, 0x1

    .line 182
    :goto_6c1
    const/4 v5, 0x1

    add-int/2addr v0, v5

    goto/16 :goto_8

    .line 713
    :cond_6c5
    :goto_6c5
    if-eqz v4, :cond_6c8

    const/4 v0, -0x1

    :cond_6c8
    return v0
.end method

.method public static setArgs([Ljava/lang/String;I)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "arg_start"    # I

    .line 150
    invoke-static {p0, p1}, Lgnu/expr/ApplicationMainSupport;->setArgs([Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public static shouldUseGuiConsole()Z
    .registers 5

    .line 870
    sget-boolean v0, Lkawa/repl;->noConsole:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 871
    return v1

    .line 874
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    const-string v2, "java.lang.System"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "console"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_21

    if-nez v2, :cond_20

    .line 877
    return v1

    .line 881
    :cond_20
    goto :goto_22

    .line 879
    :catchall_21
    move-exception v1

    .line 882
    :goto_22
    return v0
.end method

.method private static startGuiConsole()V
    .registers 4

    .line 891
    :try_start_0
    const-string v0, "kawa.GuiConsole"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 897
    goto :goto_27

    .line 893
    :catch_a
    move-exception v0

    .line 895
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create Kawa window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 896
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 898
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_27
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .registers 3

    .line 32
    iget-object v0, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 33
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "env"    # Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    move-object v1, p1

    check-cast v1, Lgnu/mapping/Environment;

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 39
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method
