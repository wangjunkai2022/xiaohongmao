.class Lcom/facebook/imagepipeline/producers/e0$a;
.super Lcom/facebook/imagepipeline/producers/a1;
.source "LocalFetchProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/e0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/a1<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic k:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic l:Lcom/facebook/imagepipeline/producers/u0;

.field final synthetic m:Lcom/facebook/imagepipeline/producers/s0;

.field final synthetic n:Lcom/facebook/imagepipeline/producers/e0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/e0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;)V
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
            0x1010
        }
        names = {
            "this$0",
            "consumer",
            "producerListener",
            "producerContext",
            "producerName",
            "val$producerContext",
            "val$listener",
            "val$imageRequest"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/e0$a;->n:Lcom/facebook/imagepipeline/producers/e0;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/e0$a;->k:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/e0$a;->l:Lcom/facebook/imagepipeline/producers/u0;

    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/e0$a;->m:Lcom/facebook/imagepipeline/producers/s0;

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

    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/e0$a;->j(Lcom/facebook/imagepipeline/image/e;)V

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

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/e0$a;->k()Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    return-object v0
.end method

.method protected j(Lcom/facebook/imagepipeline/image/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    return-void
.end method

.method protected k()Lcom/facebook/imagepipeline/image/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0$a;->n:Lcom/facebook/imagepipeline/producers/e0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/e0$a;->k:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/e0;->d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    const-string v1, "local"

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0$a;->l:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/e0$a;->m:Lcom/facebook/imagepipeline/producers/s0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/e0$a;->n:Lcom/facebook/imagepipeline/producers/e0;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/e0;->f()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/imagepipeline/producers/u0;->b(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/e0$a;->m:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/s0;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/e;->d0()V

    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/e0$a;->l:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/e0$a;->m:Lcom/facebook/imagepipeline/producers/s0;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/e0$a;->n:Lcom/facebook/imagepipeline/producers/e0;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/e0;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/facebook/imagepipeline/producers/u0;->b(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Z)V

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/e0$a;->m:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/producers/s0;->j(Ljava/lang/String;)V

    return-object v0
.end method
