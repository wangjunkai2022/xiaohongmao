.class public Lcom/facebook/drawee/backends/pipeline/g;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerBuilderSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/m<",
        "Lcom/facebook/drawee/backends/pipeline/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/imagepipeline/core/h;

.field private final c:Lcom/facebook/drawee/backends/pipeline/h;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Li1/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lx0/i;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/backends/pipeline/g;-><init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/c;)V
    .locals 1
    .param p2    # Lcom/facebook/drawee/backends/pipeline/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "draweeConfig"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/core/l;->l()Lcom/facebook/imagepipeline/core/l;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/drawee/backends/pipeline/g;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/l;Lcom/facebook/drawee/backends/pipeline/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/l;Lcom/facebook/drawee/backends/pipeline/c;)V
    .locals 6
    .param p3    # Lcom/facebook/drawee/backends/pipeline/c;
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
            "context",
            "imagePipelineFactory",
            "draweeConfig"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/facebook/drawee/backends/pipeline/g;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/l;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/drawee/backends/pipeline/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/l;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/drawee/backends/pipeline/c;)V
    .locals 10
    .param p5    # Lcom/facebook/drawee/backends/pipeline/c;
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
            "context",
            "imagePipelineFactory",
            "boundControllerListeners",
            "boundControllerListeners2",
            "draweeConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/imagepipeline/core/l;",
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/c;",
            ">;",
            "Ljava/util/Set<",
            "Li1/c;",
            ">;",
            "Lcom/facebook/drawee/backends/pipeline/c;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/g;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/core/l;->j()Lcom/facebook/imagepipeline/core/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/g;->b:Lcom/facebook/imagepipeline/core/h;

    if-eqz p5, :cond_0

    .line 7
    invoke-virtual {p5}, Lcom/facebook/drawee/backends/pipeline/c;->d()Lcom/facebook/drawee/backends/pipeline/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p5}, Lcom/facebook/drawee/backends/pipeline/c;->d()Lcom/facebook/drawee/backends/pipeline/h;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/drawee/backends/pipeline/g;->c:Lcom/facebook/drawee/backends/pipeline/h;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/facebook/drawee/backends/pipeline/h;

    invoke-direct {v1}, Lcom/facebook/drawee/backends/pipeline/h;-><init>()V

    iput-object v1, p0, Lcom/facebook/drawee/backends/pipeline/g;->c:Lcom/facebook/drawee/backends/pipeline/h;

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/g;->c:Lcom/facebook/drawee/backends/pipeline/h;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 12
    invoke-static {}, Lcom/facebook/drawee/components/a;->b()Lcom/facebook/drawee/components/a;

    move-result-object v4

    .line 13
    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/core/l;->b(Landroid/content/Context;)Ln1/a;

    move-result-object v5

    .line 14
    invoke-static {}, Lcom/facebook/common/executors/i;->f()Lcom/facebook/common/executors/i;

    move-result-object v6

    .line 15
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->r()Lcom/facebook/imagepipeline/cache/u;

    move-result-object v7

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    .line 16
    invoke-virtual {p5}, Lcom/facebook/drawee/backends/pipeline/c;->a()Lcom/facebook/common/internal/ImmutableList;

    move-result-object p2

    move-object v8, p2

    goto :goto_1

    :cond_1
    move-object v8, p1

    :goto_1
    if-eqz p5, :cond_2

    .line 17
    invoke-virtual {p5}, Lcom/facebook/drawee/backends/pipeline/c;->b()Lcom/facebook/common/internal/m;

    move-result-object p2

    move-object v9, p2

    goto :goto_2

    :cond_2
    move-object v9, p1

    .line 18
    :goto_2
    invoke-virtual/range {v2 .. v9}, Lcom/facebook/drawee/backends/pipeline/h;->a(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Ln1/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/common/internal/m;)V

    .line 19
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/g;->d:Ljava/util/Set;

    .line 20
    iput-object p4, p0, Lcom/facebook/drawee/backends/pipeline/g;->e:Ljava/util/Set;

    if-eqz p5, :cond_3

    .line 21
    invoke-virtual {p5}, Lcom/facebook/drawee/backends/pipeline/c;->c()Lx0/i;

    move-result-object p1

    :cond_3
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/g;->f:Lx0/i;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/drawee/backends/pipeline/f;
    .locals 7

    .line 1
    new-instance v6, Lcom/facebook/drawee/backends/pipeline/f;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/g;->c:Lcom/facebook/drawee/backends/pipeline/h;

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/g;->b:Lcom/facebook/imagepipeline/core/h;

    iget-object v4, p0, Lcom/facebook/drawee/backends/pipeline/g;->d:Ljava/util/Set;

    iget-object v5, p0, Lcom/facebook/drawee/backends/pipeline/g;->e:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/drawee/backends/pipeline/f;-><init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/h;Lcom/facebook/imagepipeline/core/h;Ljava/util/Set;Ljava/util/Set;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/g;->f:Lx0/i;

    invoke-virtual {v6, v0}, Lcom/facebook/drawee/backends/pipeline/f;->f0(Lx0/i;)Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/g;->a()Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object v0

    return-object v0
.end method
