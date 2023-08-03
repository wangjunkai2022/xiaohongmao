.class public Lcom/facebook/drawee/backends/pipeline/info/internal/b;
.super Lcom/facebook/drawee/controller/b;
.source "ImagePerfControllerListener.java"

# interfaces
.implements Li1/h;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/b<",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;",
        "Li1/h<",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ls0/c;

.field private final c:Lx0/l;

.field private final d:Lx0/j;


# direct methods
.method public constructor <init>(Ls0/c;Lx0/l;Lx0/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clock",
            "imagePerfState",
            "imagePerfMonitor"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->b:Ls0/c;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    .line 4
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lx0/j;

    return-void
.end method

.method private k(J)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx0/l;->G(Z)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v0, p1, p2}, Lx0/l;->z(J)V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lx0/j;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lx0/j;->a(Lx0/l;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "id",
            "imageInfo"
        }
    .end annotation

    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->j(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "throwable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->b:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v2, v0, v1}, Lx0/l;->j(J)V

    .line 3
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v2, p1}, Lx0/l;->l(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {p1, p2}, Lx0/l;->q(Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lx0/j;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    const/4 v2, 0x5

    invoke-virtual {p1, p2, v2}, Lx0/j;->b(Lx0/l;I)V

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->k(J)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/b;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->b:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v2}, Lx0/l;->d()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 4
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v2, v0, v1}, Lx0/l;->i(J)V

    .line 5
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v2, p1}, Lx0/l;->l(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lx0/j;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lx0/j;->b(Lx0/l;I)V

    .line 7
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->k(J)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "id",
            "imageInfo",
            "animatable"
        }
    .end annotation

    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "callerContext"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->b:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v2}, Lx0/l;->f()V

    .line 3
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v2, v0, v1}, Lx0/l;->o(J)V

    .line 4
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v2, p1}, Lx0/l;->l(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {p1, p2}, Lx0/l;->g(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lx0/j;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lx0/j;->b(Lx0/l;I)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->l(J)V

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V
    .locals 2
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
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
            "id",
            "imageInfo",
            "animatable"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->b:Ls0/c;

    invoke-interface {p3}, Ls0/c;->now()J

    move-result-wide v0

    .line 2
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {p3, v0, v1}, Lx0/l;->k(J)V

    .line 3
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {p3, v0, v1}, Lx0/l;->x(J)V

    .line 4
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {p3, p1}, Lx0/l;->l(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {p1, p2}, Lx0/l;->t(Lcom/facebook/imagepipeline/image/g;)V

    .line 6
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lx0/j;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Lx0/j;->b(Lx0/l;I)V

    return-void
.end method

.method public i(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Li1/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "info",
            "dimensionsInfo"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->b:Ls0/c;

    invoke-interface {p2}, Ls0/c;->now()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lx0/l;->s(J)V

    .line 2
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {p1, p3}, Lx0/l;->p(Li1/d;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lx0/j;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    const/4 p3, 0x6

    invoke-virtual {p1, p2, p3}, Lx0/j;->b(Lx0/l;I)V

    return-void
.end method

.method public j(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V
    .locals 3
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "imageInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->b:Ls0/c;

    invoke-interface {v0}, Ls0/c;->now()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v2, v0, v1}, Lx0/l;->n(J)V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v0, p1}, Lx0/l;->l(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {p1, p2}, Lx0/l;->t(Lcom/facebook/imagepipeline/image/g;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lx0/j;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lx0/j;->b(Lx0/l;I)V

    return-void
.end method

.method public l(J)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "now"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx0/l;->G(Z)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {v0, p1, p2}, Lx0/l;->F(J)V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->d:Lx0/j;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->c:Lx0/l;

    invoke-virtual {p1, p2, v1}, Lx0/j;->a(Lx0/l;I)V

    return-void
.end method

.method public bridge synthetic p(Ljava/lang/String;Ljava/lang/Object;Li1/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "id",
            "info",
            "dimensionsInfo"
        }
    .end annotation

    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/internal/b;->i(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Li1/d;)V

    return-void
.end method
