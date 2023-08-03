.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ListenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E(Lcom/koushikdutta/async/AsyncServerSocket;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d0(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->c0(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 3
    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->k()V

    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->B(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/lang/Exception;)V

    return-void
.end method
