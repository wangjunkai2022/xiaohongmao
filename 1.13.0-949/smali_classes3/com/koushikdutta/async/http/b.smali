.class public final synthetic Lcom/koushikdutta/async/http/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/http/callback/HttpConnectCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/future/SimpleFuture;

.field public final synthetic b:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

.field public final synthetic c:Lcom/koushikdutta/async/http/AsyncHttpRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/b;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p2, p0, Lcom/koushikdutta/async/http/b;->b:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/b;->c:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/b;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/http/b;->b:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/b;->c:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    return-void
.end method
