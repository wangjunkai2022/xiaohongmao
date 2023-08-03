.class public Lcom/clj/fastble/bluetooth/b;
.super Ljava/lang/Object;
.source "BleConnector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "00002902-0000-1000-8000-00805f9b34fb"


# instance fields
.field private a:Landroid/bluetooth/BluetoothGatt;

.field private b:Landroid/bluetooth/BluetoothGattService;

.field private c:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private d:Lcom/clj/fastble/bluetooth/a;

.field private e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/clj/fastble/bluetooth/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/b;->d:Lcom/clj/fastble/bluetooth/a;

    .line 3
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->I()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/b;->a:Landroid/bluetooth/BluetoothGatt;

    .line 4
    new-instance p1, Lcom/clj/fastble/bluetooth/b$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/clj/fastble/bluetooth/b$a;-><init>(Lcom/clj/fastble/bluetooth/b;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/util/UUID;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private f(Lg0/c;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->l()V

    .line 2
    invoke-virtual {p1, p2}, Lg0/a;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lg0/a;->c(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->d:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0, p2, p1}, Lcom/clj/fastble/bluetooth/a;->w(Ljava/lang/String;Lg0/c;)V

    .line 5
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v0, 0x21

    .line 6
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->z()I

    move-result v0

    int-to-long v0, v0

    .line 8
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private g(Lg0/e;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->n()V

    .line 2
    invoke-virtual {p1, p2}, Lg0/a;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lg0/a;->c(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->d:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0, p2, p1}, Lcom/clj/fastble/bluetooth/a;->y(Ljava/lang/String;Lg0/e;)V

    .line 5
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v0, 0x11

    .line 6
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->z()I

    move-result v0

    int-to-long v0, v0

    .line 8
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private h(Lg0/f;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->p()V

    .line 2
    invoke-virtual {p1, p2}, Lg0/a;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lg0/a;->c(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->d:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0, p2, p1}, Lcom/clj/fastble/bluetooth/a;->z(Ljava/lang/String;Lg0/f;)V

    .line 5
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v0, 0x41

    .line 6
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->z()I

    move-result v0

    int-to-long v0, v0

    .line 8
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private i(Lg0/k;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->y()V

    .line 2
    invoke-virtual {p1, p2}, Lg0/a;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lg0/a;->c(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->d:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0, p2, p1}, Lcom/clj/fastble/bluetooth/a;->B(Ljava/lang/String;Lg0/k;)V

    .line 5
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v0, 0x31

    .line 6
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->z()I

    move-result v0

    int-to-long v0, v0

    .line 8
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private j(Lg0/g;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->r()V

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lg0/a;->c(Landroid/os/Handler;)V

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->d:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/a;->A(Lg0/g;)V

    .line 4
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v1, 0x51

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/a;->z()I

    move-result v1

    int-to-long v1, v1

    .line 7
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private k(Lg0/d;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->m()V

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lg0/a;->c(Landroid/os/Handler;)V

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->d:Lcom/clj/fastble/bluetooth/a;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/a;->x(Lg0/d;)V

    .line 4
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v1, 0x61

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/a;->z()I

    move-result v1

    int-to-long v1, v1

    .line 7
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private s(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLg0/c;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->l()V

    if-eqz p4, :cond_1

    .line 3
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "gatt setCharacteristicNotification fail"

    invoke-direct {p1, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lg0/c;->f(Lcom/clj/fastble/exception/BleException;)V

    :cond_1
    return v0

    :cond_2
    const-string v1, "00002902-0000-1000-8000-00805f9b34fb"

    .line 4
    invoke-direct {p0, v1}, Lcom/clj/fastble/bluetooth/b;->e(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    if-nez p2, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->l()V

    if-eqz p4, :cond_3

    .line 6
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "descriptor equals null"

    invoke-direct {p1, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lg0/c;->f(Lcom/clj/fastble/exception/BleException;)V

    :cond_3
    return v0

    :cond_4
    if-eqz p3, :cond_5

    .line 7
    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    goto :goto_0

    .line 8
    :cond_5
    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 9
    :goto_0
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 10
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->l()V

    if-eqz p4, :cond_6

    .line 12
    new-instance p2, Lcom/clj/fastble/exception/OtherException;

    const-string p3, "gatt writeDescriptor fail"

    invoke-direct {p2, p3}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Lg0/c;->f(Lcom/clj/fastble/exception/BleException;)V

    :cond_6
    return p1

    .line 13
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->l()V

    if-eqz p4, :cond_8

    .line 14
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "gatt or characteristic equal null"

    invoke-direct {p1, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lg0/c;->f(Lcom/clj/fastble/exception/BleException;)V

    :cond_8
    return v0
.end method

.method private t(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLg0/e;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->n()V

    if-eqz p4, :cond_1

    .line 3
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "gatt setCharacteristicNotification fail"

    invoke-direct {p1, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lg0/e;->f(Lcom/clj/fastble/exception/BleException;)V

    :cond_1
    return v0

    :cond_2
    const-string v1, "00002902-0000-1000-8000-00805f9b34fb"

    .line 4
    invoke-direct {p0, v1}, Lcom/clj/fastble/bluetooth/b;->e(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    if-nez p2, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->n()V

    if-eqz p4, :cond_3

    .line 6
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "descriptor equals null"

    invoke-direct {p1, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lg0/e;->f(Lcom/clj/fastble/exception/BleException;)V

    :cond_3
    return v0

    :cond_4
    if-eqz p3, :cond_5

    .line 7
    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_0

    .line 8
    :cond_5
    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 9
    :goto_0
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 10
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->n()V

    if-eqz p4, :cond_6

    .line 12
    new-instance p2, Lcom/clj/fastble/exception/OtherException;

    const-string p3, "gatt writeDescriptor fail"

    invoke-direct {p2, p3}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Lg0/e;->f(Lcom/clj/fastble/exception/BleException;)V

    :cond_6
    return p1

    .line 13
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->n()V

    if-eqz p4, :cond_8

    .line 14
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "gatt or characteristic equal null"

    invoke-direct {p1, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lg0/e;->f(Lcom/clj/fastble/exception/BleException;)V

    :cond_8
    return v0
.end method

.method private v(Ljava/util/UUID;Ljava/util/UUID;)Lcom/clj/fastble/bluetooth/b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->a:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/b;->b:Landroid/bluetooth/BluetoothGattService;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/b;->b:Landroid/bluetooth/BluetoothGattService;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/clj/fastble/bluetooth/b;->s(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLg0/c;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/clj/fastble/bluetooth/b;->t(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLg0/e;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public c(Lg0/c;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/clj/fastble/bluetooth/b;->f(Lg0/c;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/b;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/clj/fastble/bluetooth/b;->s(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLg0/c;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    new-instance p2, Lcom/clj/fastble/exception/OtherException;

    const-string v0, "this characteristic not support indicate!"

    invoke-direct {p2, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lg0/c;->f(Lcom/clj/fastble/exception/BleException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lg0/e;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/clj/fastble/bluetooth/b;->g(Lg0/e;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/b;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/clj/fastble/bluetooth/b;->t(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLg0/e;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    new-instance p2, Lcom/clj/fastble/exception/OtherException;

    const-string v0, "this characteristic not support notify!"

    invoke-direct {p2, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lg0/e;->f(Lcom/clj/fastble/exception/BleException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public o(Lg0/f;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/clj/fastble/bluetooth/b;->h(Lg0/f;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/b;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->p()V

    if-eqz p1, :cond_1

    .line 6
    new-instance p2, Lcom/clj/fastble/exception/OtherException;

    const-string v0, "gatt readCharacteristic fail"

    invoke-direct {p2, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lg0/f;->e(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    new-instance p2, Lcom/clj/fastble/exception/OtherException;

    const-string v0, "this characteristic not support read!"

    invoke-direct {p2, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lg0/f;->e(Lcom/clj/fastble/exception/BleException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public q(Lg0/g;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/clj/fastble/bluetooth/b;->j(Lg0/g;)V

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->r()V

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/clj/fastble/exception/OtherException;

    const-string v1, "gatt readRemoteRssi fail"

    invoke-direct {v0, v1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lg0/g;->e(Lcom/clj/fastble/exception/BleException;)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public u(ILg0/d;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/clj/fastble/bluetooth/b;->k(Lg0/d;)V

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->m()V

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string v0, "gatt requestMtu fail"

    invoke-direct {p1, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lg0/d;->f(Lcom/clj/fastble/exception/BleException;)V

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/b;
    .locals 0

    invoke-direct {p0, p1}, Lcom/clj/fastble/bluetooth/b;->e(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/clj/fastble/bluetooth/b;->e(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/clj/fastble/bluetooth/b;->v(Ljava/util/UUID;Ljava/util/UUID;)Lcom/clj/fastble/bluetooth/b;

    move-result-object p1

    return-object p1
.end method

.method public x([BLg0/k;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_6

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/clj/fastble/bluetooth/b;->i(Lg0/k;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/b;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object p3, p0, Lcom/clj/fastble/bluetooth/b;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/b;->y()V

    if-eqz p2, :cond_3

    .line 8
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p3, "gatt writeCharacteristic fail"

    invoke-direct {p1, p3}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lg0/k;->e(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 9
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p3, "Updates the locally stored value of this characteristic fail"

    invoke-direct {p1, p3}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lg0/k;->e(Lcom/clj/fastble/exception/BleException;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 10
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p3, "this characteristic not support write!"

    invoke-direct {p1, p3}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lg0/k;->e(Lcom/clj/fastble/exception/BleException;)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 11
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p3, "the data to be written is empty"

    invoke-direct {p1, p3}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lg0/k;->e(Lcom/clj/fastble/exception/BleException;)V

    :cond_7
    return-void
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/b;->e:Landroid/os/Handler;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
