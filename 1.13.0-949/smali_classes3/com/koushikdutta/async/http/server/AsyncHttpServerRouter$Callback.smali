.class Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;
.implements Lcom/koushikdutta/async/http/server/RouteMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p1, 0x194

    .line 2
    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 3
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->j()V

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->d:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;->b(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    return-void
.end method
