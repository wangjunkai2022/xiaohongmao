.class public final synthetic Lcom/koushikdutta/async/http/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpClient$4;

.field public final synthetic b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field public final synthetic c:I

.field public final synthetic d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

.field public final synthetic e:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient$4;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/AsyncHttpClient$4;

    iput-object p2, p0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput p3, p0, Lcom/koushikdutta/async/http/d;->c:I

    iput-object p4, p0, Lcom/koushikdutta/async/http/d;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p5, p0, Lcom/koushikdutta/async/http/d;->e:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/koushikdutta/async/http/d;->a:Lcom/koushikdutta/async/http/AsyncHttpClient$4;

    iget-object v1, p0, Lcom/koushikdutta/async/http/d;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget v2, p0, Lcom/koushikdutta/async/http/d;->c:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/d;->d:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v4, p0, Lcom/koushikdutta/async/http/d;->e:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;->C0(Lcom/koushikdutta/async/http/AsyncHttpClient$4;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method
