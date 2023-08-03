.class public Lcom/clj/fastble/a;
.super Ljava/lang/Object;
.source "BleManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/a$a;
    }
.end annotation


# static fields
.field public static final l:I = 0x2710

.field private static final m:I = 0x7

.field private static final n:I = 0x1388

.field private static final o:I = 0x0

.field private static final p:I = 0x1388

.field private static final q:I = 0x17

.field private static final r:I = 0x200

.field private static final s:I = 0x14

.field private static final t:I = 0x2710


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcom/clj/fastble/scan/b;

.field private c:Landroid/bluetooth/BluetoothAdapter;

.field private d:Lcom/clj/fastble/bluetooth/c;

.field private e:Landroid/bluetooth/BluetoothManager;

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/clj/fastble/a;->f:I

    const/16 v0, 0x1388

    .line 3
    iput v0, p0, Lcom/clj/fastble/a;->g:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/clj/fastble/a;->h:I

    const-wide/16 v0, 0x1388

    .line 5
    iput-wide v0, p0, Lcom/clj/fastble/a;->i:J

    const/16 v0, 0x14

    .line 6
    iput v0, p0, Lcom/clj/fastble/a;->j:I

    const-wide/16 v0, 0x2710

    .line 7
    iput-wide v0, p0, Lcom/clj/fastble/a;->k:J

    return-void
.end method

.method public static w()Lcom/clj/fastble/a;
    .locals 1

    invoke-static {}, Lcom/clj/fastble/a$a;->a()Lcom/clj/fastble/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/clj/fastble/a;->h:I

    return v0
.end method

.method public B()J
    .locals 2

    iget-wide v0, p0, Lcom/clj/fastble/a;->i:J

    return-wide v0
.end method

.method public C()Lcom/clj/fastble/scan/b;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    return-object v0
.end method

.method public D()Lcom/clj/fastble/data/BleScanState;
    .locals 1

    invoke-static {}, Lcom/clj/fastble/scan/c;->b()Lcom/clj/fastble/scan/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/c;->c()Lcom/clj/fastble/data/BleScanState;

    move-result-object v0

    return-object v0
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lcom/clj/fastble/a;->j:I

    return v0
.end method

