.class public Lcom/clj/fastble/scan/c;
.super Ljava/lang/Object;
.source "BleScanner.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/scan/c$b;
    }
.end annotation


# instance fields
.field private a:Lcom/clj/fastble/data/BleScanState;

.field private b:Lcom/clj/fastble/scan/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    iput-object v0, p0, Lcom/clj/fastble/scan/c;->a:Lcom/clj/fastble/data/BleScanState;

    .line 3
    new-instance v0, Lcom/clj/fastble/scan/c$a;

    invoke-direct {v0, p0}, Lcom/clj/fastble/scan/c$a;-><init>(Lcom/clj/fastble/scan/c;)V

    iput-object v0, p0, Lcom/clj/fastble/scan/c;->b:Lcom/clj/fastble/scan/a;

    return-void
.end method

.method static synthetic a(Lcom/clj/fastble/scan/c;)Lcom/clj/fastble/scan/a;
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/scan/c;->b:Lcom/clj/fastble/scan/a;

    return-object p0
.end method

.method public static b()Lcom/clj/fastble/scan/c;
    .locals 1

    invoke-static {}, Lcom/clj/fastble/scan/c$b;->a()Lcom/clj/fastble/scan/c;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized f([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZZJLg0/j;)V
    .locals 11

    move-object v1, p0

    move-object/from16 v0, p8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v2, v1, Lcom/clj/fastble/scan/c;->a:Lcom/clj/fastble/data/BleScanState;

    sget-object v10, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    if-eq v2, v10, :cond_1

    const-string v2, "scan action already exists, complete the previous scan action first"

    .line 2
    invoke-static {v2}, Lcom/clj/fastble/utils/a;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v2}, Lg0/j;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/clj/fastble/scan/c;->b:Lcom/clj/fastble/scan/a;

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/clj/fastble/scan/a;->n([Ljava/lang/String;Ljava/lang/String;ZZJLg0/j;)V

    .line 6
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->o()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/clj/fastble/scan/c;->b:Lcom/clj/fastble/scan/a;

    move-object v3, p1

    .line 7
    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v10, Lcom/clj/fastble/data/BleScanState;->STATE_SCANNING:Lcom/clj/fastble/data/BleScanState;

    :cond_2
    iput-object v10, v1, Lcom/clj/fastble/scan/c;->a:Lcom/clj/fastble/data/BleScanState;

    .line 9
    iget-object v2, v1, Lcom/clj/fastble/scan/c;->b:Lcom/clj/fastble/scan/a;

    invoke-virtual {v2, v0}, Lcom/clj/fastble/scan/a;->h(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public c()Lcom/clj/fastble/data/BleScanState;
    .locals 1

    iget-object v0, p0, Lcom/clj/fastble/scan/c;->a:Lcom/clj/fastble/data/BleScanState;

    return-object v0
.end method

.method public d([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLg0/i;)V
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/clj/fastble/scan/c;->f([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZZJLg0/j;)V

    return-void
.end method

.method public e([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZJLg0/h;)V
    .locals 9

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/clj/fastble/scan/c;->f([Ljava/util/UUID;[Ljava/lang/String;Ljava/lang/String;ZZJLg0/j;)V

    return-void
.end method

.method public declared-synchronized g()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/a;->w()Lcom/clj/fastble/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/a;->o()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/scan/c;->b:Lcom/clj/fastble/scan/a;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 2
    sget-object v0, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    iput-object v0, p0, Lcom/clj/fastble/scan/c;->a:Lcom/clj/fastble/data/BleScanState;

    .line 3
    iget-object v0, p0, Lcom/clj/fastble/scan/c;->b:Lcom/clj/fastble/scan/a;

    invoke-virtual {v0}, Lcom/clj/fastble/scan/a;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
