.class public Lcom/facebook/imagepipeline/core/h;
.super Ljava/lang/Object;
.source "ImagePipeline.java"


# annotations
.annotation build Ls7/d;
.end annotation


# static fields
.field private static final p:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/core/r;

.field private final b:Lq1/f;

.field private final c:Lq1/e;

.field private final d:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/cache/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/cache/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/imagepipeline/cache/f;

.field private final h:Lcom/facebook/imagepipeline/cache/f;

.field private final i:Lcom/facebook/imagepipeline/cache/g;

.field private final j:Lcom/facebook/imagepipeline/producers/d1;

.field private final k:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/atomic/AtomicLong;

.field private final m:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ll0/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final o:Lcom/facebook/imagepipeline/core/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/h;->p:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/r;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/common/internal/m;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/d1;Lcom/facebook/common/internal/m;Lcom/facebook/common/internal/m;Ll0/a;Lcom/facebook/imagepipeline/core/j;)V
    .locals 1
    .param p13    # Ll0/a;
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "producerSequenceFactory",
            "requestListeners",
            "requestListener2s",
            "isPrefetchEnabledSupplier",
            "bitmapMemoryCache",
            "encodedMemoryCache",
            "mainBufferedDiskCache",
            "smallImageBufferedDiskCache",
            "cacheKeyFactory",
            "threadHandoffProducerQueue",
            "suppressBitmapPrefetchingSupplier",
            "lazyDataSource",
            "callerContextVerifier",
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/core/r;",
            "Ljava/util/Set<",
            "Lq1/f;",
            ">;",
            "Ljava/util/Set<",
            "Lq1/e;",
            ">;",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/g;",
            "Lcom/facebook/imagepipeline/producers/d1;",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ll0/a;",
            "Lcom/facebook/imagepipeline/core/j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/h;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/r;

    .line 4
    new-instance p1, Lq1/d;

    invoke-direct {p1, p2}, Lq1/d;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h;->b:Lq1/f;

    .line 5
    new-instance p1, Lq1/c;

    invoke-direct {p1, p3}, Lq1/c;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h;->c:Lq1/e;

    .line 6
    iput-object p4, p0, Lcom/facebook/imagepipeline/core/h;->d:Lcom/facebook/common/internal/m;

    .line 7
    iput-object p5, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/u;

    .line 8
    iput-object p6, p0, Lcom/facebook/imagepipeline/core/h;->f:Lcom/facebook/imagepipeline/cache/u;

    .line 9
    iput-object p7, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/f;

    .line 10
    iput-object p8, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/f;

    .line 11
    iput-object p9, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/g;

    .line 12
    iput-object p10, p0, Lcom/facebook/imagepipeline/core/h;->j:Lcom/facebook/imagepipeline/producers/d1;

    .line 13
    iput-object p11, p0, Lcom/facebook/imagepipeline/core/h;->k:Lcom/facebook/common/internal/m;

    .line 14
    iput-object p12, p0, Lcom/facebook/imagepipeline/core/h;->m:Lcom/facebook/common/internal/m;

    .line 15
    iput-object p13, p0, Lcom/facebook/imagepipeline/core/h;->n:Ll0/a;

    .line 16
    iput-object p14, p0, Lcom/facebook/imagepipeline/core/h;->o:Lcom/facebook/imagepipeline/core/j;

    return-void
.end method

.method private R(Landroid/net/Uri;)Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/core/h$h;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/h$h;-><init>(Lcom/facebook/imagepipeline/core/h;Landroid/net/Uri;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/core/h;)Lcom/facebook/imagepipeline/cache/f;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/f;

    return-object p0
.end method

.method private e0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lq1/f;Ljava/lang/String;)Lcom/facebook/datasource/d;
    .locals 14
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p5    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
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
            "producerSequence",
            "imageRequest",
            "lowestPermittedRequestLevelOnSubmit",
            "callerContext",
            "requestListener",
            "uiComponentId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lq1/f;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation

    move-object v1, p0

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#submitFetchRequest"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/producers/z;

    move-object/from16 v3, p2

    move-object/from16 v2, p5

    .line 4
    invoke-virtual {p0, v3, v2}, Lcom/facebook/imagepipeline/core/h;->C(Lcom/facebook/imagepipeline/request/ImageRequest;Lq1/f;)Lq1/f;

    move-result-object v2

    iget-object v4, v1, Lcom/facebook/imagepipeline/core/h;->c:Lq1/e;

    invoke-direct {v0, v2, v4}, Lcom/facebook/imagepipeline/producers/z;-><init>(Lq1/f;Lq1/e;)V

    .line 5
    iget-object v2, v1, Lcom/facebook/imagepipeline/core/h;->n:Ll0/a;

    const/4 v4, 0x0

    move-object/from16 v7, p4

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, v7, v4}, Ll0/a;->a(Ljava/lang/Object;Z)V

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v2

    move-object/from16 v5, p3

    .line 8
    invoke-static {v2, v5}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v8

    .line 9
    new-instance v13, Lcom/facebook/imagepipeline/producers/z0;

    .line 10
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/h;->q()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->q()Z

    move-result v2

    if-nez v2, :cond_3

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/util/f;->n(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    const/4 v10, 0x1

    .line 13
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v11

    iget-object v12, v1, Lcom/facebook/imagepipeline/core/h;->o:Lcom/facebook/imagepipeline/core/j;

    move-object v2, v13

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p6

    move-object v6, v0

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v12}, Lcom/facebook/imagepipeline/producers/z0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/u0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/j;)V

    move-object v2, p1

    .line 14
    invoke-static {p1, v13, v0}, Lcom/facebook/imagepipeline/datasource/e;->J(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/e;)Lcom/facebook/datasource/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    :try_start_1
    invoke-static {v0}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_5
    return-object v0

    .line 20
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 21
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 22
    :cond_6
    throw v0
