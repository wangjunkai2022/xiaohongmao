.class public interface abstract Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.super Ljava/lang/Object;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseReadyData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
.end method

.method public abstract b(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;)V
.end method

.method public abstract c(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseReadyData;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
.end method

.method public abstract d(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;)V
.end method

.method public abstract e(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end method

.method public abstract f(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;)V
.end method

.method public abstract g(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;)V
.end method

.method public abstract h(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
.end method
