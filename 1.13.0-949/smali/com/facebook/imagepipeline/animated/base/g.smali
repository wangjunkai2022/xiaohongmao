.class public Lcom/facebook/imagepipeline/animated/base/g;
.super Ljava/lang/Object;
.source "AnimatedImageResultBuilder.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/base/d;

.field private b:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private d:I

.field private e:Lt1/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/base/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->a:Lcom/facebook/imagepipeline/animated/base/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/animated/base/f;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/animated/base/f;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/animated/base/f;-><init>(Lcom/facebook/imagepipeline/animated/base/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    invoke-static {v2}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 3
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    invoke-static {v2}, Lcom/facebook/common/references/a;->p(Ljava/lang/Iterable;)V

    .line 5
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    invoke-static {v2}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 7
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    .line 8
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    invoke-static {v2}, Lcom/facebook/common/references/a;->p(Ljava/lang/Iterable;)V

    .line 9
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    .line 10
    throw v1
.end method

.method public b()Lt1/a;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->e:Lt1/a;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/common/references/a;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->d:I

    return v0
.end method

.method public e()Lcom/facebook/imagepipeline/animated/base/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->a:Lcom/facebook/imagepipeline/animated/base/d;

    return-object v0
.end method

.method public f()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public g(Lt1/a;)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 0
    .param p1    # Lt1/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapTransformation"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->e:Lt1/a;

    return-object p0
.end method

.method public h(Ljava/util/List;)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodedFrames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/animated/base/g;"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/references/a;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    return-object p0
.end method

.method public i(I)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameForPreview"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->d:I

    return-object p0
.end method

.method public j(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/animated/base/g;
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
            "previewBitmap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/facebook/imagepipeline/animated/base/g;"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/a;

    return-object p0
.end method
