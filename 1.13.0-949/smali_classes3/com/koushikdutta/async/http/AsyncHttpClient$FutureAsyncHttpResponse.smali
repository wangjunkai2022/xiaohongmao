.class Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutureAsyncHttpResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/SimpleFuture<",
        "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public k:Lcom/koushikdutta/async/AsyncSocket;

.field public l:Lcom/koushikdutta/async/future/Cancellable;

.field public m:Ljava/lang/Runnable;

.field final synthetic n:Lcom/koushikdutta/async/http/AsyncHttpClient;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->n:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->k:Lcom/koushikdutta/async/AsyncSocket;

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->k:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->l:Lcom/koushikdutta/async/future/Cancellable;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->cancel()Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
