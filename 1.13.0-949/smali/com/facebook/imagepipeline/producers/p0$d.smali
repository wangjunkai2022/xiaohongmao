.class Lcom/facebook/imagepipeline/producers/p0$d;
.super Lcom/facebook/imagepipeline/producers/p;
.source "PriorityStarvingThrottlingProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/p<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/facebook/imagepipeline/producers/p0;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/p0;Lcom/facebook/imagepipeline/producers/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0$d;->i:Lcom/facebook/imagepipeline/producers/p0;

    .line 3
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/producers/l;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/p0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/p0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/p0$d;-><init>(Lcom/facebook/imagepipeline/producers/p0;Lcom/facebook/imagepipeline/producers/l;)V

    return-void
.end method

.method private s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0$d;->i:Lcom/facebook/imagepipeline/producers/p0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/p0$d;->i:Lcom/facebook/imagepipeline/producers/p0;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/p0;->c(Lcom/facebook/imagepipeline/producers/p0;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/producers/p0$b;

    if-nez v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/p0$d;->i:Lcom/facebook/imagepipeline/producers/p0;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/p0;->d(Lcom/facebook/imagepipeline/producers/p0;)I

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0$d;->i:Lcom/facebook/imagepipeline/producers/p0;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/p0;->f(Lcom/facebook/imagepipeline/producers/p0;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/facebook/imagepipeline/producers/p0$d$a;

    invoke-direct {v2, p0, v1}, Lcom/facebook/imagepipeline/producers/p0$d$a;-><init>(Lcom/facebook/imagepipeline/producers/p0$d;Lcom/facebook/imagepipeline/producers/p0$b;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/l;->b()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/p0$d;->s()V

    return-void
.end method

.method protected i(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/l;->a(Ljava/lang/Throwable;)V

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/p0$d;->s()V

    return-void
.end method

.method protected j(Ljava/lang/Object;I)V
    .locals 1
    .param p1    # Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->f(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/p0$d;->s()V

    :cond_0
    return-void
.end method
