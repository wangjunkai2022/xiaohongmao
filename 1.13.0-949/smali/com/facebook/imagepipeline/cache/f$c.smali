.class Lcom/facebook/imagepipeline/cache/f$c;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/f;->r(Lcom/facebook/cache/common/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lcom/facebook/cache/common/c;

.field final synthetic d:Lcom/facebook/imagepipeline/cache/f;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/f;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$key",
            "val$isCancelled",
            "val$token"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/f$c;->d:Lcom/facebook/imagepipeline/cache/f;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/f$c;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/f$c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/f$c;->c:Lcom/facebook/cache/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/image/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f$c;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp1/a;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$c;->d:Lcom/facebook/imagepipeline/cache/f;

    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/f;->c(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/imagepipeline/cache/z;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/f$c;->c:Lcom/facebook/cache/common/c;

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/cache/z;->c(Lcom/facebook/cache/common/c;)Lcom/facebook/imagepipeline/image/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/cache/f;->d()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "Found image for %s in staging area"

    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/f$c;->c:Lcom/facebook/cache/common/c;

    invoke-interface {v4}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/f$c;->d:Lcom/facebook/imagepipeline/cache/f;

    invoke-static {v1}, Lcom/facebook/imagepipeline/cache/f;->e(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/imagepipeline/cache/q;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/f$c;->c:Lcom/facebook/cache/common/c;

    invoke-interface {v1, v3}, Lcom/facebook/imagepipeline/cache/q;->f(Lcom/facebook/cache/common/c;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/facebook/imagepipeline/cache/f;->d()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Did not find image for %s in staging area"

    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/f$c;->c:Lcom/facebook/cache/common/c;

    invoke-interface {v4}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lp0/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$c;->d:Lcom/facebook/imagepipeline/cache/f;

    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/f;->e(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/imagepipeline/cache/q;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/f$c;->c:Lcom/facebook/cache/common/c;

    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/cache/q;->l(Lcom/facebook/cache/common/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$c;->d:Lcom/facebook/imagepipeline/cache/f;

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/f$c;->c:Lcom/facebook/cache/common/c;

    invoke-static {v2, v3}, Lcom/facebook/imagepipeline/cache/f;->f(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/cache/common/c;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    .line 9
    invoke-static {v0}, Lp1/a;->f(Ljava/lang/Object;)V

    return-object v1

    .line 10
    :cond_1
    :try_start_2
    invoke-static {v2}, Lcom/facebook/common/references/a;->D(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    new-instance v3, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {v3, v2}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    invoke-static {v2}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v3

    .line 13
    :goto_0
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v1, :cond_2

    .line 14
    invoke-static {v0}, Lp1/a;->f(Ljava/lang/Object;)V

    return-object v2

    .line 15
    :cond_2
    :try_start_6
    invoke-static {}, Lcom/facebook/imagepipeline/cache/f;->d()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "Host thread was interrupted, decreasing reference count"

    invoke-static {v1, v3}, Lp0/a;->U(Ljava/lang/Class;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/image/e;->close()V

    .line 17
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_0
    move-exception v3

    .line 18
    :try_start_7
    invoke-static {v2}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 19
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 20
    :catch_0
    invoke-static {v0}, Lp1/a;->f(Ljava/lang/Object;)V

    return-object v1

    .line 21
    :cond_3
    :try_start_8
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v1

    .line 22
    :try_start_9
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/f$c;->a:Ljava/lang/Object;

    invoke-static {v2, v1}, Lp1/a;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 23
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v1

    .line 24
    invoke-static {v0}, Lp1/a;->f(Ljava/lang/Object;)V

    .line 25
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/f$c;->a()Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    return-object v0
.end method
