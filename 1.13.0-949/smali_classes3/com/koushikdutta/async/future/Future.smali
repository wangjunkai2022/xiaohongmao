.class public interface abstract Lcom/koushikdutta/async/future/Future;
.super Ljava/lang/Object;
.source "Future.java"

# interfaces
.implements Lcom/koushikdutta/async/future/Cancellable;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/Cancellable;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract B(Lcom/koushikdutta/async/future/FutureCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract C(Ljava/util/concurrent/Executor;)Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract E()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract F(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/ThenCallback<",
            "TR;TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract I(Lcom/koushikdutta/async/future/SuccessCallback;)Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/SuccessCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract l()Ljava/lang/Exception;
.end method

.method public abstract n(Lcom/koushikdutta/async/future/FailRecoverCallback;)Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FailRecoverCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract o(Lcom/koushikdutta/async/future/DoneCallback;)Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/DoneCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract p(Lcom/koushikdutta/async/future/FailCallback;)Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FailCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract t(Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/ThenFutureCallback<",
            "TR;TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract w(Lcom/koushikdutta/async/future/FailConvertCallback;)Lcom/koushikdutta/async/future/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FailConvertCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation
.end method
