.class public Lcom/facebook/drawee/backends/pipeline/f;
.super Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.source "PipelineDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
        "Lcom/facebook/drawee/backends/pipeline/f;",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final u:Lcom/facebook/imagepipeline/core/h;

.field private final v:Lcom/facebook/drawee/backends/pipeline/h;

.field private w:Lcom/facebook/common/internal/ImmutableList;
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

.field private x:Lx0/e;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private y:Lx0/i;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/h;Lcom/facebook/imagepipeline/core/h;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "pipelineDraweeControllerFactory",
            "imagePipeline",
            "boundControllerListeners",
            "boundControllerListeners2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/drawee/backends/pipeline/h;",
            "Lcom/facebook/imagepipeline/core/h;",
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/c;",
            ">;",
            "Ljava/util/Set<",
            "Li1/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V

    .line 2
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/f;->u:Lcom/facebook/imagepipeline/core/h;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/f;->v:Lcom/facebook/drawee/backends/pipeline/h;

    return-void
.end method

.method public static W(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheLevel"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/f$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "is not supported. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0
.end method

.method private X()Lcom/facebook/cache/common/c;
    .locals 3
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/f;->u:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->t()Lcom/facebook/imagepipeline/cache/g;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/request/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/cache/g;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/cache/g;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic E()Lcom/facebook/drawee/controller/a;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/f;->a0()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    return-object v0
.end method

.method protected Y(Lz0/a;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/d;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "controllerId",
            "imageRequest",
            "callerContext",
            "cacheLevel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/a;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/f;->u:Lcom/facebook/imagepipeline/core/h;

    .line 2
    invoke-static {p5}, Lcom/facebook/drawee/backends/pipeline/f;->W(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v3

    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/f;->Z(Lz0/a;)Lq1/f;

    move-result-object v4

    move-object v1, p3

    move-object v2, p4

    move-object v5, p2

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/core/h;->l(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lq1/f;Ljava/lang/String;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method

.method protected Z(Lz0/a;)Lq1/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "controller"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/facebook/drawee/backends/pipeline/e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/e;->u0()Lq1/f;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Landroid/net/Uri;)Lz0/d;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "uri"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/f;->g0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object p1

    return-object p1
.end method

.method protected a0()Lcom/facebook/drawee/backends/pipeline/e;
    .locals 8

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeControllerBuilder#obtainController"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->w()Lz0/a;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g()Ljava/lang/String;

    move-result-object v3

    .line 5
    instance-of v1, v0, Lcom/facebook/drawee/backends/pipeline/e;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/f;->v:Lcom/facebook/drawee/backends/pipeline/h;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/h;->c()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    .line 8
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->F(Lz0/a;Ljava/lang/String;)Lcom/facebook/common/internal/m;

    move-result-object v2

    .line 9
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/f;->X()Lcom/facebook/cache/common/c;

    move-result-object v4

    .line 10
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/drawee/backends/pipeline/f;->w:Lcom/facebook/common/internal/ImmutableList;

    iget-object v7, p0, Lcom/facebook/drawee/backends/pipeline/f;->x:Lx0/e;

    move-object v1, v0

    .line 11
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/drawee/backends/pipeline/e;->x0(Lcom/facebook/common/internal/m;Ljava/lang/String;Lcom/facebook/cache/common/c;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;Lx0/e;)V

    .line 12
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/f;->y:Lx0/i;

    sget-object v2, Lcom/facebook/common/internal/n;->b:Lcom/facebook/common/internal/m;

    invoke-virtual {v0, v1, p0, v2}, Lcom/facebook/drawee/backends/pipeline/e;->y0(Lx0/i;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/common/internal/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 17
    :cond_3
    throw v0
.end method

.method public bridge synthetic b(Ljava/lang/String;)Lz0/d;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "uriString"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/f;->h0(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object p1

    return-object p1
.end method

.method public b0(Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/f;
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
            ">;)",
            "Lcom/facebook/drawee/backends/pipeline/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/f;->w:Lcom/facebook/common/internal/ImmutableList;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->z()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/f;

    return-object p1
.end method

.method public varargs c0([Ln1/a;)Lcom/facebook/drawee/backends/pipeline/f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawableFactories"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/ImmutableList;->of([Ljava/lang/Object;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/f;->b0(Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object p1

    return-object p1
.end method

.method public d0(Ln1/a;)Lcom/facebook/drawee/backends/pipeline/f;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawableFactory"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ln1/a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableList;->of([Ljava/lang/Object;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/f;->b0(Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object p1

    return-object p1
.end method

.method public e0(Lx0/e;)Lcom/facebook/drawee/backends/pipeline/f;
    .locals 0
    .param p1    # Lx0/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageOriginListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/f;->x:Lx0/e;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->z()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/f;

    return-object p1
.end method

.method public f0(Lx0/i;)Lcom/facebook/drawee/backends/pipeline/f;
    .locals 0
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

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/f;->y:Lx0/i;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->z()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/f;

    return-object p1
.end method

.method public g0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/f;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->P(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/f;

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/common/e;->b()Lcom/facebook/imagepipeline/common/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->N(Lcom/facebook/imagepipeline/common/e;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->P(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/f;

    return-object p1
.end method

.method public h0(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriString"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/f;->g0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->c(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->P(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/f;

    return-object p1
.end method

.method protected bridge synthetic n(Lz0/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "controller",
            "controllerId",
            "imageRequest",
            "callerContext",
            "cacheLevel"
        }
    .end annotation

    check-cast p3, Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual/range {p0 .. p5}, Lcom/facebook/drawee/backends/pipeline/f;->Y(Lz0/a;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/d;

    move-result-object p1

    return-object p1
.end method
