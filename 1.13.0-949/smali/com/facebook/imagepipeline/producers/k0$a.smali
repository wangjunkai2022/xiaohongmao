.class Lcom/facebook/imagepipeline/producers/k0$a;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/l0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/k0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/w;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/k0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/producers/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fetchState"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/k0$a;->b:Lcom/facebook/imagepipeline/producers/k0;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/k0$a;->a:Lcom/facebook/imagepipeline/producers/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k0$a;->b:Lcom/facebook/imagepipeline/producers/k0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/k0$a;->a:Lcom/facebook/imagepipeline/producers/w;

    invoke-static {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/k0;->c(Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/producers/w;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k0$a;->b:Lcom/facebook/imagepipeline/producers/k0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/k0$a;->a:Lcom/facebook/imagepipeline/producers/w;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/k0;->d(Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/producers/w;)V

    return-void
.end method

.method public c(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "response",
            "responseLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkFetcher->onResponse"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k0$a;->b:Lcom/facebook/imagepipeline/producers/k0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/k0$a;->a:Lcom/facebook/imagepipeline/producers/w;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/imagepipeline/producers/k0;->m(Lcom/facebook/imagepipeline/producers/w;Ljava/io/InputStream;I)V

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-void
.end method
