.class Lcom/google/appinventor/components/runtime/BluetoothServer$2;
.super Ljava/lang/Object;
.source "BluetoothServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

.field final synthetic val$functionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/BluetoothServer;

    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->val$functionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "acceptedSocket":Landroid/bluetooth/BluetoothSocket;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->-$$Nest$fgetarBluetoothServerSocket(Lcom/google/appinventor/components/runtime/BluetoothServer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothServerSocket;

    .line 138
    .local v1, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-eqz v1, :cond_38

    .line 141
    :try_start_f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_1d
    .catchall {:try_start_f .. :try_end_13} :catchall_1b

    move-object v0, v2

    .line 150
    nop

    .line 152
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    .line 153
    goto :goto_38

    .line 152
    :catchall_1b
    move-exception v2

    goto :goto_32

    .line 142
    :catch_1d
    move-exception v2

    .line 143
    .local v2, "e":Ljava/io/IOException;
    :try_start_1e
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/BluetoothServer$2$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/BluetoothServer$2$1;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer$2;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_1b

    .line 152
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    .line 149
    return-void

    .line 152
    .end local v2    # "e":Ljava/io/IOException;
    :goto_32
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    .line 153
    throw v2

    .line 156
    :cond_38
    :goto_38
    if-eqz v0, :cond_49

    .line 158
    move-object v2, v0

    .line 159
    .local v2, "bluetoothSocket":Landroid/bluetooth/BluetoothSocket;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;

    invoke-direct {v4, p0, v2}, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer$2;Landroid/bluetooth/BluetoothSocket;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    .end local v2    # "bluetoothSocket":Landroid/bluetooth/BluetoothSocket;
    :cond_49
    return-void
.end method
