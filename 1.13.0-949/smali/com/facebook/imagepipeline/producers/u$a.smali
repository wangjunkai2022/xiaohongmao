.class Lcom/facebook/imagepipeline/producers/u$a;
.super Lcom/facebook/imagepipeline/producers/p;
.source "EncodedProbeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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

.field private final m:Lcom/facebook/imagepipeline/cache/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/e<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/facebook/imagepipeline/cache/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/e<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;)V
    .locals 0
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
            "consumer",
            "producerContext",
            "defaultBufferedDiskCache",
            "smallImageBufferedDiskCache",
            "cacheKeyFactory",
            "encodedMemoryCacheHistory",
            "diskCacheHistory"
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
            "Lcom/facebook/imagepipeline/cache/e<",
            "Lcom/facebook/cache/common/c;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/e<",
            "Lcom/facebook/cache/common/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/producers/l;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/u$a;->i:Lcom/facebook/imagepipeline/producers/s0;

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/u$a;->j:Lcom/facebook/imagepipeline/cache/f;

    .line 4
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/u$a;->k:Lcom/facebook/imagepipeline/cache/f;

    .line 5
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/u$a;->l:Lcom/facebook/imagepipeline/cache/g;

    .line 6
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/u$a;->m:Lcom/facebook/imagepipeline/cache/e;

    .line 7
    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/u$a;->n:Lcom/facebook/imagepipeline/cache/e;

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

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/u$a;->s(Lcom/facebook/imagepipeline/image/e;I)V

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

    const-string v0, "origin"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EncodedProbeProducer#onNewResultImpl"

    .line 2
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->g(I)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    const/16 v1, 0xa

    .line 4
    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/b;->n(II)Z

    move-result v1

    if-nez v1, :cond_7

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->y()Lcom/facebook/imageformat/c;

    move-result-object v1

    sget-object v2, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    if-ne v1, v2, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/u$a;->i:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/u$a;->l:Lcom/facebook/imagepipeline/cache/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/u$a;->i:Lcom/facebook/imagepipeline/producers/s0;

    .line 8
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/s0;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/cache/g;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/u$a;->m:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/cache/e;->a(Ljava/lang/Object;)Z

    const-string v3, "memory_encoded"

    .line 10
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/u$a;->i:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v4, v0}, Lcom/facebook/imagepipeline/producers/s0;->r(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u$a;->n:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/e;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u$a;->k:Lcom/facebook/imagepipeline/cache/f;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u$a;->j:Lcom/facebook/imagepipeline/cache/f;

    .line 14
    :goto_1
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/f;->i(Lcom/facebook/cache/common/c;)V

    .line 15
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u$a;->n:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/e;->a(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v1, "disk"

    .line 16
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/u$a;->i:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v3, v0}, Lcom/facebook/imagepipeline/producers/s0;->r(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u$a;->n:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/e;->a(Ljava/lang/Object;)Z

    .line 18
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_6
    return-void

    .line 21
    :cond_7
    :goto_3
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    .line 24
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 25
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 26
    :cond_9
    throw p1
.end method
