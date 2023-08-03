.class public Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;
.super Ljava/lang/Object;
.source "AnimatedFactoryV2Impl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/factory/a;


# annotations
.annotation build Lcom/facebook/common/internal/e;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ls7/c;
.end annotation


# static fields
.field private static final j:I = 0x3


# instance fields
.field private final a:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final b:Lcom/facebook/imagepipeline/core/f;

.field private final c:Lcom/facebook/imagepipeline/cache/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private e:Lcom/facebook/imagepipeline/animated/factory/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Lcom/facebook/imagepipeline/animated/impl/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private g:Ll1/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private h:Ln1/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private i:Lcom/facebook/common/executors/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/imagepipeline/core/f;Lcom/facebook/imagepipeline/cache/j;ZLcom/facebook/common/executors/g;)V
    .locals 0
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "platformBitmapFactory",
            "executorSupplier",
            "backingCache",
            "downscaleFrameToDrawableDimensions",
            "serialExecutorServiceForFramePreparing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            "Lcom/facebook/imagepipeline/core/f;",
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;Z",
            "Lcom/facebook/common/executors/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b:Lcom/facebook/imagepipeline/core/f;

    .line 4
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->c:Lcom/facebook/imagepipeline/cache/j;

    .line 5
    iput-boolean p4, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d:Z

    .line 6
    iput-object p5, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->i:Lcom/facebook/common/executors/g;

    return-void
.end method

.method static synthetic d(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lcom/facebook/imagepipeline/animated/factory/d;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->k()Lcom/facebook/imagepipeline/animated/factory/d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Ll1/a;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->j()Ll1/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d:Z

    return p0
.end method

.method private g()Lcom/facebook/imagepipeline/animated/factory/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$f;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$f;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/animated/factory/e;

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Lcom/facebook/imagepipeline/bitmaps/f;

    invoke-direct {v1, v0, v2}, Lcom/facebook/imagepipeline/animated/factory/e;-><init>(Lcom/facebook/imagepipeline/animated/impl/b;Lcom/facebook/imagepipeline/bitmaps/f;)V

    return-object v1
.end method

.method private h()Lcom/facebook/fresco/animation/factory/a;
    .locals 11

    .line 1
    new-instance v7, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$c;

    invoke-direct {v7, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$c;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->i:Lcom/facebook/common/executors/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/common/executors/c;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b:Lcom/facebook/imagepipeline/core/f;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/common/executors/c;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_0
    move-object v3, v0

    .line 4
    new-instance v8, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$d;

    invoke-direct {v8, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$d;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 5
    sget-object v9, Lcom/facebook/common/internal/n;->b:Lcom/facebook/common/internal/m;

    .line 6
    new-instance v10, Lcom/facebook/fresco/animation/factory/a;

    .line 7
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->i()Lcom/facebook/imagepipeline/animated/impl/b;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/facebook/common/executors/i;->f()Lcom/facebook/common/executors/i;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Lcom/facebook/imagepipeline/bitmaps/f;

    iget-object v6, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->c:Lcom/facebook/imagepipeline/cache/j;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/facebook/fresco/animation/factory/a;-><init>(Lcom/facebook/imagepipeline/animated/impl/b;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Ls0/c;Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/imagepipeline/cache/j;Lcom/facebook/common/internal/m;Lcom/facebook/common/internal/m;Lcom/facebook/common/internal/m;)V

    return-object v10
.end method

.method private i()Lcom/facebook/imagepipeline/animated/impl/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Lcom/facebook/imagepipeline/animated/impl/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$e;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$e;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Lcom/facebook/imagepipeline/animated/impl/b;

    return-object v0
.end method

.method private j()Ll1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Ll1/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ll1/a;

    invoke-direct {v0}, Ll1/a;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Ll1/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Ll1/a;

    return-object v0
.end method

.method private k()Lcom/facebook/imagepipeline/animated/factory/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Lcom/facebook/imagepipeline/animated/factory/d;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g()Lcom/facebook/imagepipeline/animated/factory/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Lcom/facebook/imagepipeline/animated/factory/d;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Lcom/facebook/imagepipeline/animated/factory/d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ln1/a;
    .locals 0
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
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->h:Ln1/a;

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->h()Lcom/facebook/fresco/animation/factory/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->h:Ln1/a;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->h:Ln1/a;

    return-object p1
.end method

.method public b()Lcom/facebook/imagepipeline/decoder/b;
    .locals 1

    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$b;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$b;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/decoder/b;
    .locals 1

    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$a;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$a;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    return-object v0
.end method
