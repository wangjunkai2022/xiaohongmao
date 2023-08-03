.class Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;
.super Ljava/lang/Object;
.source "HttpTransportMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/HttpTransportMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic b:Lcom/koushikdutta/async/BufferedDataSink;

.field final synthetic c:Lcom/koushikdutta/async/http/HttpTransportMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HttpTransportMiddleware;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/BufferedDataSink;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->c:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->b:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/Util;->c(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->b:Lcom/koushikdutta/async/BufferedDataSink;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->k(Z)V

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->b:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->B(I)V

    :cond_0
    return-void
.end method
