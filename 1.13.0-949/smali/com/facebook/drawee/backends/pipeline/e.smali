.class public Lcom/facebook/drawee/backends/pipeline/e;
.super Lcom/facebook/drawee/controller/a;
.source "PipelineDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/a<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final P:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Landroid/content/res/Resources;

.field private final B:Ln1/a;

.field private final C:Lcom/facebook/common/internal/ImmutableList;
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

.field private final D:Lcom/facebook/imagepipeline/cache/u;
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

.field private E:Lcom/facebook/cache/common/c;

.field private F:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private G:Z

.field private H:Lcom/facebook/common/internal/ImmutableList;
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

.field private I:Lx0/j;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private J:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lq1/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private K:Lx0/e;
    .annotation runtime Lr7/h;
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private L:Lw0/b;

.field private M:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private N:[Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private O:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/drawee/backends/pipeline/e;

    sput-object v0, Lcom/facebook/drawee/backends/pipeline/e;->P:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Ln1/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/common/internal/ImmutableList;)V
    .locals 1
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
            "globalDrawableFactories"
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
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p4, v0, v0}, Lcom/facebook/drawee/controller/a;-><init>(Lcom/facebook/drawee/components/a;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->A:Landroid/content/res/Resources;

    .line 3
    new-instance p2, Lcom/facebook/drawee/backends/pipeline/b;

    invoke-direct {p2, p1, p3}, Lcom/facebook/drawee/backends/pipeline/b;-><init>(Landroid/content/res/Resources;Ln1/a;)V

    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/e;->B:Ln1/a;

    .line 4
    iput-object p6, p0, Lcom/facebook/drawee/backends/pipeline/e;->C:Lcom/facebook/common/internal/ImmutableList;

    .line 5
    iput-object p5, p0, Lcom/facebook/drawee/backends/pipeline/e;->D:Lcom/facebook/imagepipeline/cache/u;

    return-void
.end method

.method private A0(Lcom/facebook/imagepipeline/image/c;)V
    .locals 3
    .param p1    # Lcom/facebook/imagepipeline/image/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->G:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/facebook/drawee/debug/a;

    invoke-direct {v0}, Lcom/facebook/drawee/debug/a;-><init>()V

    .line 4
    new-instance v1, Ly0/a;

    invoke-direct {v1, v0}, Ly0/a;-><init>(Ly0/b;)V

    .line 5
    new-instance v2, Lw0/b;

    invoke-direct {v2}, Lw0/b;-><init>()V

    iput-object v2, p0, Lcom/facebook/drawee/backends/pipeline/e;->L:Lw0/b;

    .line 6
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/a;->n(Lcom/facebook/drawee/controller/c;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/a;->c0(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->K:Lx0/e;

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->L:Lw0/b;

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/backends/pipeline/e;->l0(Lx0/e;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/drawee/debug/a;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/debug/a;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/backends/pipeline/e;->I0(Lcom/facebook/imagepipeline/image/c;Lcom/facebook/drawee/debug/a;)V

    :cond_3
    return-void
.end method

.method private w0(Lcom/facebook/common/internal/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSourceSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->F:Lcom/facebook/common/internal/m;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->A0(Lcom/facebook/imagepipeline/image/c;)V

    return-void
.end method

.method private z0(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawableFactories",
            "closeableImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Ln1/a;",
            ">;",
            "Lcom/facebook/imagepipeline/image/c;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln1/a;

    .line 2
    invoke-interface {v1, p2}, Ln1/a;->a(Lcom/facebook/imagepipeline/image/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1, p2}, Ln1/a;->b(Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic A(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "image"
        }
    .end annotation

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->s0(Lcom/facebook/common/references/a;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "image"
        }
    .end annotation

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->t0(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/image/g;

    move-result-object p1

    return-object p1
.end method

.method public B0(Lcom/facebook/imagepipeline/image/g;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/g;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/f;->getExtras()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected C0(Ljava/lang/String;Lcom/facebook/common/references/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "cachedImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/controller/a;->O(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/e;->K:Lx0/e;

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x1

    const-string v2, "PipelineDraweeController"

    .line 4
    invoke-interface {p2, p1, v0, v1, v2}, Lx0/e;->a(Ljava/lang/String;IZLjava/lang/String;)V

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

.method protected D()Landroid/net/Uri;
    .locals 4
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->M:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/e;->O:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/e;->N:[Lcom/facebook/imagepipeline/request/ImageRequest;

    sget-object v3, Lcom/facebook/imagepipeline/request/ImageRequest;->y:Lcom/facebook/common/internal/g;

    invoke-static {v0, v1, v2, v3}, Li1/g;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lcom/facebook/common/internal/g;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected D0(Lcom/facebook/common/references/a;)V
    .locals 0
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method public declared-synchronized E0(Lx0/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageOriginListener"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->K:Lx0/e;

    instance-of v1, v0, Lx0/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lx0/a;

    .line 3
    invoke-virtual {v0, p1}, Lx0/a;->c(Lx0/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 5
    :try_start_1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->K:Lx0/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized F0(Lq1/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestListener"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->J:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public G0(Lcom/facebook/common/internal/ImmutableList;)V
    .locals 0
    .param p1    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customDrawableFactories"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Ln1/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->H:Lcom/facebook/common/internal/ImmutableList;

    return-void
.end method

.method public H0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawDebugOverlay"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->G:Z

    return-void
.end method

.method protected I0(Lcom/facebook/imagepipeline/image/c;Lcom/facebook/drawee/debug/a;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/image/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "debugOverlay"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/drawee/debug/a;->k(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->f()Lz0/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lz0/b;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/drawee/drawable/s;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/drawable/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/r;->C()Lcom/facebook/drawee/drawable/s$c;

    move-result-object v0

    move-object v1, v0

    .line 5
    :cond_0
    invoke-virtual {p2, v1}, Lcom/facebook/drawee/debug/a;->s(Lcom/facebook/drawee/drawable/s$c;)V

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->L:Lw0/b;

    invoke-virtual {v0}, Lw0/b;->b()I

    move-result v0

    .line 7
    invoke-static {v0}, Lx0/g;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v0}, Lw0/a;->a(I)I

    move-result v0

    .line 9
    invoke-virtual {p2, v1, v0}, Lcom/facebook/drawee/debug/a;->q(Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/g;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/g;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/facebook/drawee/debug/a;->l(II)V

    .line 11
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/c;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/debug/a;->p(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/drawee/debug/a;->i()V

    :goto_0
    return-void
.end method

.method public bridge synthetic M(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "info"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->B0(Lcom/facebook/imagepipeline/image/g;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic O(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "id",
            "cachedImage"
        }
    .end annotation

    check-cast p2, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/e;->C0(Ljava/lang/String;Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected R(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lu0/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lu0/a;

    invoke-interface {p1}, Lu0/a;->d()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic T(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "image"
        }
    .end annotation

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->D0(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method public b(Lz0/a;)Z
    .locals 2
    .param p1    # Lz0/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->E:Lcom/facebook/cache/common/c;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/facebook/drawee/backends/pipeline/e;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/e;->p0()Lcom/facebook/cache/common/c;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i(Lz0/b;)V
    .locals 0
    .param p1    # Lz0/b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchy"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/a;->i(Lz0/b;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->A0(Lcom/facebook/imagepipeline/image/c;)V

    return-void
.end method

.method public declared-synchronized l0(Lx0/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageOriginListener"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->K:Lx0/e;

    instance-of v1, v0, Lx0/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lx0/a;

    .line 3
    invoke-virtual {v0, p1}, Lx0/a;->b(Lx0/e;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lx0/a;

    const/4 v2, 0x2

    new-array v2, v2, [Lx0/e;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-direct {v1, v2}, Lx0/a;-><init>([Lx0/e;)V

    iput-object v1, p0, Lcom/facebook/drawee/backends/pipeline/e;->K:Lx0/e;

    goto :goto_0

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->K:Lx0/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m0(Lq1/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestListener"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->J:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->J:Ljava/util/Set;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->J:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
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

.method protected n0()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->K:Lx0/e;

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected o0(Lcom/facebook/common/references/a;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#createDrawable"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/c;

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->A0(Lcom/facebook/imagepipeline/image/c;)V

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->H:Lcom/facebook/common/internal/ImmutableList;

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->z0(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-object v0

    .line 10
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->C:Lcom/facebook/common/internal/ImmutableList;

    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->z0(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-object v0

    .line 13
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->B:Ln1/a;

    invoke-interface {v0, p1}, Ln1/a;->b(Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_5
    return-object v0

    .line 16
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized image class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 19
    :cond_7
    throw p1
.end method

.method protected bridge synthetic p(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "image"
        }
    .end annotation

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->o0(Lcom/facebook/common/references/a;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected p0()Lcom/facebook/cache/common/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->E:Lcom/facebook/cache/common/c;

    return-object v0
.end method

.method protected bridge synthetic q()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/e;->q0()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected q0()Lcom/facebook/common/references/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#getCachedImage"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->D:Lcom/facebook/imagepipeline/cache/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/e;->E:Lcom/facebook/cache/common/c;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/cache/u;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/image/c;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/image/c;->a()Lcom/facebook/imagepipeline/image/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/imagepipeline/image/j;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-object v1

    .line 9
    :cond_3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_4
    return-object v0

    .line 11
    :cond_5
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_6
    return-object v1

    :catchall_0
    move-exception v0

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 15
    :cond_7
    throw v0
.end method

.method protected r0()Lcom/facebook/common/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->F:Lcom/facebook/common/internal/m;

    return-object v0
.end method

.method protected s0(Lcom/facebook/common/references/a;)I
    .locals 0
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/common/references/a;->s()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected t0(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/image/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Lcom/facebook/imagepipeline/image/g;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/g;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/i;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    .line 2
    invoke-super {p0}, Lcom/facebook/drawee/controller/a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/e;->F:Lcom/facebook/common/internal/m;

    const-string v2, "dataSourceSupplier"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized u0()Lq1/f;
    .locals 3
    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/e;->K:Lx0/e;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lx0/f;

    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->y()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/e;->K:Lx0/e;

    invoke-direct {v0, v1, v2}, Lx0/f;-><init>(Ljava/lang/String;Lx0/e;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/e;->J:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 4
    new-instance v2, Lq1/d;

    invoke-direct {v2, v1}, Lq1/d;-><init>(Ljava/util/Set;)V

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v2, v0}, Lq1/d;->l(Lq1/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-object v2

    .line 7
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected v()Lcom/facebook/datasource/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#getDataSource"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/e;->P:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "controller %x: getDataSource"

    invoke-static {v0, v2, v1}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->F:Lcom/facebook/common/internal/m;

    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/d;

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-object v0
.end method

.method protected v0()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->A:Landroid/content/res/Resources;

    return-object v0
.end method

.method public x0(Lcom/facebook/common/internal/m;Ljava/lang/String;Lcom/facebook/cache/common/c;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;Lx0/e;)V
    .locals 1
    .param p5    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p6    # Lx0/e;
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
            "dataSourceSupplier",
            "id",
            "cacheKey",
            "callerContext",
            "customDrawableFactories",
            "imageOriginListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/common/c;",
            "Ljava/lang/Object;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Ln1/a;",
            ">;",
            "Lx0/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#initialize"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p2, p4}, Lcom/facebook/drawee/controller/a;->G(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->w0(Lcom/facebook/common/internal/m;)V

    .line 5
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/e;->E:Lcom/facebook/cache/common/c;

    .line 6
    invoke-virtual {p0, p5}, Lcom/facebook/drawee/backends/pipeline/e;->G0(Lcom/facebook/common/internal/ImmutableList;)V

    .line 7
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/e;->n0()V

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->A0(Lcom/facebook/imagepipeline/image/c;)V

    .line 9
    invoke-virtual {p0, p6}, Lcom/facebook/drawee/backends/pipeline/e;->l0(Lx0/e;)V

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-void
.end method

.method protected declared-synchronized y0(Lx0/i;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/common/internal/m;)V
    .locals 2
    .param p1    # Lx0/i;
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
            "imagePerfDataListener",
            "builder",
            "asyncLogging"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx0/i;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "Lcom/facebook/drawee/backends/pipeline/f;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/image/g;",
            ">;",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->I:Lx0/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lx0/j;->g()V

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->I:Lx0/j;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lx0/j;

    invoke-static {}, Lcom/facebook/common/time/AwakeTimeSinceBootClock;->get()Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    move-result-object v1

    invoke-direct {v0, v1, p0, p3}, Lx0/j;-><init>(Ls0/c;Lcom/facebook/drawee/backends/pipeline/e;Lcom/facebook/common/internal/m;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->I:Lx0/j;

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/e;->I:Lx0/j;

    invoke-virtual {p3, p1}, Lx0/j;->c(Lx0/i;)V

    .line 6
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->I:Lx0/j;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lx0/j;->h(Z)V

    .line 7
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->I:Lx0/j;

    invoke-virtual {p1, p2}, Lx0/j;->j(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;)V

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->t()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->M:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 9
    invoke-virtual {p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->s()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->N:[Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 10
    invoke-virtual {p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->v()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->O:Lcom/facebook/imagepipeline/request/ImageRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
