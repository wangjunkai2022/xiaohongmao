.class Lcom/facebook/imagepipeline/producers/h0$a;
.super Lcom/facebook/imagepipeline/producers/a1;
.source "LocalThumbnailBitmapProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/h0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/a1<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic k:Lcom/facebook/imagepipeline/producers/u0;

.field final synthetic l:Lcom/facebook/imagepipeline/producers/s0;

.field final synthetic m:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic n:Landroid/os/CancellationSignal;

.field final synthetic o:Lcom/facebook/imagepipeline/producers/h0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/h0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/os/CancellationSignal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "consumer",
            "producerListener",
            "producerContext",
            "producerName",
            "val$cancellationSignal",
            "val$imageRequest",
            "val$context",
            "val$listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/h0$a;->o:Lcom/facebook/imagepipeline/producers/h0;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/h0$a;->k:Lcom/facebook/imagepipeline/producers/u0;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/h0$a;->l:Lcom/facebook/imagepipeline/producers/s0;

    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/h0$a;->m:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p9, p0, Lcom/facebook/imagepipeline/producers/h0$a;->n:Landroid/os/CancellationSignal;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/a1;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/h0$a;->j(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h0$a;->l()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/facebook/imagepipeline/producers/a1;->d()V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$a;->n:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method protected e(Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/a1;->e(Ljava/lang/Exception;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/h0$a;->k:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$a;->l:Lcom/facebook/imagepipeline/producers/s0;

    const-string v1, "LocalThumbnailBitmapProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->b(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Z)V

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/h0$a;->l:Lcom/facebook/imagepipeline/producers/s0;

    const-string v0, "local"

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/s0;->j(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic f(Ljava/lang/Object;)V
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
            "result"
        }
    .end annotation

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/h0$a;->m(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected bridge synthetic i(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "result"
        }
    .end annotation

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/h0$a;->k(Lcom/facebook/common/references/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected j(Lcom/facebook/common/references/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
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

.method protected k(Lcom/facebook/common/references/a;)Ljava/util/Map;
    .locals 1
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "createdThumbnail"

    invoke-static {v0, p1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected l()Lcom/facebook/common/references/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$a;->o:Lcom/facebook/imagepipeline/producers/h0;

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/h0;->c(Lcom/facebook/imagepipeline/producers/h0;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/h0$a;->m:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/h0$a;->m:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->o()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/h0$a;->m:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/request/ImageRequest;->n()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/h0$a;->n:Landroid/os/CancellationSignal;

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/image/d;

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/h;->a()Lcom/facebook/imagepipeline/bitmaps/h;

    move-result-object v2

    sget-object v3, Lcom/facebook/imagepipeline/image/h;->d:Lcom/facebook/imagepipeline/image/j;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/facebook/imagepipeline/image/d;-><init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/h;Lcom/facebook/imagepipeline/image/j;I)V

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$a;->l:Lcom/facebook/imagepipeline/producers/s0;

    const-string v2, "image_format"

    const-string v3, "thumbnail"

    invoke-interface {v0, v2, v3}, Lcom/facebook/imagepipeline/producers/s0;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$a;->l:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/image/c;->i(Ljava/util/Map;)V

    .line 10
    invoke-static {v1}, Lcom/facebook/common/references/a;->D(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected m(Lcom/facebook/common/references/a;)V
    .locals 3
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
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

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/a1;->f(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$a;->k:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/h0$a;->l:Lcom/facebook/imagepipeline/producers/s0;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "LocalThumbnailBitmapProducer"

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/u0;->b(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Z)V

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/h0$a;->l:Lcom/facebook/imagepipeline/producers/s0;

    const-string v0, "local"

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/s0;->j(Ljava/lang/String;)V

    return-void
.end method