.end method

.method private f0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lq1/f;)Lcom/facebook/datasource/d;
    .locals 13
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p6    # Lq1/f;
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
            "producerSequence",
            "imageRequest",
            "lowestPermittedRequestLevelOnSubmit",
            "callerContext",
            "priority",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lq1/f;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/producers/z;

    move-object v3, p2

    move-object/from16 v2, p6

    .line 2
    invoke-virtual {p0, p2, v2}, Lcom/facebook/imagepipeline/core/h;->C(Lcom/facebook/imagepipeline/request/ImageRequest;Lq1/f;)Lq1/f;

    move-result-object v2

    iget-object v4, v1, Lcom/facebook/imagepipeline/core/h;->c:Lq1/e;

    invoke-direct {v0, v2, v4}, Lcom/facebook/imagepipeline/producers/z;-><init>(Lq1/f;Lq1/e;)V

    .line 3
    iget-object v2, v1, Lcom/facebook/imagepipeline/core/h;->n:Ll0/a;

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    move-object/from16 v6, p4

    .line 4
    invoke-interface {v2, v6, v4}, Ll0/a;->a(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v6, p4

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v2

    move-object/from16 v4, p3

    .line 6
    invoke-static {v2, v4}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v7

    .line 7
    new-instance v12, Lcom/facebook/imagepipeline/producers/z0;

    .line 8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/h;->q()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v11, v1, Lcom/facebook/imagepipeline/core/h;->o:Lcom/facebook/imagepipeline/core/j;

    move-object v2, v12

    move-object v3, p2

    move-object v5, v0

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Lcom/facebook/imagepipeline/producers/z0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/u0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/j;)V

    move-object v2, p1

    .line 9
    invoke-static {p1, v12, v0}, Lcom/facebook/imagepipeline/datasource/g;->I(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/e;)Lcom/facebook/datasource/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/common/internal/m;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/core/h$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/core/h$d;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)V

    return-object v0
.end method

.method public B()Lcom/facebook/imagepipeline/core/r;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/r;

    return-object v0
.end method

