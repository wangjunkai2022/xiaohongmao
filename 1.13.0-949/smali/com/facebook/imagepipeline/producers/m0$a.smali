.class Lcom/facebook/imagepipeline/producers/m0$a;
.super Ljava/lang/Object;
.source "PartialDiskCacheProducer.java"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/m0;->h(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/cache/common/c;)Lbolts/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g<",
        "Lcom/facebook/imagepipeline/image/e;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/u0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/s0;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/l;

.field final synthetic d:Lcom/facebook/cache/common/c;

.field final synthetic e:Lcom/facebook/imagepipeline/producers/m0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/m0;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$partialImageCacheKey",
            "val$consumer",
            "val$producerContext",
            "val$listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m0$a;->e:Lcom/facebook/imagepipeline/producers/m0;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/m0$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/m0$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/m0$a;->c:Lcom/facebook/imagepipeline/producers/l;

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/m0$a;->d:Lcom/facebook/cache/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lbolts/h;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/m0$a;->b(Lbolts/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/h;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/h<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/m0;->c(Lbolts/h;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PartialDiskCacheProducer"

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/m0$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m0$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/imagepipeline/producers/u0;->c(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/m0$a;->c:Lcom/facebook/imagepipeline/producers/l;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/l;->b()V

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lbolts/h;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m0$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/m0$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    .line 6
    invoke-virtual {p1}, Lbolts/h;->E()Ljava/lang/Exception;

    move-result-object p1

    .line 7
    invoke-interface {v0, v3, v2, p1, v1}, Lcom/facebook/imagepipeline/producers/u0;->k(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 8
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/m0$a;->e:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m0$a;->c:Lcom/facebook/imagepipeline/producers/l;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/m0$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/m0$a;->d:Lcom/facebook/cache/common/c;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/facebook/imagepipeline/producers/m0;->d(Lcom/facebook/imagepipeline/producers/m0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    goto/16 :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lbolts/h;->F()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m0$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/m0$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    .line 11
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->H()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v3, v5, v4}, Lcom/facebook/imagepipeline/producers/m0;->f(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;ZI)Ljava/util/Map;

    move-result-object v4

    .line 12
    invoke-interface {v0, v3, v2, v4}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->H()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v0}, Lcom/facebook/imagepipeline/common/a;->e(I)Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/image/e;->n0(Lcom/facebook/imagepipeline/common/a;)V

    .line 15
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->H()I

    move-result v3

    .line 16
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/m0$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()Lcom/facebook/imagepipeline/common/a;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/facebook/imagepipeline/common/a;->a(Lcom/facebook/imagepipeline/common/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m0$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    const-string v3, "disk"

    const-string v4, "partial"

    invoke-interface {v0, v3, v4}, Lcom/facebook/imagepipeline/producers/s0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m0$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/m0$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0, v3, v2, v5}, Lcom/facebook/imagepipeline/producers/u0;->b(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Z)V

    .line 20
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m0$a;->c:Lcom/facebook/imagepipeline/producers/l;

    const/16 v2, 0x9

    invoke-interface {v0, p1, v2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m0$a;->c:Lcom/facebook/imagepipeline/producers/l;

    const/16 v2, 0x8

    invoke-interface {v0, p1, v2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    .line 22
    invoke-static {v4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    sub-int/2addr v3, v5

    .line 23
    invoke-static {v3}, Lcom/facebook/imagepipeline/common/a;->b(I)Lcom/facebook/imagepipeline/common/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->z(Lcom/facebook/imagepipeline/common/a;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 25
    new-instance v2, Lcom/facebook/imagepipeline/producers/z0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/m0$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    invoke-direct {v2, v0, v3}, Lcom/facebook/imagepipeline/producers/z0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/s0;)V

    .line 26
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m0$a;->e:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/m0$a;->c:Lcom/facebook/imagepipeline/producers/l;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/m0$a;->d:Lcom/facebook/cache/common/c;

    invoke-static {v0, v3, v2, v4, p1}, Lcom/facebook/imagepipeline/producers/m0;->d(Lcom/facebook/imagepipeline/producers/m0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    goto :goto_0

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m0$a;->a:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/m0$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    const/4 v4, 0x0

    .line 28
    invoke-static {v0, v3, v4, v4}, Lcom/facebook/imagepipeline/producers/m0;->f(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;ZI)Ljava/util/Map;

    move-result-object v4

    .line 29
    invoke-interface {v0, v3, v2, v4}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m0$a;->e:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/m0$a;->c:Lcom/facebook/imagepipeline/producers/l;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/m0$a;->b:Lcom/facebook/imagepipeline/producers/s0;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/m0$a;->d:Lcom/facebook/cache/common/c;

    invoke-static {v0, v2, v3, v4, p1}, Lcom/facebook/imagepipeline/producers/m0;->d(Lcom/facebook/imagepipeline/producers/m0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    :goto_0
    return-object v1
.end method
