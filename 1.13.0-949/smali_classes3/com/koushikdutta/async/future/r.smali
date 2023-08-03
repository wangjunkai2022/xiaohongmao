.class public final synthetic Lcom/koushikdutta/async/future/r;
.super Ljava/lang/Object;
.source "Future.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static a(Lcom/koushikdutta/async/future/Future;Ljava/util/concurrent/Executor;)Lcom/koushikdutta/async/future/Future;
    .locals 2

    .line 1
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 2
    new-instance v1, Lcom/koushikdutta/async/future/q;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/future/q;-><init>(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->Z(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method
