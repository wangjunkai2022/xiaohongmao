.class public final synthetic Lcom/koushikdutta/async/http/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field public final synthetic b:Lcom/koushikdutta/async/http/callback/RequestCallback;

.field public final synthetic c:Lcom/koushikdutta/async/future/SimpleFuture;

.field public final synthetic d:Lcom/koushikdutta/async/http/AsyncHttpResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/a;->a:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a;->b:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a;->c:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p4, p0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->a:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a;->b:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a;->c:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v3, p0, Lcom/koushikdutta/async/http/a;->d:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->c(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