.method public C(Lcom/facebook/imagepipeline/request/ImageRequest;Lq1/f;)Lq1/f;
    .locals 6
    .param p2    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "requestListener"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lq1/f;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h;->b:Lq1/f;

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Lq1/d;

    new-array v0, v0, [Lq1/f;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/h;->b:Lq1/f;

    aput-object v3, v0, v2

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lq1/f;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p2, v0}, Lq1/d;-><init>([Lq1/f;)V

    return-object p2

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lq1/f;

    move-result-object v3

    if-nez v3, :cond_2

    .line 5
    new-instance p1, Lq1/d;

    new-array v0, v0, [Lq1/f;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/h;->b:Lq1/f;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Lq1/d;-><init>([Lq1/f;)V

    return-object p1

    .line 6
    :cond_2
    new-instance v3, Lq1/d;

    const/4 v4, 0x3

    new-array v4, v4, [Lq1/f;

    iget-object v5, p0, Lcom/facebook/imagepipeline/core/h;->b:Lq1/f;

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lq1/f;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-direct {v3, v4}, Lq1/d;-><init>([Lq1/f;)V

    return-object v3
.end method

.method public D()J
    .locals 4

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/f;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/f;->s()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/f;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/f;->s()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public E(Lcom/facebook/cache/common/c;)Z
    .locals 1
    .param p1    # Lcom/facebook/cache/common/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/u;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public F(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/h;->R(Landroid/net/Uri;)Lcom/facebook/common/internal/k;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->l(Lcom/facebook/common/internal/k;)Z

    move-result p1

    return p1
.end method

.method public G(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageRequest"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/g;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/g;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {p1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 5
    throw v0
.end method

.method public H(Landroid/net/Uri;)Lcom/facebook/datasource/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h;->I(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public I(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/g;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/g;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/facebook/datasource/j;->y()Lcom/facebook/datasource/j;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/f;

    .line 4
    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/f;->l(Lcom/facebook/cache/common/c;)Lbolts/h;

    move-result-object v1

    new-instance v2, Lcom/facebook/imagepipeline/core/h$g;

    invoke-direct {v2, p0, p1}, Lcom/facebook/imagepipeline/core/h$g;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/cache/common/c;)V

    .line 5
    invoke-virtual {v1, v2}, Lbolts/h;->u(Lbolts/g;)Lbolts/h;

    move-result-object p1

    new-instance v1, Lcom/facebook/imagepipeline/core/h$f;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/core/h$f;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/datasource/j;)V

    .line 6
    invoke-virtual {p1, v1}, Lbolts/h;->q(Lbolts/g;)Lbolts/h;

    return-object v0
.end method

.method public J(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/h;->K(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/h;->K(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z

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

.method public K(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "uri",
            "cacheChoice"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->A(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h;->L(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result p1

    return p1
.end method

.method public L(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageRequest"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/g;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/g;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object p1

    .line 3
    sget-object v1, Lcom/facebook/imagepipeline/core/h$i;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/f;

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/cache/f;->o(Lcom/facebook/cache/common/c;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/f;

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/cache/f;->o(Lcom/facebook/cache/common/c;)Z

    move-result p1

    return p1
.end method

.method public M(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/h;->R(Landroid/net/Uri;)Lcom/facebook/common/internal/k;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->f:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->l(Lcom/facebook/common/internal/k;)Z

    move-result p1

    return p1
.end method

.method public N(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageRequest"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/g;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/g;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->f:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {p1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 5
    throw v0
.end method

.method public O()Lcom/facebook/common/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->m:Lcom/facebook/common/internal/m;

    return-object v0
.end method

.method public P()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->j:Lcom/facebook/imagepipeline/producers/d1;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/d1;->e()Z

    move-result v0

    return v0
.end method

.method public Q()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->j:Lcom/facebook/imagepipeline/producers/d1;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/d1;->a()V

    return-void
.end method

.method public S(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->T(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lq1/f;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public T(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lq1/f;)Lcom/facebook/datasource/d;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lq1/f;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#prefetchToBitmapCache"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->d:Lcom/facebook/common/internal/m;

    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    sget-object p1, Lcom/facebook/imagepipeline/core/h;->p:Ljava/util/concurrent/CancellationException;

    invoke-static {p1}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

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
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->E()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->k:Lcom/facebook/common/internal/m;

    .line 9
    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/r;

    .line 11
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/r;->l(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/r;

    .line 12
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/r;->h(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 13
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    sget-object v6, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/h;->f0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lq1/f;)Lcom/facebook/datasource/d;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_6
    return-object p1

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    invoke-static {p1}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 18
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_7
    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 20
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 21
    :cond_8
    throw p1
.end method

.method public U(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->V(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public V(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "priority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/core/h;->W(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lq1/f;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public W(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lq1/f;)Lcom/facebook/datasource/d;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "priority",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lq1/f;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->d:Lcom/facebook/common/internal/m;

    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/facebook/imagepipeline/core/h;->p:Ljava/util/concurrent/CancellationException;

    invoke-static {p1}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/r;

    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/r;->l(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    move-result-object v2

    .line 5
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/h;->f0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lq1/f;)Lcom/facebook/datasource/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public X(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lq1/f;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lq1/f;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/core/h;->W(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lq1/f;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public Y(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->Z(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public Z(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "priority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/core/h;->a0(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lq1/f;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public a0(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lq1/f;)Lcom/facebook/datasource/d;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "priority",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lq1/f;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#prefetchToEncodedCache"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->d:Lcom/facebook/common/internal/m;

    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    sget-object p1, Lcom/facebook/imagepipeline/core/h;->p:Ljava/util/concurrent/CancellationException;

    invoke-static {p1}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

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
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/r;

    .line 8
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/r;->l(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    move-result-object v2

    .line 9
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/h;->f0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lq1/f;)Lcom/facebook/datasource/d;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    .line 12
    :try_start_2
    invoke-static {p1}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 17
    :cond_5
    throw p1
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/h;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/h;->c()V

    return-void
.end method

.method public b0(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lq1/f;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lq1/f;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/core/h;->a0(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lq1/f;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/f;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/f;->k()Lbolts/h;

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/f;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/f;->k()Lbolts/h;

    return-void
.end method

.method public c0()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->j:Lcom/facebook/imagepipeline/producers/d1;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/d1;->d()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/h$e;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/core/h$e;-><init>(Lcom/facebook/imagepipeline/core/h;)V

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/u;->k(Lcom/facebook/common/internal/k;)I

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/h;->f:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/u;->k(Lcom/facebook/common/internal/k;)I

    return-void
.end method

.method public d0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/f;)Lcom/facebook/datasource/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "producerSequence",
            "settableProducerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/z0;",
            "Lq1/f;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#submitFetchRequest"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/producers/z;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/h;->c:Lq1/e;

    invoke-direct {v0, p3, v1}, Lcom/facebook/imagepipeline/producers/z;-><init>(Lq1/f;Lq1/e;)V

    .line 4
    invoke-static {p1, p2, v0}, Lcom/facebook/imagepipeline/datasource/e;->J(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/e;)Lcom/facebook/datasource/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-static {p1}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-object p1

    .line 10
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 12
    :cond_3
    throw p1
.end method

.method public e(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h;->h(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h;->f(Landroid/net/Uri;)V

    return-void
.end method

.method public f(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/h;->g(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    return-void
.end method

.method public g(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageRequest"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/g;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/g;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->g:Lcom/facebook/imagepipeline/cache/f;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/f;->w(Lcom/facebook/cache/common/c;)Lbolts/h;

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->h:Lcom/facebook/imagepipeline/cache/f;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/f;->w(Lcom/facebook/cache/common/c;)Lbolts/h;

    return-void
.end method

.method public h(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/h;->R(Landroid/net/Uri;)Lcom/facebook/common/internal/k;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->k(Lcom/facebook/common/internal/k;)I

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->f:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->k(Lcom/facebook/common/internal/k;)I

    return-void
.end method

.method public i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "lowestPermittedRequestLevelOnSubmit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/core/h;->k(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lq1/f;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lq1/f;)Lcom/facebook/datasource/d;
    .locals 6
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "lowestPermittedRequestLevelOnSubmit",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lq1/f;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/core/h;->l(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lq1/f;Ljava/lang/String;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lq1/f;Ljava/lang/String;)Lcom/facebook/datasource/d;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "lowestPermittedRequestLevelOnSubmit",
            "requestListener",
            "uiComponentId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lq1/f;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/r;

    .line 2
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/r;->j(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/h;->e0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lq1/f;Ljava/lang/String;)Lcom/facebook/datasource/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public m(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lq1/f;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lq1/f;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/core/h;->k(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lq1/f;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->o(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lq1/f;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lq1/f;)Lcom/facebook/datasource/d;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lq1/f;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->a:Lcom/facebook/imagepipeline/core/r;

    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/r;->m(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/q0;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Lcom/facebook/imagepipeline/common/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->L(Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    :cond_0
    move-object v3, p1

    .line 6
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/h;->e0(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lq1/f;Ljava/lang/String;)Lcom/facebook/datasource/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/d;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/h;->j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method public q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/facebook/imagepipeline/cache/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/u;

    return-object v0
.end method

.method public s(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "callerContext"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#getCacheKey"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/request/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/g;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/g;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v1

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-object v1
.end method

.method public t()Lcom/facebook/imagepipeline/cache/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->i:Lcom/facebook/imagepipeline/cache/g;

    return-object v0
.end method

.method public u(Lcom/facebook/cache/common/c;)Lcom/facebook/common/references/a;
    .locals 2
    .param p1    # Lcom/facebook/cache/common/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->e:Lcom/facebook/imagepipeline/cache/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/c;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/c;->a()Lcom/facebook/imagepipeline/image/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/image/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->close()V

    return-object v1

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public v(Lq1/f;)Lq1/f;
    .locals 4
    .param p1    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/h;->b:Lq1/f;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lq1/d;

    const/4 v1, 0x2

    new-array v1, v1, [Lq1/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/h;->b:Lq1/f;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lq1/d;-><init>([Lq1/f;)V

    return-object v0
.end method

.method public w()Lcom/facebook/imagepipeline/core/j;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h;->o:Lcom/facebook/imagepipeline/core/j;

    return-object v0
.end method

.method public x(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/common/internal/m;
    .locals 1
    .param p2    # Ljava/lang/Object;
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
            "imageRequest",
            "callerContext",
            "requestLevel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/core/h$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/imagepipeline/core/h$a;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)V

    return-object v0
.end method

.method public y(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lq1/f;)Lcom/facebook/common/internal/m;
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestLevel",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lq1/f;",
            ")",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation

    new-instance v6, Lcom/facebook/imagepipeline/core/h$b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/core/h$b;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lq1/f;)V

    return-object v6
.end method

.method public z(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lq1/f;Ljava/lang/String;)Lcom/facebook/common/internal/m;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "imageRequest",
            "callerContext",
            "requestLevel",
            "requestListener",
            "uiComponentId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lq1/f;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation

    new-instance v7, Lcom/facebook/imagepipeline/core/h$c;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/core/h$c;-><init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lq1/f;Ljava/lang/String;)V

    return-object v7
.end method
