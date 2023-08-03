.class Lcom/facebook/imagepipeline/producers/r$b;
.super Lcom/facebook/imagepipeline/producers/p;
.source "DiskCacheWriteProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/p<",
        "Lcom/facebook/imagepipeline/image/e;",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lcom/facebook/imagepipeline/producers/s0;

.field private final j:Lcom/facebook/imagepipeline/cache/f;

.field private final k:Lcom/facebook/imagepipeline/cache/f;

.field private final l:Lcom/facebook/imagepipeline/cache/g;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "consumer",
            "producerContext",
            "defaultBufferedDiskCache",
            "smallImageBufferedDiskCache",
            "cacheKeyFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/g;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/producers/l;)V

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/r$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/r$b;->j:Lcom/facebook/imagepipeline/cache/f;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/r$b;->k:Lcom/facebook/imagepipeline/cache/f;

    .line 6
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/r$b;->l:Lcom/facebook/imagepipeline/cache/g;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/r$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/facebook/imagepipeline/producers/r$b;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic j(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/r$b;->s(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method

.method public s(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 5
    .param p1    # Lcom/facebook/imagepipeline/image/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/r$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    const-string v2, "DiskCacheWriteProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->g(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0xa

    .line 3
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/b;->n(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->y()Lcom/facebook/imageformat/c;

    move-result-object v0

    sget-object v3, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/r$b;->l:Lcom/facebook/imagepipeline/cache/g;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/r$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    .line 7
    invoke-interface {v4}, Lcom/facebook/imagepipeline/producers/s0;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/facebook/imagepipeline/cache/g;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v3

    .line 8
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v0, v4, :cond_1

    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r$b;->k:Lcom/facebook/imagepipeline/cache/f;

    invoke-virtual {v0, v3, p1}, Lcom/facebook/imagepipeline/cache/f;->u(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r$b;->j:Lcom/facebook/imagepipeline/cache/f;

    invoke-virtual {v0, v3, p1}, Lcom/facebook/imagepipeline/cache/f;->u(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    .line 12
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/r$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    .line 13
    invoke-interface {v0, v3, v2, v1}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    return-void

    .line 15
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    .line 16
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/r$b;->i:Lcom/facebook/imagepipeline/producers/s0;

    .line 17
    invoke-interface {v0, v3, v2, v1}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    return-void
.end method
