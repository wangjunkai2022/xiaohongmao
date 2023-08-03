.class public Lcom/koushikdutta/async/http/SimpleMiddleware;
.super Ljava/lang/Object;
.source "SimpleMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseReadyData;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDecoderData;)V
    .locals 0

    return-void
.end method

.method public g(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;)V
    .locals 0

    return-void
.end method

.method public h(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteData;)V
    .locals 0

    return-void
.end method
