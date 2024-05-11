.class public Lcom/google/appinventor/components/runtime/Serial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Serial.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xc
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Serial component which can be used to connect to devices like Arduino"
    iconName = "images/arduino.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "physicaloid.jar"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Serial Component"


# instance fields
.field private baudRate:I

.field private bytes:I

.field private context:Landroid/content/Context;

.field private mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 44
    const/16 v0, 0x2580

    iput v0, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    .line 45
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->context:Landroid/content/Context;

    .line 50
    const-string v0, "Serial Component"

    const-string v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method


# virtual methods
.method public BaudRate()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the current baud rate"
    .end annotation

    .line 132
    iget v0, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    return v0
.end method

.method public BaudRate(I)V
    .registers 5
    .param p1, "baudRate"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "9600"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 138
    iput p1, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Baud Rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Serial Component"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-eqz v0, :cond_22

    .line 141
    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/Physicaloid;->setBaudrate(I)Z

    goto :goto_3e

    .line 143
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set Serial Baud Rate to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Just saved, not applied to serial! Maybe you forgot to initialize it?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_3e
    return-void
.end method

.method public BufferSize()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the buffer size in bytes"
    .end annotation

    .line 148
    iget v0, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    return v0
.end method

.method public BufferSize(I)V
    .registers 4
    .param p1, "bytes"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 154
    iput p1, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Serial Component"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public CloseSerial()Z
    .registers 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Closes serial connection. Returns true when closed."
    .end annotation

    .line 72
    const-string v0, "Serial Component"

    const-string v1, "Closing connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v0, :cond_18

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xf3d

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CloseSerial"

    invoke-virtual {v0, p0, v4, v1, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 75
    return v2

    .line 77
    :cond_18
    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->close()Z

    move-result v0

    return v0
.end method

.method public InitializeSerial()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes serial connection."
    .end annotation

    .line 55
    new-instance v0, Lcom/physicaloid/lib/Physicaloid;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Serial;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/physicaloid/lib/Physicaloid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    .line 56
    iget v0, p0, Lcom/google/appinventor/components/runtime/Serial;->baudRate:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Serial;->BaudRate(I)V

    .line 57
    const-string v0, "Serial Component"

    const-string v1, "Initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public IsInitialized()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true when the Serial has been initialized."
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public IsOpen()Z
    .registers 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true when the Serial connection is open."
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v0, :cond_11

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xf3d

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "IsOpen"

    invoke-virtual {v0, p0, v4, v1, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 120
    return v2

    .line 122
    :cond_11
    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->isOpened()Z

    move-result v0

    return v0
.end method

.method public OpenSerial()Z
    .registers 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens serial connection. Returns true when opened."
    .end annotation

    .line 62
    const-string v0, "Serial Component"

    const-string v1, "Opening connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v0, :cond_18

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xf3d

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "OpenSerial"

    invoke-virtual {v0, p0, v4, v1, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 65
    return v2

    .line 67
    :cond_18
    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->open()Z

    move-result v0

    return v0
.end method

.method public PrintSerial(Ljava/lang/String;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes given data to serial, and appends a new line at the end."
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Serial;->WriteSerial(Ljava/lang/String;)V

    .line 114
    :cond_1c
    return-void
.end method

.method public ReadSerial()Ljava/lang/String;
    .registers 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads data from serial."
    .end annotation

    .line 82
    const-string v0, ""

    .line 83
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v1, :cond_13

    .line 84
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xf3d

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ReadSerial"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_30

    .line 86
    :cond_13
    iget v2, p0, Lcom/google/appinventor/components/runtime/Serial;->bytes:I

    new-array v2, v2, [B

    .line 87
    .local v2, "buf":[B
    invoke-virtual {v1, v2}, Lcom/physicaloid/lib/Physicaloid;->read([B)I

    move-result v1

    if-lez v1, :cond_30

    .line 89
    :try_start_1d
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_24} :catch_26

    move-object v0, v1

    .line 92
    goto :goto_30

    .line 90
    :catch_26
    move-exception v1

    .line 91
    .local v1, "mEr":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Serial Component"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v1    # "mEr":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "buf":[B
    :cond_30
    :goto_30
    return-object v0
.end method

.method public WriteSerial(Ljava/lang/String;)V
    .registers 8
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes given data to serial."
    .end annotation

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WriteSerial"

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-eqz v0, :cond_24

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 102
    .local v0, "buf":[B
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v3, v0}, Lcom/physicaloid/lib/Physicaloid;->write([B)I

    move-result v3

    .line 103
    .local v3, "result":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_32

    .line 104
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0xf3e

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v2, v5, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_32

    .line 105
    .end local v0    # "buf":[B
    .end local v3    # "result":I
    :cond_24
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->mPhysicaloid:Lcom/physicaloid/lib/Physicaloid;

    if-nez v0, :cond_32

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Serial;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xf3d

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_33

    .line 105
    :cond_32
    :goto_32
    nop

    .line 108
    :goto_33
    return-void
.end method
