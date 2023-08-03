.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->m:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {p0, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;-><init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    return-void
.end method


# virtual methods
.method protected S()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->m:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->v:Z

    .line 2
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->S()V

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->m:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->D:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e()Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->m:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object v2, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->x:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->M(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    .line 5
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->m:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->I0(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    return-void
.end method

.method protected W(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->W(Ljava/lang/Exception;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->m:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->C:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->m:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->C:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v0, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->m:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->C:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->close()V

    :cond_0
    return-void
.end method
