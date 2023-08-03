.class public final Lcom/google/android/exoplayer2/drm/l0;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation


# static fields
.field private static final e:Lcom/google/android/exoplayer2/Format;


# instance fields
.field private final a:Landroid/os/ConditionVariable;

.field private final b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

.field private final c:Landroid/os/HandlerThread;

.field private final d:Lcom/google/android/exoplayer2/drm/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$b;->L(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/drm/l0;->e:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/s$a;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/l0;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/l0;->d:Lcom/google/android/exoplayer2/drm/s$a;

    .line 9
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:OfflineLicenseHelper"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/l0;->c:Landroid/os/HandlerThread;

    .line 10
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 11
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/l0;->a:Landroid/os/ConditionVariable;

    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/drm/l0$a;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/drm/l0$a;-><init>(Lcom/google/android/exoplayer2/drm/l0;)V

    .line 13
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2, v1, v0}, Lcom/google/android/exoplayer2/drm/s$a;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/b0$g;Lcom/google/android/exoplayer2/drm/k0;Ljava/util/Map;Lcom/google/android/exoplayer2/drm/s$a;)V
    .locals 1
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/b0$g;",
            "Lcom/google/android/exoplayer2/drm/k0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/s$a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->h(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/b0$g;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->b(Ljava/util/Map;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->a(Lcom/google/android/exoplayer2/drm/k0;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1, p5}, Lcom/google/android/exoplayer2/drm/l0;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/s$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/drm/l0;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/l0;->a:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private b(I[BLcom/google/android/exoplayer2/Format;)[B
    .locals 1
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/l0;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a()V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/drm/l0;->h(I[BLcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p2

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->k()[B

    move-result-object p3

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/l0;->d:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->g(Lcom/google/android/exoplayer2/drm/s$a;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/l0;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->release()V

    if-nez p2, :cond_0

    .line 7
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 8
    :cond_0
    throw p2
.end method

.method public static e(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;Lcom/google/android/exoplayer2/drm/s$a;)Lcom/google/android/exoplayer2/drm/l0;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/drm/l0;->f(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$b;Lcom/google/android/exoplayer2/drm/s$a;)Lcom/google/android/exoplayer2/drm/l0;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$b;Lcom/google/android/exoplayer2/drm/s$a;)Lcom/google/android/exoplayer2/drm/l0;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/drm/l0;->g(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$b;Ljava/util/Map;Lcom/google/android/exoplayer2/drm/s$a;)Lcom/google/android/exoplayer2/drm/l0;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$b;Ljava/util/Map;Lcom/google/android/exoplayer2/drm/s$a;)Lcom/google/android/exoplayer2/drm/l0;
    .locals 2
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/s$a;",
            ")",
            "Lcom/google/android/exoplayer2/drm/l0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/drm/l0;

    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;-><init>()V

    .line 2
    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->b(Ljava/util/Map;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    move-result-object p3

    new-instance v1, Lcom/google/android/exoplayer2/drm/i0;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/drm/i0;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$b;)V

    .line 3
    invoke-virtual {p3, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->a(Lcom/google/android/exoplayer2/drm/k0;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object p0

    invoke-direct {v0, p0, p4}, Lcom/google/android/exoplayer2/drm/l0;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/s$a;)V

    return-object v0
.end method

.method private h(I[BLcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 1
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/l0;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->D(I[B)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/l0;->a:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/l0;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/l0;->c:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/l0;->d:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1, p2, v0, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/l0;->a:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Landroid/os/ConditionVariable;->block()V

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSession;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized c(Lcom/google/android/exoplayer2/Format;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/drm/l0;->b(I[BLcom/google/android/exoplayer2/Format;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d([B)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/l0;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a()V

    const/4 v0, 0x1

    .line 3
    sget-object v1, Lcom/google/android/exoplayer2/drm/l0;->e:Lcom/google/android/exoplayer2/Format;

    .line 4
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/drm/l0;->h(I[BLcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/n0;->b(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/l0;->d:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/drm/DrmSession;->g(Lcom/google/android/exoplayer2/drm/s$a;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/l0;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->release()V

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 11
    :cond_0
    :try_start_1
    throw v0

    .line 12
    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/l0;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public declared-synchronized j([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 2
    sget-object v1, Lcom/google/android/exoplayer2/drm/l0;->e:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/drm/l0;->b(I[BLcom/google/android/exoplayer2/Format;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 2
    sget-object v1, Lcom/google/android/exoplayer2/drm/l0;->e:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/drm/l0;->b(I[BLcom/google/android/exoplayer2/Format;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
