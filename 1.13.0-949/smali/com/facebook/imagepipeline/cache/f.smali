.class public Lcom/facebook/imagepipeline/cache/f;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/cache/disk/i;

.field private final b:Lcom/facebook/common/memory/g;

.field private final c:Lcom/facebook/common/memory/j;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lcom/facebook/imagepipeline/cache/z;

.field private final g:Lcom/facebook/imagepipeline/cache/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/imagepipeline/cache/f;

    sput-object v0, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/disk/i;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileCache",
            "pooledByteBufferFactory",
            "pooledByteStreams",
            "readExecutor",
            "writeExecutor",
            "imageCacheStatsTracker"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/f;->a:Lcom/facebook/cache/disk/i;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/f;->b:Lcom/facebook/common/memory/g;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/f;->c:Lcom/facebook/common/memory/j;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/f;->d:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p5, p0, Lcom/facebook/imagepipeline/cache/f;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Lcom/facebook/imagepipeline/cache/f;->g:Lcom/facebook/imagepipeline/cache/q;

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/cache/z;->d()Lcom/facebook/imagepipeline/cache/z;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/f;->f:Lcom/facebook/imagepipeline/cache/z;

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/cache/common/c;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/f;->j(Lcom/facebook/cache/common/c;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/cache/disk/i;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/f;->a:Lcom/facebook/cache/disk/i;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/imagepipeline/cache/z;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/f;->f:Lcom/facebook/imagepipeline/cache/z;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/imagepipeline/cache/q;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/f;->g:Lcom/facebook/imagepipeline/cache/q;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/cache/common/c;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/f;->v(Lcom/facebook/cache/common/c;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/cache/f;->x(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    return-void
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/common/memory/j;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/f;->c:Lcom/facebook/common/memory/j;

    return-object p0
.end method

.method private j(Lcom/facebook/cache/common/c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->f:Lcom/facebook/imagepipeline/cache/z;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/z;->c(Lcom/facebook/cache/common/c;)Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/e;->close()V

    .line 3
    sget-object v0, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Found image for %s in staging area"

    invoke-static {v0, v2, v1}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->g:Lcom/facebook/imagepipeline/cache/q;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/q;->f(Lcom/facebook/cache/common/c;)V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Did not find image for %s in staging area"

    invoke-static {v0, v2, v1}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->g:Lcom/facebook/imagepipeline/cache/q;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/q;->l(Lcom/facebook/cache/common/c;)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->a:Lcom/facebook/cache/disk/i;

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/i;->j(Lcom/facebook/cache/common/c;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private m(Lcom/facebook/cache/common/c;)Lbolts/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "BufferedDiskCache_containsAsync"

    .line 1
    invoke-static {v0}, Lp1/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/cache/f$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/facebook/imagepipeline/cache/f$a;-><init>(Lcom/facebook/imagepipeline/cache/f;Ljava/lang/Object;Lcom/facebook/cache/common/c;)V

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->d:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, Lbolts/h;->e(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Failed to schedule disk-cache read for %s"

    invoke-static {v1, v0, p1, v2}, Lp0/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {v0}, Lbolts/h;->C(Ljava/lang/Exception;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method private p(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)Lbolts/h;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "pinnedImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/e;",
            ")",
            "Lbolts/h<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Found image for %s in staging area"

    invoke-static {v0, v2, v1}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->g:Lcom/facebook/imagepipeline/cache/q;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/q;->f(Lcom/facebook/cache/common/c;)V

    .line 3
    invoke-static {p2}, Lbolts/h;->D(Ljava/lang/Object;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method private r(Lcom/facebook/cache/common/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "isCancelled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/h<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "BufferedDiskCache_getAsync"

    .line 1
    invoke-static {v0}, Lp1/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/cache/f$c;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/facebook/imagepipeline/cache/f$c;-><init>(Lcom/facebook/imagepipeline/cache/f;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/cache/common/c;)V

    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/f;->d:Ljava/util/concurrent/Executor;

    invoke-static {v1, p2}, Lbolts/h;->e(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 3
    sget-object v0, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Failed to schedule disk-cache read for %s"

    invoke-static {v0, p2, p1, v1}, Lp0/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {p2}, Lbolts/h;->C(Ljava/lang/Exception;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method private v(Lcom/facebook/cache/common/c;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    const-string v1, "Disk cache read for %s"

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/f;->a:Lcom/facebook/cache/disk/i;

    invoke-interface {v1, p1}, Lcom/facebook/cache/disk/i;->d(Lcom/facebook/cache/common/c;)Lk0/a;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Disk cache miss for %s"

    .line 3
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->g:Lcom/facebook/imagepipeline/cache/q;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/q;->c(Lcom/facebook/cache/common/c;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v2, "Found entry in disk cache for %s"

    .line 5
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f;->g:Lcom/facebook/imagepipeline/cache/q;

    invoke-interface {v2, p1}, Lcom/facebook/imagepipeline/cache/q;->i(Lcom/facebook/cache/common/c;)V

    .line 7
    invoke-interface {v1}, Lk0/a;->a()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/f;->b:Lcom/facebook/common/memory/g;

    invoke-interface {v1}, Lk0/a;->size()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-interface {v3, v2, v1}, Lcom/facebook/common/memory/g;->b(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string v2, "Successful read from disk cache for %s"

    .line 10
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 12
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 13
    sget-object v1, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Exception reading from cache for %s"

    invoke-static {v1, v0, v3, v2}, Lp0/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/f;->g:Lcom/facebook/imagepipeline/cache/q;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/q;->n(Lcom/facebook/cache/common/c;)V

    .line 15
    throw v0
.end method

.method private x(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "encodedImage"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "About to write to disk-cache for key %s"

    invoke-static {v0, v2, v1}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/f;->a:Lcom/facebook/cache/disk/i;

    new-instance v2, Lcom/facebook/imagepipeline/cache/f$g;

    invoke-direct {v2, p0, p2}, Lcom/facebook/imagepipeline/cache/f$g;-><init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/image/e;)V

    invoke-interface {v1, p1, v2}, Lcom/facebook/cache/disk/i;->k(Lcom/facebook/cache/common/c;Lcom/facebook/cache/common/k;)Lk0/a;

    .line 3
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/f;->g:Lcom/facebook/imagepipeline/cache/q;

    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/cache/q;->d(Lcom/facebook/cache/common/c;)V

    const-string p2, "Successful disk-cache write for key %s"

    .line 4
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    sget-object v0, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Failed to write to disk-cache for key %s"

    invoke-static {v0, p2, p1, v1}, Lp0/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public i(Lcom/facebook/cache/common/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->a:Lcom/facebook/cache/disk/i;

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/i;->c(Lcom/facebook/cache/common/c;)Z

    return-void
.end method

.method public k()Lbolts/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->f:Lcom/facebook/imagepipeline/cache/z;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/z;->a()V

    const-string v0, "BufferedDiskCache_clearAll"

    .line 2
    invoke-static {v0}, Lp1/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/cache/f$f;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/cache/f$f;-><init>(Lcom/facebook/imagepipeline/cache/f;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, Lbolts/h;->e(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to schedule disk-cache clear"

    invoke-static {v1, v0, v3, v2}, Lp0/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {v0}, Lbolts/h;->C(Ljava/lang/Exception;)Lbolts/h;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/facebook/cache/common/c;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/f;->n(Lcom/facebook/cache/common/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lbolts/h;->D(Ljava/lang/Object;)Lbolts/h;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/f;->m(Lcom/facebook/cache/common/c;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/facebook/cache/common/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->f:Lcom/facebook/imagepipeline/cache/z;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/z;->b(Lcom/facebook/cache/common/c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->a:Lcom/facebook/cache/disk/i;

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/i;->g(Lcom/facebook/cache/common/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public o(Lcom/facebook/cache/common/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/f;->n(Lcom/facebook/cache/common/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/f;->j(Lcom/facebook/cache/common/c;)Z

    move-result p1

    return p1
.end method

.method public q(Lcom/facebook/cache/common/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "isCancelled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/h<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#get"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->f:Lcom/facebook/imagepipeline/cache/z;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/z;->c(Lcom/facebook/cache/common/c;)Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/cache/f;->p(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)Lbolts/h;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-object p1

    .line 7
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/cache/f;->r(Lcom/facebook/cache/common/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 12
    :cond_4
    throw p1
.end method

.method public s()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->a:Lcom/facebook/cache/disk/i;

    invoke-interface {v0}, Lcom/facebook/cache/disk/i;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public t(Lcom/facebook/cache/common/c;)Lbolts/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "BufferedDiskCache_probe"

    .line 2
    invoke-static {v0}, Lp1/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/facebook/imagepipeline/cache/f$b;

    invoke-direct {v1, p0, v0, p1}, Lcom/facebook/imagepipeline/cache/f$b;-><init>(Lcom/facebook/imagepipeline/cache/f;Ljava/lang/Object;Lcom/facebook/cache/common/c;)V

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, Lbolts/h;->e(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Failed to schedule disk-cache probe for %s"

    invoke-static {v1, v0, p1, v2}, Lp0/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {v0}, Lbolts/h;->C(Ljava/lang/Exception;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method

.method public u(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "encodedImage"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#put"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/e;->b0(Lcom/facebook/imagepipeline/image/e;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->f:Lcom/facebook/imagepipeline/cache/z;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/z;->f(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    .line 6
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/e;->b(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/imagepipeline/image/e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "BufferedDiskCache_putAsync"

    .line 7
    invoke-static {v1}, Lp1/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/facebook/imagepipeline/cache/f$d;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/facebook/imagepipeline/cache/f$d;-><init>(Lcom/facebook/imagepipeline/cache/f;Ljava/lang/Object;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    :try_start_2
    sget-object v2, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    const-string v3, "Failed to schedule disk-cache write for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v1, v3, v4}, Lp0/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/f;->f:Lcom/facebook/imagepipeline/cache/z;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/cache/z;->h(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)Z

    .line 11
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 16
    :cond_2
    throw p1
.end method

.method public w(Lcom/facebook/cache/common/c;)Lbolts/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->f:Lcom/facebook/imagepipeline/cache/z;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/z;->g(Lcom/facebook/cache/common/c;)Z

    :try_start_0
    const-string v0, "BufferedDiskCache_remove"

    .line 3
    invoke-static {v0}, Lp1/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/facebook/imagepipeline/cache/f$e;

    invoke-direct {v1, p0, v0, p1}, Lcom/facebook/imagepipeline/cache/f$e;-><init>(Lcom/facebook/imagepipeline/cache/f;Ljava/lang/Object;Lcom/facebook/cache/common/c;)V

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, Lbolts/h;->e(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/h;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/facebook/imagepipeline/cache/f;->h:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Failed to schedule disk-cache remove for %s"

    invoke-static {v1, v0, p1, v2}, Lp0/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {v0}, Lbolts/h;->C(Ljava/lang/Exception;)Lbolts/h;

    move-result-object p1

    return-object p1
.end method
