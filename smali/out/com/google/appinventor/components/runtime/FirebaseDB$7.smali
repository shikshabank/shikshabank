.class Lcom/google/appinventor/components/runtime/FirebaseDB$7;
.super Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
.source "FirebaseDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->AppendValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

.field final synthetic val$valueToAdd:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Ljava/lang/Object;)V
    .registers 7
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/FirebaseDB;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "retv"    # Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    .line 752
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$valueToAdd:Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;)V

    return-void
.end method


# virtual methods
.method run(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
    .registers 6
    .param p1, "currentData"    # Lcom/firebase/client/MutableData;

    .line 755
    const-string v0, "Invalid JSON object in database (shouldn\'t happen!)"

    invoke-virtual {p1}, Lcom/firebase/client/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 756
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_13

    .line 757
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v2, "Previous value was empty."

    iput-object v2, v0, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 758
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v0

    return-object v0

    .line 761
    :cond_13
    :try_start_13
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_54

    .line 762
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_1f} :catch_5d

    .line 770
    .end local v1    # "value":Ljava/lang/Object;
    .local v0, "value":Ljava/lang/Object;
    nop

    .line 771
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_49

    .line 772
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$valueToAdd:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    :try_start_2c
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_33} :catch_3d

    move-object v0, v1

    .line 778
    nop

    .line 779
    invoke-virtual {p1, v0}, Lcom/firebase/client/MutableData;->setValue(Ljava/lang/Object;)V

    .line 780
    invoke-static {p1}, Lcom/firebase/client/Transaction;->success(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object v1

    return-object v1

    .line 775
    :catch_3d
    move-exception v1

    .line 776
    .local v1, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v3, "Could not convert value to JSON."

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 777
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v2

    return-object v2

    .line 782
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_49
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v2, "You can only append to a list."

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 783
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v1

    return-object v1

    .line 764
    .end local v0    # "value":Ljava/lang/Object;
    .local v1, "value":Ljava/lang/Object;
    :cond_54
    :try_start_54
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    iput-object v0, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 765
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v0
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_5c} :catch_5d

    return-object v0

    .line 767
    :catch_5d
    move-exception v2

    .line 768
    .local v2, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    iput-object v0, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 769
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v0

    return-object v0
.end method