.method public F(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lg0/c;)V
    .locals 1

    if-eqz p4, :cond_1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/c;->f(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "This device not connect!"

    invoke-direct {p1, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lg0/c;->f(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->L()Lcom/clj/fastble/bluetooth/b;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/clj/fastble/bluetooth/b;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/b;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p4, p3}, Lcom/clj/fastble/bluetooth/b;->c(Lg0/c;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleIndicateCallback can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public G(Landroid/app/Application;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->a:Landroid/app/Application;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/clj/fastble/a;->a:Landroid/app/Application;

    .line 3
    invoke-virtual {p0}, Lcom/clj/fastble/a;->L()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/clj/fastble/a;->a:Landroid/app/Application;

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/clj/fastble/a;->e:Landroid/bluetooth/BluetoothManager;

    .line 5
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/clj/fastble/a;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 6
    new-instance p1, Lcom/clj/fastble/bluetooth/c;

    invoke-direct {p1}, Lcom/clj/fastble/bluetooth/c;-><init>()V

    iput-object p1, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    .line 7
    new-instance p1, Lcom/clj/fastble/scan/b;

    invoke-direct {p1}, Lcom/clj/fastble/scan/b;-><init>()V

    iput-object p1, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    :cond_1
    return-void
.end method

.method public H(Lcom/clj/fastble/scan/b;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    return-void
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/a;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J(Lcom/clj/fastble/data/BleDevice;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/clj/fastble/a;->u(Lcom/clj/fastble/data/BleDevice;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public K(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/a;->m()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public L()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->a:Landroid/app/Application;

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public M(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lg0/e;)V
    .locals 1

    if-eqz p4, :cond_1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/c;->f(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "This device not connect!"

    invoke-direct {p1, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lg0/e;->f(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->L()Lcom/clj/fastble/bluetooth/b;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/clj/fastble/bluetooth/b;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/b;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p4, p3}, Lcom/clj/fastble/bluetooth/b;->d(Lg0/e;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleNotifyCallback can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lg0/f;)V
    .locals 1

    if-eqz p4, :cond_1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/c;->f(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "This device is not connected!"

    invoke-direct {p1, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lg0/f;->e(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->L()Lcom/clj/fastble/bluetooth/b;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/clj/fastble/bluetooth/b;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/b;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p4, p3}, Lcom/clj/fastble/bluetooth/b;->o(Lg0/f;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleReadCallback can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O(Lcom/clj/fastble/data/BleDevice;Lg0/g;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/c;->f(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string v0, "This device is not connected!"

    invoke-direct {p1, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lg0/g;->e(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->L()Lcom/clj/fastble/bluetooth/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/clj/fastble/bluetooth/b;->q(Lg0/g;)V

    :goto_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleRssiCallback can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/clj/fastble/a;->n(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->N()V

    :cond_0
    return-void
.end method

.method public Q(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/clj/fastble/a;->n(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/clj/fastble/bluetooth/a;->O(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public R(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/clj/fastble/a;->n(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->P()V

    :cond_0
    return-void
.end method

.method public S(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/clj/fastble/a;->n(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/clj/fastble/bluetooth/a;->Q(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public T(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/clj/fastble/a;->n(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/clj/fastble/bluetooth/a;->R(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public U(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/clj/fastble/a;->n(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->S()V

    :cond_0
    return-void
.end method

.method public V(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/clj/fastble/a;->n(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/clj/fastble/bluetooth/a;->T(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public W(Lg0/i;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/a;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Bluetooth not enable!"

    .line 2
    invoke-static {v0}, Lcom/clj/fastble/utils/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lg0/j;->a(Z)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/b;->j()[Ljava/util/UUID;

    move-result-object v2

    .line 5
    iget-object v0, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/b;->h()[Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v0, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/b;->g()Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v0, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/b;->l()Z

    move-result v5

    .line 8
    iget-object v0, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/b;->i()J

    move-result-wide v6

    .line 9
    invoke-static {}, Lcom/clj/fastble/scan/c;->b()Lcom/clj/fastble/scan/c;

    move-result-object v1

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/clj/fastble/scan/c;->d([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLg0/i;)V

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BleScanCallback can not be Null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public X(Lg0/h;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/a;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Bluetooth not enable!"

    .line 2
    invoke-static {v0}, Lcom/clj/fastble/utils/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lg0/j;->a(Z)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/b;->j()[Ljava/util/UUID;

    move-result-object v2

    .line 5
    iget-object v0, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/b;->h()[Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v0, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/b;->g()Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v0, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/b;->l()Z

    move-result v5

    .line 8
    iget-object v0, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/b;->i()J

    move-result-wide v6

    .line 9
    invoke-static {}, Lcom/clj/fastble/scan/c;->b()Lcom/clj/fastble/scan/c;

    move-result-object v1

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/clj/fastble/scan/c;->e([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLg0/h;)V

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BleScanAndConnectCallback can not be Null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Y(J)Lcom/clj/fastble/a;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x64

    :cond_0
    iput-wide p1, p0, Lcom/clj/fastble/a;->k:J

    return-object p0
.end method

.method public Z(I)Lcom/clj/fastble/a;
    .locals 1

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    const/4 p1, 0x7

    :cond_0
    iput p1, p0, Lcom/clj/fastble/a;->f:I

    return-object p0
.end method

.method public a()V
    .locals 1

    invoke-static {}, Lcom/clj/fastble/scan/c;->b()Lcom/clj/fastble/scan/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/c;->g()V

    return-void
.end method

.method public a0(Lcom/clj/fastble/data/BleDevice;ILg0/d;)V
    .locals 1

    if-eqz p3, :cond_3

    const/16 v0, 0x200

    if-le p2, v0, :cond_0

    const-string p1, "requiredMtu should lower than 512 !"

    .line 1
    invoke-static {p1}, Lcom/clj/fastble/utils/a;->b(Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/clj/fastble/exception/OtherException;

    invoke-direct {p2, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lg0/d;->f(Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_0
    const/16 v0, 0x17

    if-ge p2, v0, :cond_1

    const-string p1, "requiredMtu should higher than 23 !"

    .line 3
    invoke-static {p1}, Lcom/clj/fastble/utils/a;->b(Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/clj/fastble/exception/OtherException;

    invoke-direct {p2, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lg0/d;->f(Lcom/clj/fastble/exception/BleException;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/c;->f(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "This device is not connected!"

    invoke-direct {p1, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lg0/d;->f(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->L()Lcom/clj/fastble/bluetooth/b;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/clj/fastble/bluetooth/b;->u(ILg0/d;)V

    :goto_0
    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleMtuChangedCallback can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/clj/fastble/a;->n(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->C()V

    :cond_0
    return-void
.end method

.method public b0(I)Lcom/clj/fastble/a;
    .locals 0

    iput p1, p0, Lcom/clj/fastble/a;->g:I

    return-object p0
.end method

.method public c(Lcom/clj/fastble/data/BleDevice;Lg0/b;)Landroid/bluetooth/BluetoothGatt;
    .locals 3

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/a;->I()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Bluetooth not enable!"

    .line 2
    invoke-static {v0}, Lcom/clj/fastble/utils/a;->b(Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/clj/fastble/exception/OtherException;

    invoke-direct {v2, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v2}, Lg0/b;->c(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    return-object v1

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    :cond_1
    const-string v0, "Be careful: currentThread is not MainThread!"

    .line 5
    invoke-static {v0}, Lcom/clj/fastble/utils/a;->d(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/c;->b(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/clj/fastble/a;->b:Lcom/clj/fastble/scan/b;

    invoke-virtual {v1}, Lcom/clj/fastble/scan/b;->k()Z

    move-result v1

    .line 9
    invoke-virtual {v0, p1, v1, p2}, Lcom/clj/fastble/bluetooth/a;->E(Lcom/clj/fastble/data/BleDevice;ZLg0/b;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    :goto_0
    new-instance v0, Lcom/clj/fastble/exception/OtherException;

    const-string v2, "Not Found Device Exception Occurred!"

    invoke-direct {v0, v2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lg0/b;->c(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    return-object v1

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleGattCallback can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c0(I)Lcom/clj/fastble/a;
    .locals 2

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/clj/fastble/a;->d0(IJ)Lcom/clj/fastble/a;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Lg0/b;)Landroid/bluetooth/BluetoothGatt;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/clj/fastble/a;->o()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 2
    new-instance p1, Lcom/clj/fastble/data/BleDevice;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/clj/fastble/a;->c(Lcom/clj/fastble/data/BleDevice;Lg0/b;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method public d0(IJ)Lcom/clj/fastble/a;
    .locals 3

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const/16 p1, 0xa

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    move-wide p2, v0

    .line 1
    :cond_1
    iput p1, p0, Lcom/clj/fastble/a;->h:I

    .line 2
    iput-wide p2, p0, Lcom/clj/fastble/a;->i:J

    return-object p0
.end method

.method public e(Landroid/bluetooth/BluetoothDevice;)Lcom/clj/fastble/data/BleDevice;
    .locals 1

    new-instance v0, Lcom/clj/fastble/data/BleDevice;

    invoke-direct {v0, p1}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method

.method public e0(I)Lcom/clj/fastble/a;
    .locals 0

    iput p1, p0, Lcom/clj/fastble/a;->j:I

    return-object p0
.end method

.method public f(Landroid/bluetooth/le/ScanResult;)Lcom/clj/fastble/data/BleDevice;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    move-object v3, v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v4

    .line 6
    new-instance p1, Lcom/clj/fastble/data/BleDevice;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "scanResult can not be Null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f0(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/c;->f(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->L()Lcom/clj/fastble/bluetooth/b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2, p3}, Lcom/clj/fastble/bluetooth/b;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/b;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/clj/fastble/bluetooth/b;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1, p3}, Lcom/clj/fastble/bluetooth/a;->O(Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/c;->c()V

    :cond_0
    return-void
.end method

.method public g0(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/c;->f(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->L()Lcom/clj/fastble/bluetooth/b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2, p3}, Lcom/clj/fastble/bluetooth/b;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/b;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/clj/fastble/bluetooth/b;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1, p3}, Lcom/clj/fastble/bluetooth/a;->Q(Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/a;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_0
    return-void
.end method

.method public h0(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BLg0/k;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/clj/fastble/a;->i0(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZLg0/k;)V

    return-void
.end method

.method public i(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/c;->d(Lcom/clj/fastble/data/BleDevice;)V

    :cond_0
    return-void
.end method

.method public i0(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZLg0/k;)V
    .locals 8

    if-eqz p6, :cond_4

    if-nez p4, :cond_0

    const-string p1, "data is Null!"

    .line 1
    invoke-static {p1}, Lcom/clj/fastble/utils/a;->b(Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/clj/fastble/exception/OtherException;

    invoke-direct {p2, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p2}, Lg0/k;->e(Lcom/clj/fastble/exception/BleException;)V

    return-void

    .line 3
    :cond_0
    array-length v0, p4

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    if-nez p5, :cond_1

    const-string v0, "Be careful: data\'s length beyond 20! Ensure MTU higher than 23, or use spilt write!"

    .line 4
    invoke-static {v0}, Lcom/clj/fastble/utils/a;->d(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/c;->f(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object v3

    if-nez v3, :cond_2

    .line 6
    new-instance p1, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "This device not connect!"

    invoke-direct {p1, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Lg0/k;->e(Lcom/clj/fastble/exception/BleException;)V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    .line 7
    array-length p1, p4

    if-le p1, v1, :cond_3

    .line 8
    new-instance v2, Lcom/clj/fastble/bluetooth/d;

    invoke-direct {v2}, Lcom/clj/fastble/bluetooth/d;-><init>()V

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/clj/fastble/bluetooth/d;->i(Lcom/clj/fastble/bluetooth/a;Ljava/lang/String;Ljava/lang/String;[BLg0/k;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v3}, Lcom/clj/fastble/bluetooth/a;->L()Lcom/clj/fastble/bluetooth/b;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2, p3}, Lcom/clj/fastble/bluetooth/b;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/clj/fastble/bluetooth/b;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p4, p6, p3}, Lcom/clj/fastble/bluetooth/b;->x([BLg0/k;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BleWriteCallback can not be Null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/c;->e()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    return-void
.end method

.method public l(Z)Lcom/clj/fastble/a;
    .locals 0

    sput-boolean p1, Lcom/clj/fastble/utils/a;->a:Z

    return-object p0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/c;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/c;->f(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public o()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/a;->c:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public p(Lcom/clj/fastble/data/BleDevice;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/clj/fastble/a;->n(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/a;->I()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public q(Landroid/bluetooth/BluetoothGattService;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattService;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/clj/fastble/data/BleDevice;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/clj/fastble/data/BleDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/clj/fastble/a;->p(Lcom/clj/fastble/data/BleDevice;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public s()Landroid/bluetooth/BluetoothManager;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/a;->e:Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method public t()J
    .locals 2

    iget-wide v0, p0, Lcom/clj/fastble/a;->k:J

    return-wide v0
.end method

.method public u(Lcom/clj/fastble/data/BleDevice;)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/clj/fastble/a;->e:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public v()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/a;->a:Landroid/app/Application;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/clj/fastble/a;->f:I

    return v0
.end method

.method public y()Lcom/clj/fastble/bluetooth/c;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/a;->d:Lcom/clj/fastble/bluetooth/c;

    return-object v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/clj/fastble/a;->g:I

    return v0
.end method
