.class public Lcom/koushikdutta/async/future/HandlerFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "HandlerFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 4
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/koushikdutta/async/future/HandlerFuture;->k:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public B(Lcom/koushikdutta/async/future/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/future/HandlerFuture$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/future/HandlerFuture$1;-><init>(Lcom/koushikdutta/async/future/HandlerFuture;Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 2
    invoke-super {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-void
.end method
