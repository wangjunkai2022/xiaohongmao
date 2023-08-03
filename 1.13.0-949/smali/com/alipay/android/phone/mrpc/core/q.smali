.class final Lcom/alipay/android/phone/mrpc/core/q;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/alipay/android/phone/mrpc/core/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/u;

.field final synthetic b:Lcom/alipay/android/phone/mrpc/core/p;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/p;Ljava/util/concurrent/Callable;Lcom/alipay/android/phone/mrpc/core/u;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/q;->b:Lcom/alipay/android/phone/mrpc/core/p;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/q;->a:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->a:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/u;->c()Lcom/alipay/android/phone/mrpc/core/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/x;->a()Lcom/alipay/android/phone/mrpc/core/d;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/x;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/x;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing http request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/x;->b()V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/android/phone/mrpc/core/HttpException;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getCode()I

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;

    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method
