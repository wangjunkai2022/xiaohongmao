.class public Lcom/facebook/imagepipeline/cache/t;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/j;
.implements Lcom/facebook/imagepipeline/cache/u;
.implements Lcom/facebook/cache/common/f;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/j<",
        "TK;TV;>;",
        "Lcom/facebook/imagepipeline/cache/u<",
        "TK;TV;>;",
        "Lcom/facebook/cache/common/f;"
    }
.end annotation

.annotation build Ls7/d;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/j$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field final b:Lcom/facebook/imagepipeline/cache/i;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field final c:Lcom/facebook/imagepipeline/cache/i;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/cache/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/a0<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/cache/u$a;

.field private final g:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lcom/facebook/imagepipeline/cache/v;
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private i:J
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/a0;Lcom/facebook/imagepipeline/cache/u$a;Lcom/facebook/common/internal/m;Lcom/facebook/imagepipeline/cache/j$b;ZZ)V
    .locals 2
    .param p4    # Lcom/facebook/imagepipeline/cache/j$b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
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
            "valueDescriptor",
            "cacheTrimStrategy",
            "memoryCacheParamsSupplier",
            "entryStateObserver",
            "storeEntrySize",
            "ignoreSizeMismatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/a0<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/u$a;",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "TK;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->d:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/t;->e:Lcom/facebook/imagepipeline/cache/a0;

    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/cache/i;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->J(Lcom/facebook/imagepipeline/cache/a0;)Lcom/facebook/imagepipeline/cache/a0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/i;-><init>(Lcom/facebook/imagepipeline/cache/a0;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/cache/i;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->J(Lcom/facebook/imagepipeline/cache/a0;)Lcom/facebook/imagepipeline/cache/a0;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/cache/i;-><init>(Lcom/facebook/imagepipeline/cache/a0;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/t;->f:Lcom/facebook/imagepipeline/cache/u$a;

    .line 7
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/t;->g:Lcom/facebook/common/internal/m;

    .line 8
    invoke-interface {p3}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "mMemoryCacheParamsSupplier returned null"

    .line 9
    invoke-static {p1, p2}, Lcom/facebook/common/internal/j;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/v;

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/t;->h:Lcom/facebook/imagepipeline/cache/v;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/imagepipeline/cache/t;->i:J

    .line 11
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/t;->a:Lcom/facebook/imagepipeline/cache/j$b;

    .line 12
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/cache/t;->j:Z

    .line 13
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/cache/t;->k:Z

    return-void
.end method

.method private A(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/t;->G(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static B(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/j$a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/j$a;->e:Lcom/facebook/imagepipeline/cache/j$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/j$a;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/j$b;->a(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private static C(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/j$a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/j$a;->e:Lcom/facebook/imagepipeline/cache/j$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/j$a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/j$b;->a(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private D(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/t;->C(Lcom/facebook/imagepipeline/cache/j$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized E()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/t;->i:J

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->h:Lcom/facebook/imagepipeline/cache/v;

    iget-wide v2, v2, Lcom/facebook/imagepipeline/cache/v;->f:J

    add-long/2addr v0, v2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/t;->i:J

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->g:Lcom/facebook/common/internal/m;

    .line 6
    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mMemoryCacheParamsSupplier returned null"

    .line 7
    invoke-static {v0, v1}, Lcom/facebook/common/internal/j;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/v;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->h:Lcom/facebook/imagepipeline/cache/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized F(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->w(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 2
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->b:Lcom/facebook/common/references/a;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/cache/t$b;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/cache/t$b;-><init>(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 4
    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->G(Ljava/lang/Object;Lcom/facebook/common/references/h;)Lcom/facebook/common/references/a;

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

.method private declared-synchronized G(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->d:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/j$a;->b:Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private H(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->u(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->z(Lcom/facebook/imagepipeline/cache/j$a;)Z

    move-result v0

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->G(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/t;->B(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/t;->E()V

    .line 10
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/t;->p()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized I(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v1

    if-gt v1, p1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v1, p2, :cond_0

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v2

    if-gt v2, p1, :cond_1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v2

    if-le v2, p2, :cond_2

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/i;->e()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 8
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/cache/t;->k:Z

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/i;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_2
    monitor-exit p0

    return-object v1

    .line 11
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "key is null, but exclusiveEntries count: %d, size: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    .line 12
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 13
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private J(Lcom/facebook/imagepipeline/cache/a0;)Lcom/facebook/imagepipeline/cache/a0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "evictableValueDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/a0<",
            "TV;>;)",
            "Lcom/facebook/imagepipeline/cache/a0<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/cache/t$a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/t$a;-><init>(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/a0;)V

    return-object v0
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/cache/t;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/cache/t;->j:Z

    return p0
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->H(Lcom/facebook/imagepipeline/cache/j$a;)V

    return-void
.end method

.method private declared-synchronized t(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValueSize"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->h:Lcom/facebook/imagepipeline/cache/v;

    iget v0, v0, Lcom/facebook/imagepipeline/cache/v;->e:I

    const/4 v1, 0x1

    if-gt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/t;->v()I

    move-result v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->h:Lcom/facebook/imagepipeline/cache/v;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/v;->b:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/t;->o()I

    move-result v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->h:Lcom/facebook/imagepipeline/cache/v;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/v;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, p1

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized u(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 3
    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized w(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 3
    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized x(Lcom/facebook/imagepipeline/cache/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 3
    iput-boolean v1, p1, Lcom/facebook/imagepipeline/cache/j$a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized y(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/t;->x(Lcom/facebook/imagepipeline/cache/j$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 3
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized z(Lcom/facebook/imagepipeline/cache/j$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->d:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/j$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/i;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
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
            "(TK;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/imagepipeline/cache/i;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->a:Lcom/facebook/imagepipeline/cache/j$b;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/cache/t;->j(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/t;->y(Ljava/util/ArrayList;)V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/t;->A(Ljava/util/ArrayList;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/t;->D(Ljava/util/ArrayList;)V

    .line 8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/t;->E()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->b(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/Object;)Ljava/lang/Object;
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
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/j$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/j$a;->b:Lcom/facebook/common/references/a;

    invoke-virtual {p1}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e()Lcom/facebook/imagepipeline/cache/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/i<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    return-object v0
.end method

.method public declared-synchronized f()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->d:Ljava/util/Map;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 2
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
            "(TK;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/i;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/j$a;

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->F(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/t;->C(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/t;->E()V

    .line 9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/t;->p()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Lcom/facebook/imagepipeline/cache/v;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->h:Lcom/facebook/imagepipeline/cache/v;

    return-object v0
.end method

.method public declared-synchronized i()Ljava/lang/String;
    .locals 3
    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "CountingMemoryCache"

    .line 1
    invoke-static {v0}, Lcom/facebook/common/internal/i;->f(Ljava/lang/String;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    const-string v1, "cached_entries_count"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    .line 2
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    const-string v1, "cached_entries_size_bytes"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    .line 3
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    const-string v1, "exclusive_entries_count"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    .line 4
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    const-string v1, "exclusive_entries_size_bytes"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    .line 5
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/common/references/a;
    .locals 5
    .param p3    # Lcom/facebook/imagepipeline/cache/j$b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "TK;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/t;->E()V

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    .line 6
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/j$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/t;->x(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 8
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/t;->G(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/t;->e:Lcom/facebook/imagepipeline/cache/a0;

    invoke-interface {v4, v3}, Lcom/facebook/imagepipeline/cache/a0;->a(Ljava/lang/Object;)I

    move-result v3

    .line 11
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/t;->t(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/cache/t;->j:Z

    if-eqz v2, :cond_1

    .line 13
    invoke-static {p1, p2, v3, p3}, Lcom/facebook/imagepipeline/cache/j$a;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;ILcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/imagepipeline/cache/j$a;

    move-result-object p2

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/cache/j$a;->b(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/imagepipeline/cache/j$a;

    move-result-object p2

    .line 15
    :goto_1
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/cache/i;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/t;->F(Lcom/facebook/imagepipeline/cache/j$a;)Lcom/facebook/common/references/a;

    move-result-object v2

    .line 17
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 19
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/t;->C(Lcom/facebook/imagepipeline/cache/j$a;)V

    .line 20
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/t;->p()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public k(Lcom/facebook/common/internal/k;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "TK;>;)I"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->m(Lcom/facebook/common/internal/k;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/i;->m(Lcom/facebook/common/internal/k;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->y(Ljava/util/ArrayList;)V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->A(Ljava/util/ArrayList;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/t;->D(Ljava/util/ArrayList;)V

    .line 8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/t;->E()V

    .line 9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/t;->p()V

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized l(Lcom/facebook/common/internal/k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "TK;>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->g(Lcom/facebook/common/internal/k;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public m(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->f:Lcom/facebook/imagepipeline/cache/u$a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u$a;->a(Lcom/facebook/common/memory/MemoryTrimType;)D

    move-result-wide v0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double v2, v2, v4

    double-to-int p1, v2

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/t;->o()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const v0, 0x7fffffff

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/t;->I(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->y(Ljava/util/ArrayList;)V

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->A(Ljava/util/ArrayList;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/t;->D(Ljava/util/ArrayList;)V

    .line 10
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/t;->E()V

    .line 11
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/t;->p()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/j$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/i;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/j$a;

    .line 5
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v3, p1, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 7
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/j$a;->b:Lcom/facebook/common/references/a;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/t;->C(Lcom/facebook/imagepipeline/cache/j$a;)V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized o()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->h()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->h:Lcom/facebook/imagepipeline/cache/v;

    iget v1, v0, Lcom/facebook/imagepipeline/cache/v;->d:I

    iget v0, v0, Lcom/facebook/imagepipeline/cache/v;->b:I

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/t;->v()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/t;->h:Lcom/facebook/imagepipeline/cache/v;

    iget v2, v1, Lcom/facebook/imagepipeline/cache/v;->c:I

    iget v1, v1, Lcom/facebook/imagepipeline/cache/v;->a:I

    .line 6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/t;->o()I

    move-result v3

    sub-int/2addr v1, v3

    .line 7
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/t;->I(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/t;->y(Ljava/util/ArrayList;)V

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/t;->A(Ljava/util/ArrayList;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/t;->D(Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized q()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/t;->c:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/t;->b:Lcom/facebook/imagepipeline/cache/i;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/i;->d()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
