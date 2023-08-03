.class public Lcom/clj/fastble/bluetooth/a;
.super Ljava/lang/Object;
.source "BleBluetooth.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/bluetooth/a$b;,
        Lcom/clj/fastble/bluetooth/a$c;
    }
.end annotation


# instance fields
.field private a:Lg0/b;

.field private b:Lg0/g;

.field private c:Lg0/d;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lg0/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lg0/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lg0/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lg0/f;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/clj/fastble/bluetooth/a$b;

.field private i:Z

.field private j:Lcom/clj/fastble/data/BleDevice;

.field private k:Landroid/bluetooth/BluetoothGatt;

.field private l:Lcom/clj/fastble/bluetooth/a$c;

.field private m:I

.field private n:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/a;->d:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/a;->e:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/a;->f:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/a;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/clj/fastble/bluetooth/a;->i:Z

    .line 7
    new-instance v1, Lcom/clj/fastble/bluetooth/a$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/clj/fastble/bluetooth/a$c;-><init>(Lcom/clj/fastble/bluetooth/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/clj/fastble/bluetooth/a;->l:Lcom/clj/fastble/bluetooth/a$c;

    .line 8
    iput v0, p0, Lcom/clj/fastble/bluetooth/a;->m:I

    .line 9
    new-instance v0, Lcom/clj/fastble/bluetooth/a$a;

    invoke-direct {v0, p0}, Lcom/clj/fastble/bluetooth/a$a;-><init>(Lcom/clj/fastble/bluetooth/a;)V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/a;->n:Landroid/bluetooth/BluetoothGattCallback;

    .line 10
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/a;->j:Lcom/clj/fastble/data/BleDevice;

    return-void
.end method

.method private declared-synchronized D()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->k:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized H()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->k:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized M()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothGatt;

    const-string v1, "refresh"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a;->k:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshDeviceCache, is success:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clj/fastble/utils/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception occur while refreshing device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/clj/fastble/utils/a;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/clj/fastble/bluetooth/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/a;->H()V

    return-void
.end method

.method static synthetic b(Lcom/clj/fastble/bluetooth/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/a;->M()V

    return-void
.end method

.method static synthetic c(Lcom/clj/fastble/bluetooth/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/a;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic d(Lcom/clj/fastble/bluetooth/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/a;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic e(Lcom/clj/fastble/bluetooth/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/a;->f:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic f(Lcom/clj/fastble/bluetooth/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/a;->g:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic g(Lcom/clj/fastble/bluetooth/a;)Lg0/g;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/a;->b:Lg0/g;

    return-object p0
.end method

.method static synthetic h(Lcom/clj/fastble/bluetooth/a;)Lg0/d;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/a;->c:Lg0/d;

    return-object p0
.end method

.method static synthetic i(Lcom/clj/fastble/bluetooth/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/a;->D()V

    return-void
.end method

.method static synthetic j(Lcom/clj/fastble/bluetooth/a;)I
    .locals 0

    iget p0, p0, Lcom/clj/fastble/bluetooth/a;->m:I

    return p0
.end method

.method static synthetic k(Lcom/clj/fastble/bluetooth/a;I)I
    .locals 0

    iput p1, p0, Lcom/clj/fastble/bluetooth/a;->m:I

    return p1
.end method

.method static synthetic l(Lcom/clj/fastble/bluetooth/a;)I
    .locals 2

    iget v0, p0, Lcom/clj/fastble/bluetooth/a;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/clj/fastble/bluetooth/a;->m:I

    return v0
.end method

.method static synthetic m(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$c;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/a;->l:Lcom/clj/fastble/bluetooth/a$c;

    return-object p0
.end method

.method static synthetic n(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/bluetooth/a$b;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/a;->h:Lcom/clj/fastble/bluetooth/a$b;

    return-object p0
.end method

.method static synthetic o(Lcom/clj/fastble/bluetooth/a;Lcom/clj/fastble/bluetooth/a$b;)Lcom/clj/fastble/bluetooth/a$b;
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/a;->h:Lcom/clj/fastble/bluetooth/a$b;

    return-object p1
.end method

.method static synthetic p(Lcom/clj/fastble/bluetooth/a;)Lg0/b;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/a;->a:Lg0/b;

    return-object p0
.end method

.method static synthetic q(Lcom/clj/fastble/bluetooth/a;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/a;->j:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic r(Lcom/clj/fastble/bluetooth/a;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/a;->k:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic s(Lcom/clj/fastble/bluetooth/a;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/a;->k:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic t(Lcom/clj/fastble/bluetooth/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/clj/fastble/bluetooth/a;->i:Z

    return p0
.end method

.method static synthetic u(Lcom/clj/fastble/bluetooth/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/clj/fastble/bluetooth/a;->i:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized A(Lg0/g;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/a;->b:Lg0/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized B(Ljava/lang/String;Lg0/k;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized C()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized E(Lcom/clj/fastble/data/BleDevice;ZLg0/b;)Landroid/bluetooth/BluetoothGatt;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nautoConnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncurrentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/clj/fastble/utils/a;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/clj/fastble/bluetooth/a;->v(Lg0/b;)V

    .line 6
    sget-object p3, Lcom/clj/fastble/bluetooth/a$b;->b:Lcom/clj/fastble/bluetooth/a$b;

    iput-object p3, p0, Lcom/clj/fastble/bluetooth/a;->h:Lcom/clj/fastble/bluetooth/a$b;

    .line 7
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p3, v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->v()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a;->n:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v2, 0x2

    invoke-virtual {p3, v0, p2, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    iput-object p2, p0, Lcom/clj/fastble/bluetooth/a;->k:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->v()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/a;->n:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p3, v0, p2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    iput-object p2, p0, Lcom/clj/fastble/bluetooth/a;->k:Landroid/bluetooth/BluetoothGatt;

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/a;->k:Landroid/bluetooth/BluetoothGatt;

    if-eqz p2, :cond_2

    .line 11
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a;->a:Lg0/b;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lg0/b;->f()V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a;->l:Lcom/clj/fastble/bluetooth/a$c;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x7

    .line 14
    iput p2, p1, Landroid/os/Message;->what:I

    .line 15
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/a;->l:Lcom/clj/fastble/bluetooth/a$c;

    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/clj/fastble/a;->t()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 16
    :cond_2
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/a;->H()V

    .line 17
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/a;->M()V

    .line 18
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/a;->D()V

    .line 19
    sget-object p2, Lcom/clj/fastble/bluetooth/a$b;->d:Lcom/clj/fastble/bluetooth/a$b;

    iput-object p2, p0, Lcom/clj/fastble/bluetooth/a;->h:Lcom/clj/fastble/bluetooth/a$b;

    .line 20
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/clj/fastble/a;->y()Lcom/clj/fastble/bluetooth/c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/clj/fastble/bluetooth/c;->m(Lcom/clj/fastble/bluetooth/a;)V

    .line 21
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/a;->a:Lg0/b;

    if-eqz p2, :cond_3

    .line 22
    new-instance p3, Lcom/clj/fastble/exception/OtherException;

    const-string v0, "GATT connect exception occurred!"

    invoke-direct {p3, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Lg0/b;->c(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    .line 23
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/a;->k:Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized F()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/clj/fastble/bluetooth/a$b;->a:Lcom/clj/fastble/bluetooth/a$b;

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/a;->h:Lcom/clj/fastble/bluetooth/a$b;

    .line 2
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/a;->H()V

    .line 3
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/a;->M()V

    .line 4
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/a;->D()V

    .line 5
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/a;->N()V

    .line 6
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/a;->S()V

    .line 7
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/a;->P()V

    .line 8
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/a;->C()V

    .line 9
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->l:Lcom/clj/fastble/bluetooth/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized G()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/clj/fastble/bluetooth/a;->i:Z

    .line 2
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/a;->H()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public I()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->k:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public J()Lcom/clj/fastble/data/BleDevice;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->j:Lcom/clj/fastble/data/BleDevice;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->j:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Lcom/clj/fastble/bluetooth/b;
    .locals 1

    new-instance v0, Lcom/clj/fastble/bluetooth/b;

    invoke-direct {v0, p0}, Lcom/clj/fastble/bluetooth/b;-><init>(Lcom/clj/fastble/bluetooth/a;)V

    return-object v0
.end method

.method public declared-synchronized N()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/clj/fastble/bluetooth/a;->a:Lg0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized O(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized P()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/clj/fastble/bluetooth/a;->c:Lg0/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Q(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized R(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized S()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/clj/fastble/bluetooth/a;->b:Lg0/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized T(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized v(Lg0/b;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/a;->a:Lg0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized w(Ljava/lang/String;Lg0/c;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized x(Lg0/d;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/a;->c:Lg0/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized y(Ljava/lang/String;Lg0/e;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized z(Ljava/lang/String;Lg0/f;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
