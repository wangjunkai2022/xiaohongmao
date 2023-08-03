.class public Lcom/facebook/fresco/animation/factory/a;
.super Ljava/lang/Object;
.source "ExperimentalBitmapAnimationDrawableFactory.java"

# interfaces
.implements Ln1/a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/impl/b;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ls0/c;

.field private final e:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final f:Lcom/facebook/imagepipeline/cache/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/b;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Ls0/c;Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/imagepipeline/cache/j;Lcom/facebook/common/internal/m;Lcom/facebook/common/internal/m;Lcom/facebook/common/internal/m;)V
    .locals 0
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
            0x0
        }
        names = {
            "animatedDrawableBackendProvider",
            "scheduledExecutorServiceForUiThread",
            "executorServiceForFramePreparing",
            "monotonicClock",
            "platformBitmapFactory",
            "backingCache",
            "cachingStrategySupplier",
            "numberOfFramesToPrepareSupplier",
            "useDeepEqualsForCacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/impl/b;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ls0/c;",
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object p4, p0, Lcom/facebook/fresco/animation/factory/a;->d:Ls0/c;

    .line 6
    iput-object p5, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 7
    iput-object p6, p0, Lcom/facebook/fresco/animation/factory/a;->f:Lcom/facebook/imagepipeline/cache/j;

    .line 8
    iput-object p7, p0, Lcom/facebook/fresco/animation/factory/a;->g:Lcom/facebook/common/internal/m;

    .line 9
    iput-object p8, p0, Lcom/facebook/fresco/animation/factory/a;->h:Lcom/facebook/common/internal/m;

    .line 10
    iput-object p9, p0, Lcom/facebook/fresco/animation/factory/a;->i:Lcom/facebook/common/internal/m;

    return-void
.end method

.method private c(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/base/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatedImageResult"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/f;->f()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->getWidth()I

    move-result v2

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/b;->a(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/impl/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "animatedImageResult"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/c;

    new-instance v1, Lcom/facebook/fresco/animation/bitmap/cache/a;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/a;->i:Lcom/facebook/common/internal/m;

    invoke-interface {v2}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/facebook/fresco/animation/bitmap/cache/a;-><init>(IZ)V

    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->f:Lcom/facebook/imagepipeline/cache/j;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/animated/impl/c;-><init>(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/cache/j;)V

    return-object v0
.end method

.method private e(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/animation/backend/a;
    .locals 8
    .param p2    # Landroid/graphics/Bitmap$Config;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animatedImageResult",
            "animatedBitmapConig"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->c(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->f(Lcom/facebook/imagepipeline/animated/base/f;)Lb1/b;

    move-result-object v3

    .line 3
    new-instance v5, Lcom/facebook/fresco/animation/bitmap/wrapper/b;

    invoke-direct {v5, v3, v0}, Lcom/facebook/fresco/animation/bitmap/wrapper/b;-><init>(Lb1/b;Lcom/facebook/imagepipeline/animated/base/a;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->h:Lcom/facebook/common/internal/m;

    invoke-interface {p1}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 5
    new-instance v1, Lcom/facebook/fresco/animation/bitmap/preparation/d;

    invoke-direct {v1, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/d;-><init>(I)V

    .line 6
    invoke-direct {p0, v5, p2}, Lcom/facebook/fresco/animation/factory/a;->g(Lb1/c;Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/animation/bitmap/preparation/b;

    move-result-object p1

    move-object v7, p1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v1

    move-object v7, v6

    .line 7
    :goto_0
    new-instance p1, Lb1/a;

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/bitmaps/f;

    new-instance v4, Lcom/facebook/fresco/animation/bitmap/wrapper/a;

    invoke-direct {v4, v0}, Lcom/facebook/fresco/animation/bitmap/wrapper/a;-><init>(Lcom/facebook/imagepipeline/animated/base/a;)V

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lb1/a;-><init>(Lcom/facebook/imagepipeline/bitmaps/f;Lb1/b;Lcom/facebook/fresco/animation/backend/d;Lb1/c;Lcom/facebook/fresco/animation/bitmap/preparation/a;Lcom/facebook/fresco/animation/bitmap/preparation/b;)V

    .line 8
    iget-object p2, p0, Lcom/facebook/fresco/animation/factory/a;->d:Ls0/c;

    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, p2, v0}, Lcom/facebook/fresco/animation/backend/c;->s(Lcom/facebook/fresco/animation/backend/a;Ls0/c;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/b;

    move-result-object p1

    return-object p1
.end method

.method private f(Lcom/facebook/imagepipeline/animated/base/f;)Lb1/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatedImageResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->g:Lcom/facebook/common/internal/m;

    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    .line 2
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/cache/d;

    invoke-direct {p1}, Lcom/facebook/fresco/animation/bitmap/cache/d;-><init>()V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/cache/c;

    invoke-direct {p1}, Lcom/facebook/fresco/animation/bitmap/cache/c;-><init>()V

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/b;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->d(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/impl/c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/cache/b;-><init>(Lcom/facebook/imagepipeline/animated/impl/c;Z)V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/b;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->d(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/impl/c;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/cache/b;-><init>(Lcom/facebook/imagepipeline/animated/impl/c;Z)V

    return-object v0
.end method

.method private g(Lb1/c;Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/animation/bitmap/preparation/b;
    .locals 3
    .param p2    # Landroid/graphics/Bitmap$Config;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmapFrameRenderer",
            "animatedBitmapConig"
        }
    .end annotation

    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/c;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/bitmaps/f;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/c;-><init>(Lcom/facebook/imagepipeline/bitmaps/f;Lb1/c;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    instance-of p1, p1, Lcom/facebook/imagepipeline/image/a;

    return p1
.end method

.method public bridge synthetic b(Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "image"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->h(Lcom/facebook/imagepipeline/image/c;)Lcom/facebook/fresco/animation/drawable/a;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/facebook/imagepipeline/image/c;)Lcom/facebook/fresco/animation/drawable/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/a;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/a;->k()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/facebook/fresco/animation/drawable/a;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/a;->p()Lcom/facebook/imagepipeline/animated/base/f;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/animated/base/f;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->h()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/fresco/animation/factory/a;->e(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/animation/backend/a;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/facebook/fresco/animation/drawable/a;-><init>(Lcom/facebook/fresco/animation/backend/a;)V

    return-object v1
.end method
