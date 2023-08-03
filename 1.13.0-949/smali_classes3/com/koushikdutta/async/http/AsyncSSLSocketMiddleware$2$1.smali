.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/AsyncSocket;

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->b:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {p1}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    .line 3
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/LineEmitter;->b(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 5
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->a:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
