.class Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;
.super Ljava/lang/Object;
.source "PriorityNetworkFetcher.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/l0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->p(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V
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

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->k(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    iget v0, v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->m:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    .line 3
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->k(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    instance-of v0, p1, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$NonrecoverableException;

    if-nez v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->l(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;)V

    goto :goto_2

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    const-string v2, "FAIL"

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->k:Lcom/facebook/imagepipeline/producers/l0$a;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/l0$a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->b:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    const-string v2, "CANCEL"

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->k:Lcom/facebook/imagepipeline/producers/l0$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/l0$a;->b()V

    :cond_0
    return-void
.end method

.method public c(Ljava/io/InputStream;I)V
    .locals 1
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
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$b;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;->k:Lcom/facebook/imagepipeline/producers/l0$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l0$a;->c(Ljava/io/InputStream;I)V

    :cond_0
    return-void
.end method
