.class public Lcom/facebook/imagepipeline/core/l;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"


# annotations
.annotation build Ls7/c;
.end annotation


# static fields
.field private static final t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static u:Lcom/facebook/imagepipeline/core/l;

.field private static v:Z

.field private static w:Lcom/facebook/imagepipeline/core/h;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/d1;

.field private final b:Lcom/facebook/imagepipeline/core/j;

.field private final c:Lcom/facebook/imagepipeline/core/a;

.field private d:Lcom/facebook/imagepipeline/cache/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/cache/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/r<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Lcom/facebook/imagepipeline/cache/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/imagepipeline/cache/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/r<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private h:Lcom/facebook/imagepipeline/cache/f;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private i:Lcom/facebook/cache/disk/i;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private j:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:Lcom/facebook/imagepipeline/core/h;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private l:Ls1/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private m:Lcom/facebook/imagepipeline/core/q;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private n:Lcom/facebook/imagepipeline/core/r;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private o:Lcom/facebook/imagepipeline/cache/f;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private p:Lcom/facebook/cache/disk/i;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private q:Lcom/facebook/imagepipeline/bitmaps/f;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private r:Lcom/facebook/imagepipeline/platform/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private s:Lcom/facebook/imagepipeline/animated/factory/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/imagepipeline/core/l;

    sput-object v0, Lcom/facebook/imagepipeline/core/l;->t:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipelineConfig()"

    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/core/j;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 5
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/facebook/imagepipeline/producers/v;

    .line 6
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/j;->H()Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/v;-><init>(Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/producers/e1;

    .line 7
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/j;->H()Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/e1;-><init>(Ljava/util/concurrent/Executor;)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->a:Lcom/facebook/imagepipeline/producers/d1;

    .line 8
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k;->b()I

    move-result v0

    .line 9
    invoke-static {v0}, Lcom/facebook/common/references/a;->J(I)V

    .line 10
    new-instance v0, Lcom/facebook/imagepipeline/core/a;

    .line 11
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/j;->y()Lm1/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/core/a;-><init>(Lm1/a;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->c:Lcom/facebook/imagepipeline/core/a;

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-void
.end method

.method public static declared-synchronized A()V
    .locals 3

    const-class v0, Lcom/facebook/imagepipeline/core/l;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/l;->u:Lcom/facebook/imagepipeline/core/l;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/l;->e()Lcom/facebook/imagepipeline/cache/r;

    move-result-object v1

    invoke-static {}, Lcom/facebook/common/internal/a;->b()Lcom/facebook/common/internal/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/cache/r;->k(Lcom/facebook/common/internal/k;)I

    .line 3
    sget-object v1, Lcom/facebook/imagepipeline/core/l;->u:Lcom/facebook/imagepipeline/core/l;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/l;->h()Lcom/facebook/imagepipeline/cache/r;

    move-result-object v1

    invoke-static {}, Lcom/facebook/common/internal/a;->b()Lcom/facebook/common/internal/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/cache/r;->k(Lcom/facebook/common/internal/k;)I

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcom/facebook/imagepipeline/core/l;->u:Lcom/facebook/imagepipeline/core/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a()Lcom/facebook/imagepipeline/core/h;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v16, Lcom/facebook/imagepipeline/core/h;

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->r()Lcom/facebook/imagepipeline/core/r;

    move-result-object v2

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->h()Ljava/util/Set;

    move-result-object v3

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 4
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->a()Ljava/util/Set;

    move-result-object v4

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->c()Lcom/facebook/common/internal/m;

    move-result-object v5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->e()Lcom/facebook/imagepipeline/cache/r;

    move-result-object v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->h()Lcom/facebook/imagepipeline/cache/r;

    move-result-object v7

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->m()Lcom/facebook/imagepipeline/cache/f;

    move-result-object v8

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->s()Lcom/facebook/imagepipeline/cache/f;

    move-result-object v9

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 10
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->A()Lcom/facebook/imagepipeline/cache/g;

    move-result-object v10

    iget-object v11, v0, Lcom/facebook/imagepipeline/core/l;->a:Lcom/facebook/imagepipeline/producers/d1;

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 11
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->i()Lcom/facebook/common/internal/m;

    move-result-object v12

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 12
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->w()Lcom/facebook/common/internal/m;

    move-result-object v13

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 13
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->F()Ll0/a;

    move-result-object v14

    iget-object v15, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/facebook/imagepipeline/core/h;-><init>(Lcom/facebook/imagepipeline/core/r;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/common/internal/m;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/d1;Lcom/facebook/common/internal/m;Lcom/facebook/common/internal/m;Ll0/a;Lcom/facebook/imagepipeline/core/j;)V

    return-object v16
.end method

.method private c()Lcom/facebook/imagepipeline/animated/factory/a;
    .locals 5
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->s:Lcom/facebook/imagepipeline/animated/factory/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/l;->o()Lcom/facebook/imagepipeline/bitmaps/f;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->H()Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/l;->d()Lcom/facebook/imagepipeline/cache/j;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 5
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/k;->C()Z

    move-result v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 6
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/j;->n()Lcom/facebook/common/executors/g;

    move-result-object v4

    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/animated/factory/b;->a(Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/imagepipeline/core/f;Lcom/facebook/imagepipeline/cache/j;ZLjava/util/concurrent/ExecutorService;)Lcom/facebook/imagepipeline/animated/factory/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->s:Lcom/facebook/imagepipeline/animated/factory/a;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->s:Lcom/facebook/imagepipeline/animated/factory/a;

    return-object v0
.end method

.method private i()Lcom/facebook/imagepipeline/decoder/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/decoder/b;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->t()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->t()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/decoder/b;

    goto :goto_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/l;->c()Lcom/facebook/imagepipeline/animated/factory/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/factory/a;->c()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v1

    .line 6
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/factory/a;->b()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/j;->q()Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v2

    if-nez v2, :cond_2

    .line 8
    new-instance v2, Lcom/facebook/imagepipeline/decoder/a;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/l;->p()Lcom/facebook/imagepipeline/platform/d;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/imagepipeline/decoder/a;-><init>(Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/platform/d;)V

    iput-object v2, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/decoder/b;

    goto :goto_1

    .line 9
    :cond_2
    new-instance v2, Lcom/facebook/imagepipeline/decoder/a;

    .line 10
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/l;->p()Lcom/facebook/imagepipeline/platform/d;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 11
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/j;->q()Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/decoder/c;->a()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/facebook/imagepipeline/decoder/a;-><init>(Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/platform/d;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/decoder/b;

    .line 12
    invoke-static {}, Lcom/facebook/imageformat/d;->e()Lcom/facebook/imageformat/d;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 13
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->q()Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/c;->b()Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/facebook/imageformat/d;->g(Ljava/util/List;)V

    .line 15
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->j:Lcom/facebook/imagepipeline/decoder/b;

    return-object v0
.end method

.method private k()Ls1/d;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->l:Ls1/d;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->p()Ls1/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->o()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 4
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ls1/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 6
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->f()I

    move-result v1

    invoke-direct {v0, v1}, Ls1/h;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->l:Ls1/d;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ls1/f;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 8
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->f()I

    move-result v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 9
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->l()Z

    move-result v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 10
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->p()Ls1/d;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 11
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->o()Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 12
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->t()Z

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ls1/f;-><init>(IZLs1/d;Ljava/lang/Integer;Z)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->l:Ls1/d;

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->l:Ls1/d;

    return-object v0
.end method

.method public static l()Lcom/facebook/imagepipeline/core/l;
    .locals 2

    sget-object v0, Lcom/facebook/imagepipeline/core/l;->u:Lcom/facebook/imagepipeline/core/l;

    const-string v1, "ImagePipelineFactory was not initialized!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/j;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/core/l;

    return-object v0
.end method

.method private q()Lcom/facebook/imagepipeline/core/q;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->m:Lcom/facebook/imagepipeline/core/q;

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->h()Lcom/facebook/imagepipeline/core/k$d;

    move-result-object v2

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 6
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->v()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/e0;->l()Lcom/facebook/common/memory/a;

    move-result-object v4

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->i()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v5

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 8
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->j()Lcom/facebook/imagepipeline/decoder/d;

    move-result-object v6

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 9
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->m()Z

    move-result v7

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 10
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->B()Z

    move-result v8

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 11
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->p()Z

    move-result v9

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 12
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->H()Lcom/facebook/imagepipeline/core/f;

    move-result-object v10

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 13
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->v()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    iget-object v11, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v11}, Lcom/facebook/imagepipeline/core/j;->w()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/facebook/imagepipeline/memory/e0;->i(I)Lcom/facebook/common/memory/g;

    move-result-object v11

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 14
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->v()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/e0;->j()Lcom/facebook/common/memory/j;

    move-result-object v12

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->e()Lcom/facebook/imagepipeline/cache/r;

    move-result-object v13

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->h()Lcom/facebook/imagepipeline/cache/r;

    move-result-object v14

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->m()Lcom/facebook/imagepipeline/cache/f;

    move-result-object v15

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->s()Lcom/facebook/imagepipeline/cache/f;

    move-result-object v16

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 19
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->A()Lcom/facebook/imagepipeline/cache/g;

    move-result-object v17

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->o()Lcom/facebook/imagepipeline/bitmaps/f;

    move-result-object v18

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 21
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->e()I

    move-result v19

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 22
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->d()I

    move-result v20

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 23
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->c()Z

    move-result v21

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 24
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->f()I

    move-result v22

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->f()Lcom/facebook/imagepipeline/core/a;

    move-result-object v23

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 26
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->E()Z

    move-result v24

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 27
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->j()I

    move-result v25

    .line 28
    invoke-interface/range {v2 .. v25}, Lcom/facebook/imagepipeline/core/k$d;->a(Landroid/content/Context;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/core/f;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/bitmaps/f;IIZILcom/facebook/imagepipeline/core/a;ZI)Lcom/facebook/imagepipeline/core/q;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->m:Lcom/facebook/imagepipeline/core/q;

    .line 29
    :cond_0
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->m:Lcom/facebook/imagepipeline/core/q;

    return-object v1
.end method

.method private r()Lcom/facebook/imagepipeline/core/r;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 3
    :goto_0
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->n:Lcom/facebook/imagepipeline/core/r;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/facebook/imagepipeline/core/r;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 5
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/j;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->q()Lcom/facebook/imagepipeline/core/q;

    move-result-object v4

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 7
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/j;->d()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v5

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 8
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/j;->B()Z

    move-result v6

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 9
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/k;->z()Z

    move-result v7

    iget-object v8, v0, Lcom/facebook/imagepipeline/core/l;->a:Lcom/facebook/imagepipeline/producers/d1;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 10
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/j;->m()Z

    move-result v9

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 11
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/k;->y()Z

    move-result v11

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 12
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/j;->r()Z

    move-result v12

    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/l;->k()Ls1/d;

    move-result-object v13

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 14
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/k;->s()Z

    move-result v14

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 15
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/k;->q()Z

    move-result v15

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 16
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/k;->a()Z

    move-result v16

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/facebook/imagepipeline/core/r;-><init>(Landroid/content/ContentResolver;Lcom/facebook/imagepipeline/core/q;Lcom/facebook/imagepipeline/producers/l0;ZZLcom/facebook/imagepipeline/producers/d1;ZZZZLs1/d;ZZZ)V

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/l;->n:Lcom/facebook/imagepipeline/core/r;

    .line 17
    :cond_1
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/l;->n:Lcom/facebook/imagepipeline/core/r;

    return-object v1
.end method

.method private s()Lcom/facebook/imagepipeline/cache/f;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->o:Lcom/facebook/imagepipeline/cache/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/cache/f;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/l;->t()Lcom/facebook/cache/disk/i;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 4
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->v()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/j;->w()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/e0;->i(I)Lcom/facebook/common/memory/g;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->v()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/e0;->j()Lcom/facebook/common/memory/j;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 6
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->H()Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->f()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 7
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->H()Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->b()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 8
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->C()Lcom/facebook/imagepipeline/cache/q;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/f;-><init>(Lcom/facebook/cache/disk/i;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/q;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->o:Lcom/facebook/imagepipeline/cache/f;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->o:Lcom/facebook/imagepipeline/cache/f;

    return-object v0
.end method

.method public static declared-synchronized u()Z
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/core/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/l;->u:Lcom/facebook/imagepipeline/core/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized v(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/facebook/imagepipeline/core/l;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImagePipelineFactory#initialize"

    .line 2
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/i;->M(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/i$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i$b;->K()Lcom/facebook/imagepipeline/core/i;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imagepipeline/core/l;->w(Lcom/facebook/imagepipeline/core/j;)V

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized w(Lcom/facebook/imagepipeline/core/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imagePipelineConfig"
        }
    .end annotation

    const-class v0, Lcom/facebook/imagepipeline/core/l;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/l;->u:Lcom/facebook/imagepipeline/core/l;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/facebook/imagepipeline/core/l;->t:Ljava/lang/Class;

    const-string v2, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior."

    invoke-static {v1, v2}, Lp0/a;->k0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/core/l;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/l;-><init>(Lcom/facebook/imagepipeline/core/j;)V

    sput-object v1, Lcom/facebook/imagepipeline/core/l;->u:Lcom/facebook/imagepipeline/core/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized x(Lcom/facebook/imagepipeline/core/j;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imagePipelineConfig",
            "forceSinglePipelineInstance"
        }
    .end annotation

    const-class v0, Lcom/facebook/imagepipeline/core/l;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/l;->u:Lcom/facebook/imagepipeline/core/l;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/facebook/imagepipeline/core/l;->t:Ljava/lang/Class;

    const-string v2, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior."

    invoke-static {v1, v2}, Lp0/a;->k0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3
    :cond_0
    sput-boolean p1, Lcom/facebook/imagepipeline/core/l;->v:Z

    .line 4
    new-instance p1, Lcom/facebook/imagepipeline/core/l;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/core/l;-><init>(Lcom/facebook/imagepipeline/core/j;)V

    sput-object p1, Lcom/facebook/imagepipeline/core/l;->u:Lcom/facebook/imagepipeline/core/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static z(Lcom/facebook/imagepipeline/core/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newInstance"
        }
    .end annotation

    sput-object p0, Lcom/facebook/imagepipeline/core/l;->u:Lcom/facebook/imagepipeline/core/l;

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)Ln1/a;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/l;->c()Lcom/facebook/imagepipeline/animated/factory/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/factory/a;->a(Landroid/content/Context;)Ln1/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public d()Lcom/facebook/imagepipeline/cache/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->d:Lcom/facebook/imagepipeline/cache/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->z()Lcom/facebook/imagepipeline/cache/b;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 4
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->s()Lcom/facebook/common/internal/m;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 5
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->E()Lcom/facebook/common/memory/c;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 6
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->i()Lcom/facebook/imagepipeline/cache/u$a;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k;->F()Z

    move-result v5

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 8
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k;->D()Z

    move-result v6

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 9
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->l()Lcom/facebook/imagepipeline/cache/j$b;

    move-result-object v7

    .line 10
    invoke-interface/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/b;->a(Lcom/facebook/common/internal/m;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/cache/u$a;ZZLcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/imagepipeline/cache/j;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->d:Lcom/facebook/imagepipeline/cache/j;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->d:Lcom/facebook/imagepipeline/cache/j;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/cache/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/r<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->e:Lcom/facebook/imagepipeline/cache/r;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/l;->d()Lcom/facebook/imagepipeline/cache/j;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 4
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->C()Lcom/facebook/imagepipeline/cache/q;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/s;->a(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/q;)Lcom/facebook/imagepipeline/cache/r;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->e:Lcom/facebook/imagepipeline/cache/r;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->e:Lcom/facebook/imagepipeline/cache/r;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/core/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->c:Lcom/facebook/imagepipeline/core/a;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/cache/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->f:Lcom/facebook/imagepipeline/cache/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->u()Lcom/facebook/common/internal/m;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->E()Lcom/facebook/common/memory/c;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/o;->a(Lcom/facebook/common/internal/m;Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/cache/j;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->f:Lcom/facebook/imagepipeline/cache/j;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->f:Lcom/facebook/imagepipeline/cache/j;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/cache/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/r<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->g:Lcom/facebook/imagepipeline/cache/r;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->e()Lcom/facebook/imagepipeline/cache/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 4
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->e()Lcom/facebook/imagepipeline/cache/u;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/l;->g()Lcom/facebook/imagepipeline/cache/j;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 7
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->C()Lcom/facebook/imagepipeline/cache/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/p;->a(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/q;)Lcom/facebook/imagepipeline/cache/r;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->g:Lcom/facebook/imagepipeline/cache/r;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->g:Lcom/facebook/imagepipeline/cache/r;

    return-object v0
.end method

.method public j()Lcom/facebook/imagepipeline/core/h;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/facebook/imagepipeline/core/l;->v:Z

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/facebook/imagepipeline/core/l;->w:Lcom/facebook/imagepipeline/core/h;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/l;->a()Lcom/facebook/imagepipeline/core/h;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/core/l;->w:Lcom/facebook/imagepipeline/core/h;

    .line 4
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->k:Lcom/facebook/imagepipeline/core/h;

    .line 5
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/core/l;->w:Lcom/facebook/imagepipeline/core/h;

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->k:Lcom/facebook/imagepipeline/core/h;

    if-nez v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/l;->a()Lcom/facebook/imagepipeline/core/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->k:Lcom/facebook/imagepipeline/core/h;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->k:Lcom/facebook/imagepipeline/core/h;

    return-object v0
.end method

.method public m()Lcom/facebook/imagepipeline/cache/f;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->h:Lcom/facebook/imagepipeline/cache/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/cache/f;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/l;->n()Lcom/facebook/cache/disk/i;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 4
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->v()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/j;->w()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/e0;->i(I)Lcom/facebook/common/memory/g;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->v()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/e0;->j()Lcom/facebook/common/memory/j;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 6
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->H()Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->f()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 7
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->H()Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->b()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 8
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->C()Lcom/facebook/imagepipeline/cache/q;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/f;-><init>(Lcom/facebook/cache/disk/i;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/q;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->h:Lcom/facebook/imagepipeline/cache/f;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->h:Lcom/facebook/imagepipeline/cache/f;

    return-object v0
.end method

.method public n()Lcom/facebook/cache/disk/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->i:Lcom/facebook/cache/disk/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->f()Lcom/facebook/cache/disk/c;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->x()Lcom/facebook/imagepipeline/core/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/core/g;->a(Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->i:Lcom/facebook/cache/disk/i;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->i:Lcom/facebook/cache/disk/i;

    return-object v0
.end method

.method public o()Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->q:Lcom/facebook/imagepipeline/bitmaps/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->v()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/l;->p()Lcom/facebook/imagepipeline/platform/d;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/l;->f()Lcom/facebook/imagepipeline/core/a;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/bitmaps/g;->a(Lcom/facebook/imagepipeline/memory/e0;Lcom/facebook/imagepipeline/platform/d;Lcom/facebook/imagepipeline/core/a;)Lcom/facebook/imagepipeline/bitmaps/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->q:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->q:Lcom/facebook/imagepipeline/bitmaps/f;

    return-object v0
.end method

.method public p()Lcom/facebook/imagepipeline/platform/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->r:Lcom/facebook/imagepipeline/platform/d;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->v()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->G()Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->v()Z

    move-result v1

    .line 4
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/platform/e;->a(Lcom/facebook/imagepipeline/memory/e0;Z)Lcom/facebook/imagepipeline/platform/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->r:Lcom/facebook/imagepipeline/platform/d;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->r:Lcom/facebook/imagepipeline/platform/d;

    return-object v0
.end method

.method public t()Lcom/facebook/cache/disk/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->p:Lcom/facebook/cache/disk/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/j;->k()Lcom/facebook/cache/disk/c;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->b:Lcom/facebook/imagepipeline/core/j;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/j;->x()Lcom/facebook/imagepipeline/core/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/core/g;->a(Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/l;->p:Lcom/facebook/cache/disk/i;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/l;->p:Lcom/facebook/cache/disk/i;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 3
    .annotation runtime Lr7/h;
    .end annotation

    const-string v0, "ImagePipelineFactory"

    .line 1
    invoke-static {v0}, Lcom/facebook/common/internal/i;->f(Ljava/lang/String;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->d:Lcom/facebook/imagepipeline/cache/j;

    .line 2
    invoke-interface {v1}, Lcom/facebook/cache/common/f;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bitmapCountingMemoryCache"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/l;->f:Lcom/facebook/imagepipeline/cache/j;

    .line 3
    invoke-interface {v1}, Lcom/facebook/cache/common/f;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "encodedCountingMemoryCache"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
