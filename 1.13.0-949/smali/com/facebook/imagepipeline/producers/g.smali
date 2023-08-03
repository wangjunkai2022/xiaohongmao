.class public Lcom/facebook/imagepipeline/producers/g;
.super Lcom/facebook/imagepipeline/producers/j0;
.source "BitmapMemoryCacheKeyMultiplexProducer.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/j0<",
        "Landroid/util/Pair<",
        "Lcom/facebook/cache/common/c;",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        ">;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/facebook/imagepipeline/cache/g;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/q0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cacheKeyFactory",
            "inputProducer"
        }
    .end annotation

    const-string v0, "BitmapMemoryCacheKeyMultiplexProducer"

    const-string v1, "multiplex_bmp_cnt"

    .line 1
    invoke-direct {p0, p2, v0, v1}, Lcom/facebook/imagepipeline/producers/j0;-><init>(Lcom/facebook/imagepipeline/producers/q0;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/g;->g:Lcom/facebook/imagepipeline/cache/g;

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 0
    .param p1    # Ljava/io/Closeable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "closeableImage"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/g;->l(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic j(Lcom/facebook/imagepipeline/producers/s0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "producerContext"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/g;->m(Lcom/facebook/imagepipeline/producers/s0;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
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
            "closeableImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method protected m(Lcom/facebook/imagepipeline/producers/s0;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/g;->g:Lcom/facebook/imagepipeline/cache/g;

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->d()Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/g;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->s()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
