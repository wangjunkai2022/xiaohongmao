.class Lcom/facebook/imagepipeline/backends/okhttp3/c$a;
.super Lcom/facebook/imagepipeline/producers/e;
.source "OkHttpNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/backends/okhttp3/c;->j(Lcom/facebook/imagepipeline/backends/okhttp3/c$c;Lcom/facebook/imagepipeline/producers/l0$a;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Call;

.field final synthetic b:Lcom/facebook/imagepipeline/backends/okhttp3/c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/backends/okhttp3/c;Lokhttp3/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$call"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/c$a;->b:Lcom/facebook/imagepipeline/backends/okhttp3/c;

    iput-object p2, p0, Lcom/facebook/imagepipeline/backends/okhttp3/c$a;->a:Lokhttp3/Call;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/backends/okhttp3/c$a;->a:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/backends/okhttp3/c$a;->b:Lcom/facebook/imagepipeline/backends/okhttp3/c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/backends/okhttp3/c;->f(Lcom/facebook/imagepipeline/backends/okhttp3/c;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/backends/okhttp3/c$a$a;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/backends/okhttp3/c$a$a;-><init>(Lcom/facebook/imagepipeline/backends/okhttp3/c$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
