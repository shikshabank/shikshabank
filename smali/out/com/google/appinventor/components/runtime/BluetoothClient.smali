.class public final Lcom/google/appinventor/components/runtime/BluetoothClient;
.super Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.source "BluetoothClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/RealTimeDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Bluetooth client component"
    iconName = "images/bluetooth.png"
    nonVisible = true
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.BLUETOOTH",
        "android.permission.BLUETOOTH_ADMIN",
        "android.permission.BLUETOOTH_CONNECT",
        "android.permission.BLUETOOTH_SCAN"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;",
        "Lcom/google/appinventor/components/runtime/RealTimeDataSource<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final RUNTIME_PERMISSIONS:[Ljava/lang/String;

.field private static final SPP_UUID:Ljava/lang/String; = "00001101-0000-1000-8000-00805F9B34FB"


# instance fields
.field private acceptableDeviceClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final attachedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private dataPollService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final dataSourceObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private noLocationNeeded:Z

.field private pollingRate:I


# direct methods
.method static bridge synthetic -$$Nest$mconnect(Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/appinventor/components/runtime/BluetoothClient;->RUNTIME_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 91
    const-string v0, "BluetoothClient"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataSourceObservers:Ljava/util/HashSet;

    .line 84
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->pollingRate:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->noLocationNeeded:Z

    .line 92
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->DisconnectOnError(Z)V

    .line 93
    return-void
.end method

.method private connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->secure:Z

    if-nez v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_f

    .line 414
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .local v0, "socket":Landroid/bluetooth/BluetoothSocket;
    goto :goto_13

    .line 416
    .end local v0    # "socket":Landroid/bluetooth/BluetoothSocket;
    :cond_f
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 418
    .restart local v0    # "socket":Landroid/bluetooth/BluetoothSocket;
    :goto_13
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 419
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->setConnection(Landroid/bluetooth/BluetoothSocket;)V

    .line 420
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected to Bluetooth device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method private connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "uuidString"    # Ljava/lang/String;

    .line 339
    move-object v0, p2

    .line 340
    .local v0, "finalAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/BluetoothClient$1;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/google/appinventor/components/runtime/BluetoothClient$1;-><init>(Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p0, p1, v2}, Lcom/google/appinventor/components/runtime/util/SUtil;->requestPermissionsForConnecting(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 347
    return v2

    .line 350
    :cond_10
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1e

    .line 351
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1f5

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 353
    return v2

    .line 356
    :cond_1e
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_30

    .line 357
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1f6

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 359
    return v2

    .line 364
    :cond_30
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 365
    .local v1, "firstSpace":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3d

    .line 366
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 369
    :cond_3d
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 370
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x1f7

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, p1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 372
    return v2

    .line 375
    :cond_4d
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 376
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_65

    .line 377
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x1f8

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p0, p1, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 379
    return v2

    .line 382
    :cond_65
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->isDeviceClassAcceptable(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 383
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x1f9

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p0, p1, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 385
    return v2

    .line 390
    :cond_75
    const/4 v4, 0x1

    :try_start_76
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5
    :try_end_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_76 .. :try_end_7a} :catch_90

    .line 395
    .local v5, "uuid":Ljava/util/UUID;
    nop

    .line 397
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 400
    :try_start_7e
    invoke-direct {p0, v3, v5}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    .line 401
    return v4

    .line 402
    :catch_82
    move-exception v4

    .line 403
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 404
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v7, 0x1fb

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v6, p0, p1, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 406
    return v2

    .line 391
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "uuid":Ljava/util/UUID;
    :catch_90
    move-exception v5

    .line 392
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v7, 0x1fa

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v2

    invoke-virtual {v6, p0, p1, v7, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 394
    return v2
.end method

.method private isDeviceClassAcceptable(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    if-nez v0, :cond_6

    .line 290
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 294
    .local v0, "clazz":Landroid/bluetooth/BluetoothClass;
    if-nez v0, :cond_e

    .line 296
    const/4 v1, 0x0

    return v1

    .line 299
    :cond_e
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private startBluetoothDataPolling()V
    .registers 8

    .line 434
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataPollService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 437
    new-instance v1, Lcom/google/appinventor/components/runtime/BluetoothClient$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient$2;-><init>(Lcom/google/appinventor/components/runtime/BluetoothClient;)V

    iget v2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->pollingRate:I

    int-to-long v4, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 451
    return-void
.end method


# virtual methods
.method public AddressesAndNames()Ljava/util/List;
    .registers 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The addresses and names of paired Bluetooth devices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1f

    .line 217
    sget-object v0, Lcom/google/appinventor/components/runtime/BluetoothClient;->RUNTIME_PERMISSIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    .line 218
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 217
    .end local v3    # "permission":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 219
    .restart local v3    # "permission":Ljava/lang/String;
    :cond_19
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    invoke-direct {v0, v3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "addressesAndNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_29

    .line 227
    return-object v0

    .line 230
    :cond_29
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 231
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->isDeviceClassAcceptable(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 232
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_67
    goto :goto_33

    .line 236
    :cond_68
    return-object v0
.end method

.method public Connect(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and the Serial Port Profile (SPP). Returns true if the connection was successful."
    .end annotation

    .line 311
    const-string v0, "Connect"

    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ConnectWithUUID(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and UUID. Returns true if the connection was successful."
    .end annotation

    .line 324
    const-string v0, "ConnectWithUUID"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public DisconnectOnError(Z)V
    .registers 2
    .param p1, "disconnectOnError"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 116
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->disconnectOnError:Z

    .line 117
    return-void
.end method

.method public DisconnectOnError()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Disconnects BluetoothClient automatically when an error occurs."
    .end annotation

    .line 102
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->disconnectOnError:Z

    return v0
.end method

.method public IsDevicePaired(Ljava/lang/String;)Z
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether the Bluetooth device with the specified address is paired."
    .end annotation

    .line 166
    const-string v0, "IsDevicePaired"

    .line 167
    .local v0, "functionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 168
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1f5

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 170
    return v2

    .line 173
    :cond_11
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_23

    .line 174
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1f6

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 176
    return v2

    .line 181
    :cond_23
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, "firstSpace":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_30

    .line 183
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 186
    :cond_30
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 187
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x1f7

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 189
    return v2

    .line 192
    :cond_40
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 193
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4f

    const/4 v2, 0x1

    :cond_4f
    return v2
.end method

.method public NoLocationNeeded(Z)V
    .registers 2
    .param p1, "setting"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        constraints = {
            .subannotation Lcom/google/appinventor/components/annotations/PermissionConstraint;
                name = "android.permission.BLUETOOTH_SCAN"
                usesPermissionFlags = "neverForLocation"
            .end subannotation
        }
    .end annotation

    .line 274
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->noLocationNeeded:Z

    .line 275
    return-void
.end method

.method public NoLocationNeeded()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 279
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->noLocationNeeded:Z

    return v0
.end method

.method public PollingRate()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 259
    iget v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->pollingRate:I

    return v0
.end method

.method public PollingRate(I)V
    .registers 3
    .param p1, "rate"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 249
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->pollingRate:I

    .line 250
    return-void
.end method

.method public declared-synchronized addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    monitor-enter p0

    .line 457
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataPollService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_8

    .line 458
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->startBluetoothDataPolling()V

    .line 462
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/BluetoothClient;
    :cond_8
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 463
    monitor-exit p0

    return-void

    .line 456
    .end local p1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method attachComponent(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z
    .registers 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Component;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 120
    .local p2, "acceptableDeviceClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 122
    if-nez p2, :cond_c

    .line 123
    const/4 v0, 0x0

    goto :goto_11

    .line 124
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_11
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    goto :goto_2f

    .line 129
    :cond_14
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 130
    if-eqz p2, :cond_2f

    .line 131
    return v1

    .line 134
    :cond_1c
    if-nez p2, :cond_1f

    .line 135
    return v1

    .line 137
    :cond_1f
    invoke-interface {v0, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 138
    return v1

    .line 140
    :cond_26
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 141
    return v1

    .line 146
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method detachComponent(Lcom/google/appinventor/components/runtime/Component;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    .line 155
    :cond_10
    return-void
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 58
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->getDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 489
    const-string v0, ""

    .line 492
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 494
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->BytesAvailableToReceive()I

    move-result v1

    .line 497
    .local v1, "bytesReceivable":I
    if-lez v1, :cond_13

    .line 499
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->ReceiveText(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    .end local v1    # "bytesReceivable":I
    :cond_13
    return-object v0
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 58
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 483
    .local v1, "observer":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    .end local v1    # "observer":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_6

    .line 485
    :cond_16
    return-void
.end method

.method public declared-synchronized removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    monitor-enter p0

    .line 467
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 475
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataPollService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataPollService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 478
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/BluetoothClient;
    :cond_16
    monitor-exit p0

    return-void

    .line 466
    .end local p1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
