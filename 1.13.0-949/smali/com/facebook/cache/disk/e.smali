.class public Lcom/facebook/cache/disk/e;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Lcom/facebook/cache/disk/i;
.implements Lm0/a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/e$c;,
        Lcom/facebook/cache/disk/e$b;
    }
.end annotation

.annotation build Ls7/d;
.end annotation


# static fields
.field private static final r:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final s:I = 0x1

.field private static final t:J

.field private static final u:J

.field private static final v:D = 0.02

.field private static final w:J = -0x1L


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field private d:J

.field private final e:Lcom/facebook/cache/common/CacheEventListener;

.field final f:Ljava/util/Set;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "mLock"
    .end annotation
.end field

.field private g:J

.field private final h:J

.field private final i:Lcom/facebook/common/statfs/StatFsHelper;

.field private final j:Lcom/facebook/cache/disk/d;

.field private final k:Lcom/facebook/cache/disk/h;

.field private final l:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final m:Z

.field private final n:Lcom/facebook/cache/disk/e$b;

.field private final o:Ls0/a;

.field private final p:Ljava/lang/Object;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/cache/disk/e;

    sput-object v0, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/e;->t:J

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/e;->u:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/disk/d;Lcom/facebook/cache/disk/h;Lcom/facebook/cache/disk/e$c;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lm0/b;Ljava/util/concurrent/Executor;Z)V
    .locals 2
    .param p6    # Lm0/b;
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
            0x0,
            0x10,
            0x0
        }
        names = {
            "diskStorage",
            "entryEvictionComparatorSupplier",
            "params",
            "cacheEventListener",
            "cacheErrorLogger",
            "diskTrimmableRegistry",
            "executorForBackgrountInit",
            "indexPopulateAtStartupEnabled"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    .line 3
    iget-wide v0, p3, Lcom/facebook/cache/disk/e$c;->b:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/e;->a:J

    .line 4
    iget-wide v0, p3, Lcom/facebook/cache/disk/e$c;->c:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/e;->b:J

    .line 5
    iput-wide v0, p0, Lcom/facebook/cache/disk/e;->d:J

    .line 6
    invoke-static {}, Lcom/facebook/common/statfs/StatFsHelper;->e()Lcom/facebook/common/statfs/StatFsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cache/disk/e;->i:Lcom/facebook/common/statfs/StatFsHelper;

    .line 7
    iput-object p1, p0, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    .line 8
    iput-object p2, p0, Lcom/facebook/cache/disk/e;->k:Lcom/facebook/cache/disk/h;

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Lcom/facebook/cache/disk/e;->g:J

    .line 10
    iput-object p4, p0, Lcom/facebook/cache/disk/e;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 11
    iget-wide p1, p3, Lcom/facebook/cache/disk/e$c;->a:J

    iput-wide p1, p0, Lcom/facebook/cache/disk/e;->h:J

    .line 12
    iput-object p5, p0, Lcom/facebook/cache/disk/e;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 13
    new-instance p1, Lcom/facebook/cache/disk/e$b;

    invoke-direct {p1}, Lcom/facebook/cache/disk/e$b;-><init>()V

    iput-object p1, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    .line 14
    invoke-static {}, Ls0/e;->a()Ls0/e;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/cache/disk/e;->o:Ls0/a;

    .line 15
    iput-boolean p8, p0, Lcom/facebook/cache/disk/e;->m:Z

    .line 16
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    if-eqz p6, :cond_0

    .line 17
    invoke-interface {p6, p0}, Lm0/b;->a(Lm0/a;)V

    :cond_0
    if-eqz p8, :cond_1

    .line 18
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/cache/disk/e;->c:Ljava/util/concurrent/CountDownLatch;

    .line 19
    new-instance p1, Lcom/facebook/cache/disk/e$a;

    invoke-direct {p1, p0}, Lcom/facebook/cache/disk/e$a;-><init>(Lcom/facebook/cache/disk/e;)V

    invoke-interface {p7, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/cache/disk/e;->c:Ljava/util/concurrent/CountDownLatch;

    :goto_0
    return-void
.end method

.method static synthetic l(Lcom/facebook/cache/disk/e;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic m(Lcom/facebook/cache/disk/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/facebook/cache/disk/e;->v()Z

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/facebook/cache/disk/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/cache/disk/e;->q:Z

    return p1
.end method

.method static synthetic o(Lcom/facebook/cache/disk/e;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/e;->c:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private q(Lcom/facebook/cache/disk/d$d;Lcom/facebook/cache/common/c;Ljava/lang/String;)Lk0/a;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "inserter",
            "key",
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {p1, p2}, Lcom/facebook/cache/disk/d$d;->e(Ljava/lang/Object;)Lk0/a;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-interface {p1}, Lk0/a;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/facebook/cache/disk/e$b;->c(JJ)V

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private r(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "desiredSize",
            "reason"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v0}, Lcom/facebook/cache/disk/d;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/cache/disk/e;->s(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v4, v1, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v4}, Lcom/facebook/cache/disk/e$b;->b()J

    move-result-wide v4

    sub-long v6, v4, v2

    const/4 v8, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v11, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/cache/disk/d$c;

    cmp-long v14, v11, v6

    if-lez v14, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v14, v1, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v14, v13}, Lcom/facebook/cache/disk/d;->f(Lcom/facebook/cache/disk/d$c;)J

    move-result-wide v14

    .line 5
    iget-object v9, v1, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {v13}, Lcom/facebook/cache/disk/d$c;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-wide/16 v9, 0x0

    cmp-long v16, v14, v9

    if-lez v16, :cond_1

    add-int/lit8 v8, v8, 0x1

    add-long/2addr v11, v14

    .line 6
    invoke-static {}, Lcom/facebook/cache/disk/k;->g()Lcom/facebook/cache/disk/k;

    move-result-object v9

    .line 7
    invoke-interface {v13}, Lcom/facebook/cache/disk/d$c;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/facebook/cache/disk/k;->p(Ljava/lang/String;)Lcom/facebook/cache/disk/k;

    move-result-object v9

    move-object/from16 v10, p3

    .line 8
    invoke-virtual {v9, v10}, Lcom/facebook/cache/disk/k;->m(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/k;

    move-result-object v9

    .line 9
    invoke-virtual {v9, v14, v15}, Lcom/facebook/cache/disk/k;->o(J)Lcom/facebook/cache/disk/k;

    move-result-object v9

    sub-long v13, v4, v11

    .line 10
    invoke-virtual {v9, v13, v14}, Lcom/facebook/cache/disk/k;->l(J)Lcom/facebook/cache/disk/k;

    move-result-object v9

    .line 11
    invoke-virtual {v9, v2, v3}, Lcom/facebook/cache/disk/k;->k(J)Lcom/facebook/cache/disk/k;

    move-result-object v9

    .line 12
    iget-object v13, v1, Lcom/facebook/cache/disk/e;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v13, v9}, Lcom/facebook/cache/common/CacheEventListener;->f(Lcom/facebook/cache/common/b;)V

    .line 13
    invoke-virtual {v9}, Lcom/facebook/cache/disk/k;->h()V

    goto :goto_0

    :cond_1
    move-object/from16 v10, p3

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    neg-long v2, v11

    neg-int v4, v8

    int-to-long v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/facebook/cache/disk/e$b;->c(JJ)V

    .line 15
    iget-object v0, v1, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v0}, Lcom/facebook/cache/disk/d;->d()V

    return-void

    :catch_0
    move-exception v0

    .line 16
    iget-object v2, v1, Lcom/facebook/cache/disk/e;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "evictAboveSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    throw v0
.end method

.method private s(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/disk/d$c;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/disk/d$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->o:Ls0/a;

    invoke-interface {v0}, Ls0/a;->now()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/cache/disk/e;->t:J

    add-long/2addr v0, v2

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/cache/disk/d$c;

    .line 5
    invoke-interface {v4}, Lcom/facebook/cache/disk/d$c;->b()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    .line 6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/facebook/cache/disk/e;->k:Lcom/facebook/cache/disk/h;

    invoke-interface {p1}, Lcom/facebook/cache/disk/h;->get()Lcom/facebook/cache/disk/g;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method private u()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/e;->v()Z

    move-result v1

    .line 3
    invoke-direct {p0}, Lcom/facebook/cache/disk/e;->z()V

    .line 4
    iget-object v2, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/e$b;->b()J

    move-result-wide v2

    .line 5
    iget-wide v4, p0, Lcom/facebook/cache/disk/e;->d:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v1}, Lcom/facebook/cache/disk/e$b;->e()V

    .line 7
    invoke-direct {p0}, Lcom/facebook/cache/disk/e;->v()Z

    .line 8
    :cond_0
    iget-wide v4, p0, Lcom/facebook/cache/disk/e;->d:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const-wide/16 v1, 0x9

    mul-long v4, v4, v1

    const-wide/16 v1, 0xa

    .line 9
    div-long/2addr v4, v1

    sget-object v1, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->CACHE_FULL:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    invoke-direct {p0, v4, v5, v1}, Lcom/facebook/cache/disk/e;->r(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private v()Z
    .locals 7
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->o:Ls0/a;

    invoke-interface {v0}, Ls0/a;->now()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/e$b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/facebook/cache/disk/e;->g:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/cache/disk/e;->u:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/e;->w()Z

    move-result v0

    return v0
.end method

.method private w()Z
    .locals 23
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/facebook/cache/disk/e;->o:Ls0/a;

    invoke-interface {v0}, Ls0/a;->now()J

    move-result-wide v2

    .line 2
    sget-wide v4, Lcom/facebook/cache/disk/e;->t:J

    add-long/2addr v4, v2

    .line 3
    iget-boolean v0, v1, Lcom/facebook/cache/disk/e;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v1, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, v1, Lcom/facebook/cache/disk/e;->m:Z

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v8, v1, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v8}, Lcom/facebook/cache/disk/d;->j()Ljava/util/Collection;

    move-result-object v8

    .line 8
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/16 v17, 0x1

    if-eqz v16, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/facebook/cache/disk/d$c;

    add-int/lit8 v14, v14, 0x1

    .line 9
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/d$c;->getSize()J

    move-result-wide v18

    add-long v9, v9, v18

    .line 10
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/d$c;->b()J

    move-result-wide v18

    cmp-long v20, v18, v4

    if-lez v20, :cond_2

    add-int/lit8 v15, v15, 0x1

    int-to-long v6, v7

    .line 11
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/d$c;->getSize()J

    move-result-wide v19

    add-long v6, v6, v19

    long-to-int v7, v6

    .line 12
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/d$c;->b()J

    move-result-wide v19

    move-wide/from16 v21, v4

    sub-long v4, v19, v2

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide v11, v4

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    move-wide/from16 v21, v4

    .line 13
    iget-boolean v4, v1, Lcom/facebook/cache/disk/e;->m:Z

    if-eqz v4, :cond_3

    .line 14
    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/d$c;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    move-wide/from16 v4, v21

    goto :goto_1

    :cond_4
    if-eqz v13, :cond_5

    .line 16
    iget-object v4, v1, Lcom/facebook/cache/disk/e;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v5, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->READ_INVALID_ENTRY:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v6, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Future timestamp found in "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " files , with a total size of "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes, and a maximum time delta of "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_5
    iget-object v4, v1, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v4}, Lcom/facebook/cache/disk/e$b;->a()J

    move-result-wide v4

    int-to-long v6, v14

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    iget-object v4, v1, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v4}, Lcom/facebook/cache/disk/e$b;->b()J

    move-result-wide v4

    cmp-long v8, v4, v9

    if-eqz v8, :cond_8

    .line 18
    :cond_6
    iget-boolean v4, v1, Lcom/facebook/cache/disk/e;->m:Z

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    if-eq v4, v0, :cond_7

    .line 19
    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v4, v1, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 21
    iget-object v4, v1, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 22
    :cond_7
    iget-object v0, v1, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v0, v9, v10, v6, v7}, Lcom/facebook/cache/disk/e$b;->f(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_8
    iput-wide v2, v1, Lcom/facebook/cache/disk/e;->g:J

    return v17

    :catch_0
    move-exception v0

    .line 24
    iget-object v2, v1, Lcom/facebook/cache/disk/e;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcFileCacheSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    return v2
.end method

.method private x(Ljava/lang/String;Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/d$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "resourceId",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/cache/disk/e;->u()V

    .line 2
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/d$d;

    move-result-object p1

    return-object p1
.end method

.method private y(D)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "trimRatio"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v1}, Lcom/facebook/cache/disk/e$b;->e()V

    .line 3
    invoke-direct {p0}, Lcom/facebook/cache/disk/e;->v()Z

    .line 4
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v1}, Lcom/facebook/cache/disk/e$b;->b()J

    move-result-wide v1

    long-to-double v3, v1

    mul-double p1, p1, v3

    double-to-long p1, p1

    sub-long/2addr v1, p1

    .line 5
    sget-object p1, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->CACHE_MANAGER_TRIMMED:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    invoke-direct {p0, v1, v2, p1}, Lcom/facebook/cache/disk/e;->r(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    iget-object p2, p0, Lcom/facebook/cache/disk/e;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimBy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {p2, v1, v2, v3, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private z()V
    .locals 6
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    .line 2
    invoke-interface {v0}, Lcom/facebook/cache/disk/d;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->EXTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->i:Lcom/facebook/common/statfs/StatFsHelper;

    iget-wide v2, p0, Lcom/facebook/cache/disk/e;->b:J

    iget-object v4, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    .line 4
    invoke-virtual {v4}, Lcom/facebook/cache/disk/e$b;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/common/statfs/StatFsHelper;->l(Lcom/facebook/common/statfs/StatFsHelper$StorageType;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-wide v0, p0, Lcom/facebook/cache/disk/e;->a:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/e;->d:J

    goto :goto_1

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/facebook/cache/disk/e;->b:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/e;->d:J

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v1}, Lcom/facebook/cache/disk/d;->a()V

    .line 3
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v1}, Lcom/facebook/cache/common/CacheEventListener;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 5
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/facebook/cache/disk/e;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearAll: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-interface {v2, v3, v4, v5, v1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v1}, Lcom/facebook/cache/disk/e$b;->e()V

    .line 9
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b()Lcom/facebook/cache/disk/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v0}, Lcom/facebook/cache/disk/d;->b()Lcom/facebook/cache/disk/d$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/facebook/cache/common/c;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-static {p1}, Lcom/facebook/cache/common/d;->b(Lcom/facebook/cache/common/c;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 4
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v1, v5, p1}, Lcom/facebook/cache/disk/d;->e(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move-object v1, v5

    goto :goto_0

    .line 8
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v0

    :catchall_0
    move-exception v3

    move-object v5, v1

    move-object v1, v3

    .line 9
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    .line 10
    :goto_2
    invoke-static {}, Lcom/facebook/cache/disk/k;->g()Lcom/facebook/cache/disk/k;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/facebook/cache/disk/k;->j(Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/k;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/facebook/cache/disk/k;->p(Ljava/lang/String;)Lcom/facebook/cache/disk/k;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/facebook/cache/disk/k;->n(Ljava/io/IOException;)Lcom/facebook/cache/disk/k;

    move-result-object p1

    .line 11
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v1, p1}, Lcom/facebook/cache/common/CacheEventListener;->d(Lcom/facebook/cache/common/b;)V

    .line 12
    invoke-virtual {p1}, Lcom/facebook/cache/disk/k;->h()V

    return v0
.end method

.method public d(Lcom/facebook/cache/common/c;)Lk0/a;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/cache/disk/k;->g()Lcom/facebook/cache/disk/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/k;->j(Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/k;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {p1}, Lcom/facebook/cache/common/d;->b(Lcom/facebook/cache/common/c;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v5

    .line 4
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 5
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v5}, Lcom/facebook/cache/disk/k;->p(Ljava/lang/String;)Lcom/facebook/cache/disk/k;

    .line 7
    iget-object v6, p0, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v6, v5, p1}, Lcom/facebook/cache/disk/d;->i(Ljava/lang/String;Ljava/lang/Object;)Lk0/a;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 8
    iget-object p1, p0, Lcom/facebook/cache/disk/e;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {p1, v0}, Lcom/facebook/cache/common/CacheEventListener;->b(Lcom/facebook/cache/common/b;)V

    .line 9
    iget-object p1, p0, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_2
    invoke-static {v5}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/facebook/cache/disk/e;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {p1, v0}, Lcom/facebook/cache/common/CacheEventListener;->h(Lcom/facebook/cache/common/b;)V

    .line 12
    iget-object p1, p0, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-virtual {v0}, Lcom/facebook/cache/disk/k;->h()V

    return-object v6

    :catchall_0
    move-exception p1

    .line 15
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 16
    :try_start_4
    iget-object v2, p0, Lcom/facebook/cache/disk/e;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v4, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    const-string v5, "getResource"

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/k;->n(Ljava/io/IOException;)Lcom/facebook/cache/disk/k;

    .line 18
    iget-object p1, p0, Lcom/facebook/cache/disk/e;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {p1, v0}, Lcom/facebook/cache/common/CacheEventListener;->d(Lcom/facebook/cache/common/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19
    invoke-virtual {v0}, Lcom/facebook/cache/disk/k;->h()V

    return-object v1

    :goto_3
    invoke-virtual {v0}, Lcom/facebook/cache/disk/k;->h()V

    .line 20
    throw p1
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/cache/disk/e;->a()V

    return-void
.end method

.method public f(J)J
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheExpirationMs"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v0, v1, Lcom/facebook/cache/disk/e;->o:Ls0/a;

    invoke-interface {v0}, Ls0/a;->now()J

    move-result-wide v5

    .line 3
    iget-object v0, v1, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v0}, Lcom/facebook/cache/disk/d;->j()Ljava/util/Collection;

    move-result-object v0

    .line 4
    iget-object v7, v1, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v7}, Lcom/facebook/cache/disk/e$b;->b()J

    move-result-wide v7

    const/4 v9, 0x0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/cache/disk/d$c;

    const-wide/16 v3, 0x1

    .line 6
    invoke-interface {v14}, Lcom/facebook/cache/disk/d$c;->b()J

    move-result-wide v16

    sub-long v16, v5, v16

    move-wide/from16 v18, v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-ltz v5, :cond_0

    .line 7
    iget-object v3, v1, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v3, v14}, Lcom/facebook/cache/disk/d;->f(Lcom/facebook/cache/disk/d$c;)J

    move-result-wide v3

    .line 8
    iget-object v5, v1, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {v14}, Lcom/facebook/cache/disk/d$c;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x0

    cmp-long v15, v3, v5

    if-lez v15, :cond_1

    add-int/lit8 v9, v9, 0x1

    add-long/2addr v10, v3

    .line 9
    invoke-static {}, Lcom/facebook/cache/disk/k;->g()Lcom/facebook/cache/disk/k;

    move-result-object v15

    .line 10
    invoke-interface {v14}, Lcom/facebook/cache/disk/d$c;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/facebook/cache/disk/k;->p(Ljava/lang/String;)Lcom/facebook/cache/disk/k;

    move-result-object v14

    sget-object v15, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->CONTENT_STALE:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 11
    invoke-virtual {v14, v15}, Lcom/facebook/cache/disk/k;->m(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/k;

    move-result-object v14

    .line 12
    invoke-virtual {v14, v3, v4}, Lcom/facebook/cache/disk/k;->o(J)Lcom/facebook/cache/disk/k;

    move-result-object v3

    sub-long v14, v7, v10

    .line 13
    invoke-virtual {v3, v14, v15}, Lcom/facebook/cache/disk/k;->l(J)Lcom/facebook/cache/disk/k;

    move-result-object v3

    .line 14
    iget-object v4, v1, Lcom/facebook/cache/disk/e;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v4, v3}, Lcom/facebook/cache/common/CacheEventListener;->f(Lcom/facebook/cache/common/b;)V

    .line 15
    invoke-virtual {v3}, Lcom/facebook/cache/disk/k;->h()V

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    .line 16
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    :cond_1
    :goto_1
    move-wide/from16 v5, v18

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, v1, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v0}, Lcom/facebook/cache/disk/d;->d()V

    if-lez v9, :cond_3

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/facebook/cache/disk/e;->v()Z

    .line 19
    iget-object v0, v1, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    neg-long v3, v10

    neg-int v5, v9

    int-to-long v5, v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/facebook/cache/disk/e$b;->c(JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-wide v3, v12

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const-wide/16 v5, 0x0

    move-wide v3, v5

    .line 20
    :goto_2
    :try_start_2
    iget-object v5, v1, Lcom/facebook/cache/disk/e;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v6, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v7, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clearOldEntries: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-interface {v5, v6, v7, v8, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v12, v3

    .line 23
    :cond_3
    :goto_3
    monitor-exit v2

    return-wide v12

    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public g(Lcom/facebook/cache/common/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/cache/common/d;->b(Lcom/facebook/cache/common/c;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCount()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/e$b;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/e$b;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/e;->v()Z

    .line 3
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v1}, Lcom/facebook/cache/disk/e$b;->b()J

    move-result-wide v1

    .line 4
    iget-wide v3, p0, Lcom/facebook/cache/disk/e;->h:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    cmp-long v7, v1, v5

    if-lez v7, :cond_2

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    long-to-double v3, v3

    long-to-double v1, v1

    div-double/2addr v3, v1

    sub-double/2addr v5, v3

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v3, v5, v1

    if-lez v3, :cond_1

    .line 5
    invoke-direct {p0, v5, v6}, Lcom/facebook/cache/disk/e;->y(D)V

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    .line 7
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i(Lcom/facebook/cache/common/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/cache/common/d;->b(Lcom/facebook/cache/common/c;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v3, v2}, Lcom/facebook/cache/disk/d;->c(Ljava/lang/String;)J

    .line 6
    iget-object v3, p0, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->l:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->DELETE_FILE:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v3, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface {v1, v2, v3, v4, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v0}, Lcom/facebook/cache/disk/d;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public j(Lcom/facebook/cache/common/c;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/e;->g(Lcom/facebook/cache/common/c;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_1
    invoke-static {p1}, Lcom/facebook/cache/common/d;->b(Lcom/facebook/cache/common/c;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 5
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 6
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    iget-object v6, p0, Lcom/facebook/cache/disk/e;->j:Lcom/facebook/cache/disk/d;

    invoke-interface {v6, v5, p1}, Lcom/facebook/cache/disk/d;->h(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    iget-object p1, p0, Lcom/facebook/cache/disk/e;->f:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    monitor-exit v0

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0

    return v1

    .line 11
    :catch_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public k(Lcom/facebook/cache/common/c;Lcom/facebook/cache/common/k;)Lk0/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/cache/disk/k;->g()Lcom/facebook/cache/disk/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/k;->j(Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/k;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {v1, v0}, Lcom/facebook/cache/common/CacheEventListener;->e(Lcom/facebook/cache/common/b;)V

    .line 3
    iget-object v1, p0, Lcom/facebook/cache/disk/e;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/facebook/cache/common/d;->a(Lcom/facebook/cache/common/c;)Ljava/lang/String;

    move-result-object v2

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    invoke-virtual {v0, v2}, Lcom/facebook/cache/disk/k;->p(Ljava/lang/String;)Lcom/facebook/cache/disk/k;

    .line 7
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/facebook/cache/disk/e;->x(Ljava/lang/String;Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/d$d;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    invoke-interface {v1, p2, p1}, Lcom/facebook/cache/disk/d$d;->d(Lcom/facebook/cache/common/k;Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0, v1, p1, v2}, Lcom/facebook/cache/disk/e;->q(Lcom/facebook/cache/disk/d$d;Lcom/facebook/cache/common/c;Ljava/lang/String;)Lk0/a;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Lk0/a;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/cache/disk/k;->o(J)Lcom/facebook/cache/disk/k;

    move-result-object p2

    iget-object v2, p0, Lcom/facebook/cache/disk/e;->n:Lcom/facebook/cache/disk/e$b;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/e$b;->b()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/facebook/cache/disk/k;->l(J)Lcom/facebook/cache/disk/k;

    .line 11
    iget-object p2, p0, Lcom/facebook/cache/disk/e;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {p2, v0}, Lcom/facebook/cache/common/CacheEventListener;->c(Lcom/facebook/cache/common/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    invoke-interface {v1}, Lcom/facebook/cache/disk/d$d;->c()Z

    move-result p2

    if-nez p2, :cond_0

    .line 13
    sget-object p2, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    const-string v1, "Failed to delete temp file"

    invoke-static {p2, v1}, Lp0/a;->q(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/cache/disk/k;->h()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    :try_start_4
    invoke-interface {v1}, Lcom/facebook/cache/disk/d$d;->c()Z

    move-result p2

    if-nez p2, :cond_1

    .line 16
    sget-object p2, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    const-string v1, "Failed to delete temp file"

    invoke-static {p2, v1}, Lp0/a;->q(Ljava/lang/Class;Ljava/lang/String;)V

    .line 17
    :cond_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_5
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/k;->n(Ljava/io/IOException;)Lcom/facebook/cache/disk/k;

    .line 19
    iget-object p2, p0, Lcom/facebook/cache/disk/e;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-interface {p2, v0}, Lcom/facebook/cache/common/CacheEventListener;->g(Lcom/facebook/cache/common/b;)V

    .line 20
    sget-object p2, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    const-string v1, "Failed inserting a file into the cache"

    invoke-static {p2, v1, p1}, Lp0/a;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 22
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/cache/disk/k;->h()V

    .line 23
    throw p1

    :catchall_2
    move-exception p1

    .line 24
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method protected p()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/e;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/facebook/cache/disk/e;->r:Ljava/lang/Class;

    const-string v1, "Memory Index is not ready yet. "

    invoke-static {v0, v1}, Lp0/a;->q(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/cache/disk/e;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/cache/disk/e;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
