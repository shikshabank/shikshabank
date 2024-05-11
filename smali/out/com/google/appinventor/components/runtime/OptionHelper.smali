.class public Lcom/google/appinventor/components/runtime/OptionHelper;
.super Ljava/lang/Object;
.source "OptionHelper.java"


# static fields
.field private static final componentMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/OptionHelper;->componentMethods:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6
    .param p0, "c"    # Ljava/lang/Object;
    .param p1, "func"    # Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 125
    .local v0, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "componentKey":Ljava/lang/String;
    sget-object v2, Lcom/google/appinventor/components/runtime/OptionHelper;->componentMethods:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 128
    .local v3, "methodMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-nez v3, :cond_19

    .line 129
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/OptionHelper;->populateMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    .line 130
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_19
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    return-object v2
.end method

.method public static optionListFromValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "c"    # Ljava/lang/Object;
    .param p1, "func"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 39
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/OptionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 40
    .local v0, "calledFunc":Ljava/lang/reflect/Method;
    if-nez v0, :cond_7

    .line 42
    return-object p2

    .line 44
    :cond_7
    const-class v1, Lcom/google/appinventor/components/annotations/Options;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/annotations/Options;

    .line 45
    .local v1, "annotation":Lcom/google/appinventor/components/annotations/Options;
    if-nez v1, :cond_12

    .line 46
    return-object p2

    .line 48
    :cond_12
    invoke-interface {v1}, Lcom/google/appinventor/components/annotations/Options;->value()Ljava/lang/Class;

    move-result-object v2

    .line 50
    .local v2, "optionListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_16
    const-string v3, "fromUnderlyingValue"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 54
    .local v3, "fromValue":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_2e} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_2e} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_2e} :catch_32

    .line 55
    .local v4, "abstractVal":Ljava/lang/Object;
    if-eqz v4, :cond_31

    .line 56
    return-object v4

    .line 58
    :cond_31
    return-object p2

    .line 63
    .end local v3    # "fromValue":Ljava/lang/reflect/Method;
    .end local v4    # "abstractVal":Ljava/lang/Object;
    :catch_32
    move-exception v3

    .line 64
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object p2

    .line 61
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_34
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/IllegalAccessException;
    return-object p2

    .line 59
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_36
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    return-object p2
.end method

.method public static varargs optionListsFromValues(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 18
    .param p0, "c"    # Lcom/google/appinventor/components/runtime/Component;
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 78
    move-object/from16 v1, p2

    array-length v0, v1

    if-nez v0, :cond_6

    .line 79
    return-object v1

    .line 81
    :cond_6
    invoke-static/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/OptionHelper;->getMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 82
    .local v2, "calledFunc":Ljava/lang/reflect/Method;
    if-nez v2, :cond_d

    .line 83
    return-object v1

    .line 85
    :cond_d
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 86
    .local v3, "paramAnnotations":[[Ljava/lang/annotation/Annotation;
    const/4 v0, 0x0

    .line 87
    .local v0, "i":I
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v0

    const/4 v7, 0x0

    .end local v0    # "i":I
    .local v6, "i":I
    :goto_16
    if-ge v7, v4, :cond_5e

    aget-object v8, v3, v7

    .line 88
    .local v8, "annotations":[Ljava/lang/annotation/Annotation;
    array-length v0, v8

    const/4 v9, 0x0

    :goto_1c
    if-ge v9, v0, :cond_58

    aget-object v10, v8, v9

    .line 89
    .local v10, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v10}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lcom/google/appinventor/components/annotations/Options;

    if-ne v11, v12, :cond_55

    .line 90
    move-object v9, v10

    check-cast v9, Lcom/google/appinventor/components/annotations/Options;

    .line 91
    .local v9, "castAnnotation":Lcom/google/appinventor/components/annotations/Options;
    invoke-interface {v9}, Lcom/google/appinventor/components/annotations/Options;->value()Ljava/lang/Class;

    move-result-object v11

    .line 93
    .local v11, "optionListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2f
    const-string v0, "fromUnderlyingValue"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    aget-object v14, v1, v6

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-virtual {v11, v0, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 97
    .local v0, "fromValue":Ljava/lang/reflect/Method;
    new-array v12, v12, [Ljava/lang/Object;

    aget-object v13, v1, v6

    aput-object v13, v12, v5

    invoke-virtual {v0, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 98
    .local v12, "abstractVal":Ljava/lang/Object;
    if-eqz v12, :cond_54

    .line 99
    aput-object v12, v1, v6
    :try_end_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2f .. :try_end_4e} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_4e} :catch_51
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_4e} :catch_4f

    goto :goto_54

    .line 105
    .end local v0    # "fromValue":Ljava/lang/reflect/Method;
    .end local v12    # "abstractVal":Ljava/lang/Object;
    :catch_4f
    move-exception v0

    .line 108
    goto :goto_58

    .line 103
    :catch_51
    move-exception v0

    goto :goto_54

    .line 101
    :catch_53
    move-exception v0

    .line 107
    :cond_54
    :goto_54
    goto :goto_58

    .line 88
    .end local v9    # "castAnnotation":Lcom/google/appinventor/components/annotations/Options;
    .end local v10    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v11    # "optionListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_55
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .line 111
    :cond_58
    :goto_58
    nop

    .end local v8    # "annotations":[Ljava/lang/annotation/Annotation;
    add-int/lit8 v6, v6, 0x1

    .line 87
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 113
    :cond_5e
    return-object v1
.end method

.method private static populateMap(Ljava/lang/Class;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 141
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "methodMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 145
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_50

    aget-object v4, v1, v3

    .line 146
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_18

    .line 147
    goto :goto_4d

    .line 149
    :cond_18
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "methodKey":Ljava/lang/String;
    const-class v6, Lcom/google/appinventor/components/annotations/SimpleEvent;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/annotations/SimpleEvent;

    .line 153
    .local v6, "event":Lcom/google/appinventor/components/annotations/SimpleEvent;
    if-eqz v6, :cond_2a

    .line 154
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    goto :goto_4d

    .line 159
    :cond_2a
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_4d

    .line 160
    const-class v7, Lcom/google/appinventor/components/annotations/SimpleFunction;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/annotations/SimpleFunction;

    .line 161
    .local v7, "func":Lcom/google/appinventor/components/annotations/SimpleFunction;
    if-eqz v7, :cond_40

    .line 162
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    goto :goto_4d

    .line 165
    :cond_40
    const-class v8, Lcom/google/appinventor/components/annotations/SimpleProperty;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/google/appinventor/components/annotations/SimpleProperty;

    .line 166
    .local v8, "prop":Lcom/google/appinventor/components/annotations/SimpleProperty;
    if-eqz v8, :cond_4d

    .line 167
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "methodKey":Ljava/lang/String;
    .end local v6    # "event":Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end local v7    # "func":Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end local v8    # "prop":Lcom/google/appinventor/components/annotations/SimpleProperty;
    :cond_4d
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 171
    :cond_50
    return-object v0
.end method
