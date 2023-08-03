.class public Lx0/j;
.super Ljava/lang/Object;
.source "ImagePerfMonitor.java"

# interfaces
.implements Lx0/k;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Lcom/facebook/drawee/backends/pipeline/e;

.field private final b:Ls0/c;

.field private final c:Lx0/l;

.field private final d:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lx0/f;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Lx0/e;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private g:Lcom/facebook/drawee/backends/pipeline/info/internal/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private h:Lcom/facebook/drawee/backends/pipeline/info/internal/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private i:Lq1/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx0/i;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:Z


# direct methods
.method public constructor <init>(Ls0/c;Lcom/facebook/drawee/backends/pipeline/e;Lcom/facebook/common/internal/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "monotonicClock",
            "pipelineDraweeController",
            "asyncLogging"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/c;",
            "Lcom/facebook/drawee/backends/pipeline/e;",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx0/j;->b:Ls0/c;

    .line 3
    iput-object p2, p0, Lx0/j;->a:Lcom/facebook/drawee/backends/pipeline/e;

    .line 4
    new-instance p1, Lx0/l;

    invoke-direct {p1}, Lx0/l;-><init>()V

    iput-object p1, p0, Lx0/j;->c:Lx0/l;

    .line 5
    iput-object p3, p0, Lx0/j;->d:Lcom/facebook/common/internal/m;

    return-void
.end method

.method private i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lx0/j;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;

    iget-object v2, p0, Lx0/j;->b:Ls0/c;

    iget-object v3, p0, Lx0/j;->c:Lx0/l;

    iget-object v5, p0, Lx0/j;->d:Lcom/facebook/common/internal/m;

    sget-object v6, Lcom/facebook/common/internal/n;->b:Lcom/facebook/common/internal/m;

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;-><init>(Ls0/c;Lx0/l;Lx0/k;Lcom/facebook/common/internal/m;Lcom/facebook/common/internal/m;)V

    iput-object v0, p0, Lx0/j;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lx0/j;->g:Lcom/facebook/drawee/backends/pipeline/info/internal/d;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/internal/d;

    iget-object v1, p0, Lx0/j;->b:Ls0/c;

    iget-object v2, p0, Lx0/j;->c:Lx0/l;

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/internal/d;-><init>(Ls0/c;Lx0/l;)V

    iput-object v0, p0, Lx0/j;->g:Lcom/facebook/drawee/backends/pipeline/info/internal/d;

    .line 5
    :cond_1
    iget-object v0, p0, Lx0/j;->f:Lx0/e;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/internal/c;

    iget-object v1, p0, Lx0/j;->c:Lx0/l;

    invoke-direct {v0, v1, p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/c;-><init>(Lx0/l;Lx0/j;)V

    iput-object v0, p0, Lx0/j;->f:Lx0/e;

    .line 7
    :cond_2
    iget-object v0, p0, Lx0/j;->e:Lx0/f;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Lx0/f;

    iget-object v1, p0, Lx0/j;->a:Lcom/facebook/drawee/backends/pipeline/e;

    .line 9
    invoke-virtual {v1}, Lcom/facebook/drawee/controller/a;->y()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lx0/j;->f:Lx0/e;

    invoke-direct {v0, v1, v2}, Lx0/f;-><init>(Ljava/lang/String;Lx0/e;)V

    iput-object v0, p0, Lx0/j;->e:Lx0/f;

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, p0, Lx0/j;->a:Lcom/facebook/drawee/backends/pipeline/e;

    invoke-virtual {v1}, Lcom/facebook/drawee/controller/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx0/f;->l(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lx0/j;->i:Lq1/d;

    if-nez v0, :cond_4

    .line 12
    new-instance v0, Lq1/d;

    const/4 v1, 0x2

    new-array v1, v1, [Lq1/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lx0/j;->g:Lcom/facebook/drawee/backends/pipeline/info/internal/d;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lx0/j;->e:Lx0/f;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lq1/d;-><init>([Lq1/f;)V

    iput-object v0, p0, Lx0/j;->i:Lq1/d;

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lx0/l;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "visibilityState"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lx0/j;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx0/j;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lx0/l;->H()Lx0/h;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lx0/j;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/i;

    .line 4
    invoke-interface {v1, p1, p2}, Lx0/i;->b(Lx0/h;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public b(Lx0/l;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "imageLoadStatus"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lx0/l;->u(I)V

    .line 2
    iget-boolean v0, p0, Lx0/j;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lx0/j;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lx0/j;->d()V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lx0/l;->H()Lx0/h;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lx0/j;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/i;

    .line 6
    invoke-interface {v1, p1, p2}, Lx0/i;->a(Lx0/h;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Lx0/i;)V
    .locals 1
    .param p1    # Lx0/i;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imagePerfDataListener"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lx0/j;->j:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lx0/j;->j:Ljava/util/List;

    .line 3
    :cond_1
    iget-object v0, p0, Lx0/j;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx0/j;->a:Lcom/facebook/drawee/backends/pipeline/e;

    invoke-virtual {v0}, Lcom/facebook/drawee/controller/a;->f()Lz0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lz0/b;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lz0/b;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lx0/j;->c:Lx0/l;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Lx0/l;->B(I)V

    .line 5
    iget-object v1, p0, Lx0/j;->c:Lx0/l;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v0}, Lx0/l;->A(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/j;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public f(Lx0/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imagePerfDataListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx0/j;->j:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx0/j;->e()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lx0/j;->h(Z)V

    .line 3
    iget-object v0, p0, Lx0/j;->c:Lx0/l;

    invoke-virtual {v0}, Lx0/l;->e()V

    return-void
.end method

.method public h(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lx0/j;->k:Z

    if-eqz p1, :cond_2

    .line 2
    invoke-direct {p0}, Lx0/j;->i()V

    .line 3
    iget-object p1, p0, Lx0/j;->f:Lx0/e;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lx0/j;->a:Lcom/facebook/drawee/backends/pipeline/e;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->l0(Lx0/e;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lx0/j;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/a;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lx0/j;->a:Lcom/facebook/drawee/backends/pipeline/e;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/a;->o(Li1/c;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lx0/j;->i:Lq1/d;

    if-eqz p1, :cond_5

    .line 8
    iget-object v0, p0, Lx0/j;->a:Lcom/facebook/drawee/backends/pipeline/e;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->m0(Lq1/f;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lx0/j;->f:Lx0/e;

    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Lx0/j;->a:Lcom/facebook/drawee/backends/pipeline/e;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->E0(Lx0/e;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lx0/j;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/a;

    if-eqz p1, :cond_4

    .line 12
    iget-object v0, p0, Lx0/j;->a:Lcom/facebook/drawee/backends/pipeline/e;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/a;->V(Li1/c;)V

    .line 13
    :cond_4
    iget-object p1, p0, Lx0/j;->i:Lq1/d;

    if-eqz p1, :cond_5

    .line 14
    iget-object v0, p0, Lx0/j;->a:Lcom/facebook/drawee/backends/pipeline/e;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->F0(Lq1/f;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public j(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pipelineDraweeControllerBuilder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "Lcom/facebook/drawee/backends/pipeline/f;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/image/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx0/j;->c:Lx0/l;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->t()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 3
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->v()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->s()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lx0/l;->m(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest;[Lcom/facebook/imagepipeline/request/ImageRequest;)V

    return-void
.end method
