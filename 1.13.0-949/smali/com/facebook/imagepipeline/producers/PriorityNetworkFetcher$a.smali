.class Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;
.super Lcom/facebook/imagepipeline/producers/e;
.source "PriorityNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->r(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/l0$a;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Lcom/facebook/imagepipeline/producers/l0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback",
            "val$fetchState"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->b:Lcom/facebook/imagepipeline/producers/l0$a;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->f(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->g(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->h(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    const-string v2, "CANCEL"

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->i(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->b:Lcom/facebook/imagepipeline/producers/l0$a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/l0$a;->b()V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->c:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$a;->a:Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/w;->b()Lcom/facebook/imagepipeline/producers/s0;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/s0;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v2

    sget-object v3, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;->j(Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher;Lcom/facebook/imagepipeline/producers/PriorityNetworkFetcher$c;Z)V

    return-void
.end method
