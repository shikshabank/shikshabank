.class Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;
.super Ljava/lang/Object;
.source "FirebaseDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReturnVal"
.end annotation


# instance fields
.field err:Ljava/lang/String;

.field retval:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;-><init>()V

    return-void
.end method


# virtual methods
.method getRetval()Ljava/lang/Object;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->retval:Ljava/lang/Object;

    return-object v0
.end method
