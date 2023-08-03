.class public abstract Lcom/koushikdutta/async/future/MultiTransformFuture;
.super Lcom/koushikdutta/async/future/MultiFuture;
.source "MultiTransformFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/MultiFuture<",
        "TT;>;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "TF;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/future/MultiFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TF;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/MultiTransformFuture;->k0(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/MultiTransformFuture;->l0(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/MultiTransformFuture;->k0(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected k0(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    return-void
.end method

.method protected abstract l0(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
