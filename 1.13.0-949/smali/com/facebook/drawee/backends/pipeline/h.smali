.class public Lcom/facebook/drawee/backends/pipeline/h;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerFactory.java"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/facebook/drawee/components/a;

.field private c:Ln1/a;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Lcom/facebook/imagepipeline/cache/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Ln1/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private g:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Ln1/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/common/internal/m;)V
    .locals 0
    .param p6    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/common/internal/m;
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
            0x0
        }
        names = {
            "resources",
            "deferredReleaser",
            "animatedDrawableFactory",
            "uiThreadExecutor",
            "memoryCache",
            "drawableFactories",
            "debugOverlayEnabledSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/components/a;",
            "Ln1/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Ln1/a;",
            ">;",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/h;->a:Landroid/content/res/Resources;

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/h;->b:Lcom/facebook/drawee/components/a;

    .line 3
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/h;->c:Ln1/a;

    .line 4
    iput-object p4, p0, Lcom/facebook/drawee/backends/pipeline/h;->d:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p5, p0, Lcom/facebook/drawee/backends/pipeline/h;->e:Lcom/facebook/imagepipeline/cache/u;

    .line 6
    iput-object p6, p0, Lcom/facebook/drawee/backends/pipeline/h;->f:Lcom/facebook/common/internal/ImmutableList;

    .line 7
    iput-object p7, p0, Lcom/facebook/drawee/backends/pipeline/h;->g:Lcom/facebook/common/internal/m;

    return-void
.end method

.method protected b(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Ln1/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/e;
    .locals 8
    .param p5    # Lcom/facebook/imagepipeline/cache/u;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/common/internal/ImmutableList;
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
            "resources",
            "deferredReleaser",
            "animatedDrawableFactory",
            "uiThreadExecutor",
            "memoryCache",
            "drawableFactories"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/components/a;",
            "Ln1/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Ln1/a;",
            ">;)",
            "Lcom/facebook/drawee/backends/pipeline/e;"
        }
    .end annotation

    new-instance v7, Lcom/facebook/drawee/backends/pipeline/e;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/backends/pipeline/e;-><init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Ln1/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/common/internal/ImmutableList;)V

    return-object v7
.end method

.method public c()Lcom/facebook/drawee/backends/pipeline/e;
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/h;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/h;->b:Lcom/facebook/drawee/components/a;

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/h;->c:Ln1/a;

    iget-object v4, p0, Lcom/facebook/drawee/backends/pipeline/h;->d:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/facebook/drawee/backends/pipeline/h;->e:Lcom/facebook/imagepipeline/cache/u;

    iget-object v6, p0, Lcom/facebook/drawee/backends/pipeline/h;->f:Lcom/facebook/common/internal/ImmutableList;

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/drawee/backends/pipeline/h;->b(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Ln1/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/h;->g:Lcom/facebook/common/internal/m;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/e;->H0(Z)V

    :cond_0
    return-object v0
.end method
